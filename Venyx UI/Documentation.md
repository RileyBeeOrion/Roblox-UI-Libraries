# Venyx UI
This documentation is for Venyx UI Credit To The Owner

## Booting the Venyx UI Library
```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/zxciaz/VenyxUI/main/Reuploaded"))()
```




## Creating a Venyx UI Window
```lua
local venyx = library.new("Venyx", 5013109572)
```

## Creating The Themes
```lua
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}
```

## Creating A Tab / Page
```lua
local page = venyx:addPage("Test", 5012544693)
```

## Creating A Section
```lua
local section1 = page:addSection("Section 1")
```

## Creating a Button
```lua
section1:addButton("Button", function()
print("Clicked")
end)
```

## Creating a Toggle
```lua
section1:addToggle("Toggle", nil, function(value)
print("Toggled", value)
end)
```

## Creating a Venyx Notification
```lua
if focusLost then
venyx:Notify("Title", value)
end
end)
```

## Creating a Keybind
```lua
section2:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
print("Activated Keybind")
venyx:toggle()
end, function()
print("Changed Keybind")
end)
```

## Creating A Color Picker
```lua
section2:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section2:addColorPicker("ColorPicker2")
```

## Creating A Slider
```lua
section2:addSlider("Slider", 0, -100, 100, function(value)
print("Dragged", value)
end)
```

## Creating A Dropdown
```lua
section2:addDropdown("Dropdown", {"Hello", "World", "Hello World", "Word", 1, 2, 3}, function(text)
   print("Selected", text)
end)
```

## Creating A Button Function
```lua
section2:addButton("Button")
```

## Creating A Second Theme
```lua
-- second page
local theme = venyx:addPage("Theme", 5012544693)
local colors = theme:addSection("Colors")

for theme, color in pairs(themes) do -- all in one theme changer, i know, im cool
colors:addColorPicker(theme, color, function(color3)
venyx:setTheme(theme, color3)
end)
end
```

## Creating A UI Loader
```lua
venyx:SelectPage(venyx.pages[1], true)
```
