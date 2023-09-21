let
  fnCheckWebAimContrast = (background_hex as text, font_hex as text) =>
    let
      // nested function to remove leading hash for api call and to check length and prevent errors
      remove_hash = (hex as text) =>
        let
          // trim any spaces 
          trim = Text.Trim(hex), 
          // remove leading hash
          remove = if Text.StartsWith(trim, "#") then Text.RemoveRange(trim, 0, 1) else trim, 
          //check length, set to black if not equal to 6
          check_length = if Text.Length(remove) <> 6 then "#FFFFFF" else remove
        in
          check_length, 
      // pass background color
      bg = remove_hash(background_hex), 
      // pass font color 
      font = remove_hash(font_hex), 
      // Call the API
      Call = Json.Document(
        Web.Contents(
          "https://webaim.org/resources/contrastchecker/?fcolor=" & font & "&bcolor=" & bg & "&api"
        )
      ), 
      // if any fail, transform the record field to be more descriptive, else null 
      Transform = Record.TransformFields(
        Call, 
        (
          {
            {"AA", each if _ = "fail" then "WCAG 2.0 Level AA Normal Font Test Failed" else null}, 
            {
              "AALarge", 
              each if _ = "fail" then "WCAG 2.0 Level AA Large Font Test Failed" else null
            }, 
            {"AAA", each if _ = "fail" then "WCAG 2.0 Level AAA Normal Font Test Failed" else null}, 
            {
              "AAALarge", 
              each if _ = "fail" then "WCAG 2.0 Level AAA Large Font Test Failed" else null
            }
          }
        )
      ), 
      // filter out tests that passed 
      Select = List.Select(Record.ToList(Transform), each _ <> null), 
      // Concat the ratio and any failures
      Concat = List.Accumulate(
        Select, 
        "", 
        (state, current) =>
          if List.PositionOf(Select, current) = 0 then
            Text.Combine({"Ratio: ", Text.From(current), " to 1#(lf)"})
          else if List.PositionOf(Select, current) = 1 then
            Text.Combine({state, "Test Failures:#(lf)", current, "#(lf)"})
          else
            Text.Combine({state, current, "#(lf)"})
      ), 
      // if all pass then let the user know
      If_All_Pass = 
        if Text.Contains(Concat, "Test Failures") = false then
          Text.Combine({Concat, "Test Failures: None"})
        else
          Concat
    in
      If_All_Pass, 
  fnType = type function (background_hex as text, font_hex as text) as text
    meta [
      Documentation.Name = "fnCheckWebAimContrast", 
      Documentation.LongDescription
        = "Check the WebAim API using background and font color hex codes and return the contrast ratio and any test results that failed", 
      Documentation.Examples = {
        [
          Description = "This checks for for #FFFFFF (black background) and #000000 (white font).", 
          Code        = "fnCheckWebAimContrast(""#FFFFFF"", ""#000000"")", 
          Result      = "Ratio: 21 to 1#(lf)Test Failures: None"
        ], 
        [
          Description = "This checks for for #FFFFFF (black background) and #FFFFFF (black font).", 
          Code = "fnCheckWebAimContrast(""#FFFFFF"", ""#FFFFFF"")", 
          Result = "Ratio: 1 to 1#(lf)"
            & "Test Failures:#(lf)"
            & "WCAG 2.0 Level AA Normal Font Test Failed#(lf)"
            & "WCAG 2.0 Level AA Large Font Test Failed#(lf)"
            & "WCAG 2.0 Level AAA Normal Font Test Failed#(lf)"
            & "WCAG 2.0 Level AAA Large Font Test Failed"
        ]
      }
    ]
in
  Value.ReplaceType(fnCheckWebAimContrast, fnType)
