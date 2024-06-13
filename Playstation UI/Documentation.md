# Playstation UI
This documentation is for Playstation UI Credit To The Owner

## Booting the Playstation UI Library
```lua
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()
```




## Creating a Playstation UI Window
```lua
local UI = GUI:CreateWindow("the um","lop")
```

## Creating a Tab
```lua
local Home = UI:addPage("Home",1,true,6)
```

## Creating a Label
```lua
Home:addLabel("This is a Label","Lol this funny")
```
## Creating a Button
```lua
Home:addButton("This is a button",function()
end)
```

## Creating a Toggle
```lua
Home:addToggle("This is a Toggle",function(value)
end)
```

## Creating a Slider
```lua
Home:addSlider("This is a Slider",16,100,function(value)
    print(value)
end)
```

## Creating a Textbox
```lua
Home:addTextBox("This is a TextBox","Um",function(value)
end)
```

## Creating a DropDown
```lua
Home:addDropdown("This is a Dropdown",{"Um","Yep","Lop","GG"},1,function(value)
end)
```

## Creating a Secondary Tab (Optional)
```lua
local LP = UI:addPage("Local",2,false,6)
```

## Creating a Secondary Button (Optional)
```lua
LP:addButton("DIE",function()
end)
```

## Creating Secondary Toggle (Optional)
```lua
LP:addToggle("Sprint",function(value)
end)

```

## Creating Secondary Slider (Optional)
```lua
LP:addSlider("WalkSpeed",16,150,function(value)
end)
```

## Creating Secondary Textbox (Optional)
```lua
LP:addTextBox("Jump Power / 50 is default","Number here",function(value)
end)
```

## Creating a Secondary DropDown (Optional)
```lua
LP:addDropdown("Teleport to Player",PLIST,4,function(value)
end)
```

## Secondary Label (Optional)
```lua
LP:addLabel("Spam","This is just to show how it looks with more ui elements")
```
