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

## Creating a Another Button
```lua
local Button = Tab2:AddButton({
  Name = "Invisible Toggle",
  Description = "Makes the Toggles Invisible"
})
```
```lua
Button:Callback(Toggle1.Visible)
```
```lua
Button:Callback(Toggle2.Visible)
```

## Creating a Toggle
```lua
local Toggle1 = Tab2:AddToggle({
  Name = "Toggle 1",
  Description = "This is a <font color='rgb(88, 101, 242)'>Toggle</font> Example",
  Default = false
})
```
```lua
local Toggle1 = Tab2:AddToggle({
  Name = "Toggle 1",
  Default = true
})
```
```lua
Toggle1:Callback(function(Value)
  Toggle2:Set(false)
end)
```
```lua
Toggle2:Callback(function(Value)
  Toggle1:Set(false)
end)
```
## Creating a Slider
```lua
Tab2:AddSlider({
  Name = "Slider",
  Min = 1,
  Max = 10,
  Increase = 1,
  Default = 5,
  Callback = function(Value)
  -- Your Script Here
  end
})
```
## Creating A Dropdown
```lua
local Dropdown = Tab2:AddDropdown({
  Name = "Players List",
  Description = "Select the <font color='rgb(88, 101, 242)'>Number</font>",
  Options = {"one", "two", "three"},
  Default = "two",
  Flag = "dropdown teste",
  Callback = function(Value)
    
  end
})]]
```

## Creating A Textbox
```lua
Tab2:AddTextBox({
  Name = "Textbox",
  Description = "this is a Text box",
  Default = "Text",
  Callback = function(Value)
  -- Your Script Here
  end
})
```

## Creating A Discord Invite
```lua
Tab3:AddDiscordInvite({
  Name = "test",
  Logo = "rbxassetid://15298567397",
  Invite = "hi"
})
```
