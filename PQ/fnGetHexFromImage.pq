let
  fnGetHexFromImage = (img_url as text) as table =>
    let
      Python = "
import PIL
import extcolors
import urllib.request
from PIL import Image, ImageDraw
import pandas as pd

def colors_from_image(image_path):
    img = fetch_image(image_path)
    colors = extract_colors(img)
    return colors
    
def fetch_image(image_path):
  urllib.request.urlretrieve(image_path, ""image"")
  img = PIL.Image.open(""image"")
  return img

def extract_colors(img):
  tolerance = 32
  limit = 24
  colors, pixel_count = extcolors.extract_from_image(img, tolerance, limit)
  return colors
  
image_url = '"
        & img_url
        & "'
colors = colors_from_image(image_url)

df = pd.DataFrame([x[0] for x in colors], columns=['red', 'green', 'blue'])", 
      fnGetHex = (red as number, green as number, blue as number) =>
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
      Run = Python.Execute(Python){[Name = "df"]}[Value], 
      Changed_Types = Table.TransformColumnTypes(
        Run, 
        {{"red", Int64.Type}, {"green", Int64.Type}, {"blue", Int64.Type}}
      ), 
      Output = Table.AddColumn(
        Changed_Types, 
        "hex", 
        each fnGetHex(_[red], _[green], _[blue]), 
        type text
      )
    in
      Output, 
  fnType = type function (img_url as text) as table
    meta [
      Documentation.Name = "fnGetHexFromImage", 
      Documentation.LongDescription
        = "This function takes an image url and parses the colors from the image and returns a table of RGB values and hex codes.", 
      Documentation.Examples = {
        [
          Description = "This gets the colors from https://tinyurl.com/unsplash-painted-flowers.", 
          Code = "fnGetHexFromImage(""https://tinyurl.com/unsplash-painted-flowers"")", 
          Result = "#(lf)"
            & "[red]#(tab)[green]#(tab)[blue]#(tab)[hex] #(lf)"
            & "-----------------------------------------#(lf)"
            & "241#(tab)232#(tab)227#(tab)#F1E8E3 #(lf)"
            & "92#(tab)69#(tab)63#(tab)#5C453F #(lf)"
            & "206#(tab)83#(tab)75#(tab)#CE534B #(lf)"
            & "213#(tab)151#(tab)128#(tab)#D59780 #(lf)"
            & "142#(tab)148#(tab)148#(tab)#8E9494 #(lf)"
            & "0#(tab)2#(tab)0#(tab)#000200"
        ]
      }
    ]
in
  Value.ReplaceType(fnGetHexFromImage, fnType)
