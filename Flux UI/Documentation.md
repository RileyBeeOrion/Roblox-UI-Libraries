# Flux UI
This documentation is for Flux UI Credit To dawid

## Booting the Flux UI Library
```lua
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
```




## Creating a Flux UI Window
```lua
local win = Flux:Window("PREVIEW", "Baseplate", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)
```

## Creating a Tab
```lua
local tab = win:Tab("Tab 1", "http://www.roblox.com/asset/?id=6023426915")
```

## Creating a Button
```lua
tab:Button("Hello", "...", function()
```

## Creating a Notify
```lua
Flux:Notification("succesfully loaded", "Alright")
end)
```

## Creating a Label
```lua
tab:Label("This is just a label.")
```

## Creating a Line
```lua
tab:Line()
```

## Creating a Toggle
```lua
tab:Toggle("coins?", "coins", function(t)
print(t)
end)
```

## Creating a Slider
```lua
tab:Slider("Walkspeed", "other stuff", 0, 100,16,function(t)
print(t)
end)
```

## Creating a Dropdown
```lua
tab:Dropdown("Aimbot", {"Uhh","Uhh","Uhh"}, function(t)
print(t)
end)
```

## Creating a Color Picker
```lua
tab:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)
```

## Creating a Textbox
```lua
tab:Textbox("yippie", "...", true, function(t)
print(t)
end)
```

## Creating a Bind
```lua
tab:Bind("hello flux", Enum.KeyCode.Q, function()
print("hello flux")
end)
```

## Applying Custom Themes / Colors
```lua
local colors = {
    SchemeColor = Color3.fromRGB(0,255,255),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255,255,255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
```

## Applying it: Change your window code little bit.
```lua
local Window = Library.CreateLib("TITLE", colors)
```

## Want to add fully customizable UI?
```lua
for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
```
Add this code in your section. This will create color pickers.
Make sure you have added table with all the values of UI. then apply it to window. Like shown above.
