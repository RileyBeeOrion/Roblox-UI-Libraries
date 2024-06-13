# Discord UI
This documentation is for Discord UI Credit To dawid

## Booting the Discord UI Library
```lua
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()
```




## Creating a Discord UI Window
```lua
local win = DiscordLib:Window("discord library")
```

## Creating a Tab / Preview
```lua
serv:Channel("your name")
```

## Creating a Section
```lua
local serv = win:Server("Preview", "")
```

## Creating a Button
```lua
local btns = serv:Channel("Buttons")
```

## Creating A Seperator
```lua
btns:Seperator()
```

## Creating a Toggle
```lua
local tgls = serv:Channel("Toggles")
```

## Creating a Slider
```lua
local sldrs = serv:Channel("Sliders")
```

## Creating a Dropdown
```lua
local drops = serv:Channel("Dropdowns")
```

## Creating a Color Picker
```lua
local clrs = serv:Channel("Colorpickers")
```

## Creating a Textbox
```lua
local textbs = serv:Channel("Textboxes")
```

## Creating a Label
```lua
local lbls = serv:Channel("Labels")
```

## Creating Keybind / Binds
```lua
local bnds = serv:Channel("Binds")
```

## Creating Color Pickers
```lua
Section:NewColorPicker("Color Text", "Color Info", Color3.fromRGB(0,0,0), function(color)
    print(color)
    -- Second argument is the default color
end)
```

## Creating A Server
```lua
win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
```
