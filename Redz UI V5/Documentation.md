# Redz UI V5
This documentation is for Redz UI V5 Credit To REDzHub

## Booting the Redz UI V5 Library
```lua
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()
```




## Creating a Redz UI V5 Window
```lua
local Window = redzlib:MakeWindow({
  Title = "Test",
  SubTitle = "hi",
  SaveFolder = "Redz UI V5"
})
```

## Creating a Tab
```lua
local Tab1 = Window:MakeTab({"hi", "cherry"})
```

## Creating a Button
```lua
Tab1:AddButton({"test", function()
print("hi")
end})
```

## Creating a Section
```lua
local Section = Tab2:AddSection({"Section"})
```

## Creating a Paragraph
```lua
local Paragraph = Tab2:AddParagraph({"Paragraph", "This is a Paragraph\nSecond Line"})
```

## Creating a Dialog
```lua
local Dialog = Window:Dialog({
    Title = "Dialog",
    Text = "This is a Dialog",
    Options = {
      {"Confirm", function()
        
      end},
      {"Maybe", function()
        
      end},
      {"Cancel", function()
        
      end}
    }
  })
end})
```

## Creating a Dropdown
```lua
soon
```

## Creating a Textbox
```lua
soon
```
