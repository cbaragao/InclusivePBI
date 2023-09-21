let fnGetHexValue = 

(red as number, green as number, blue as number)=>
let
    // Build the RGB list
    RGB = List.Combine({{"0" .. "9"}, {"A" .. "F"}}), 
        
    
    ConvertToHex = (r, g, b) =>
        
        let
            r1        = RGB{Number.IntegerDivide(r, 16)}, 
            r2        = RGB{Number.Mod(r, 16)}, 
            g1        = RGB{Number.IntegerDivide(g, 16)}, 
            g2        = RGB{Number.Mod(g, 16)}, 
            b1        = RGB{Number.IntegerDivide(b, 16)}, 
            b2        = RGB{Number.Mod(b, 16)}, 
            HexOutput = "#" & r1 & r2 & g1 & g2 & b1 & b2
        in
            HexOutput
    in 
     ConvertToHex(red, green, blue),
fnType = type function (red as number, green as number, blue as number) as text meta 
[Documentation.Name = "fnGetHexValue",
Documentation.LongDescription = "This function converts RGB values to hex codes.",
Documentation.Examples = {
    [Description = "This converts 255,255,255 to hex.",
    Code = "fnGetHexValue(255,255,255)",
    Result="#FFFFFF"]
}]
    in  
Value.ReplaceType(fnGetHexValue, fnType)
