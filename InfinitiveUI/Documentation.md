# Infinitive UI
This documentation is for Infinitive UI Credit To The Owner

## Booting the Infinitive UI Library
```lua
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/InfinitiveUI",true))()
```




## Creating a Infinitive UI Window
```lua
local Win = Lib:CreateWindow("ah",1,nil,nil)
```

## Creating a Tab
```lua
local Tab,name = Win:CreateTab("Tab "..tostring(i),function() warn(i) end)
```

## Creating a Button
```lua
Tab:CreateButton("Test",function()
print("Hello World")
end)
```

## Creating a Toggle
```lua
Tab:CreateToggle("Toggle", function(t)
print("hi")
end)
```

## Creating a Toggle
```lua
KillingCheats:CreateToggle("Auto Ez", function(value)
print(value)
end)
```

## Creating a Slider
```lua
local max = math.random(500,5000)
Tab:CreateSlider("Slider",function(v)
print("Set Speed")
end)
```

## Creating a Dropdown
```lua
Tab:CreateDropdown("Dropdown" "Named", {}},"hello","he","ah","eh","yw"},false,function(value)
print("Hi")
end)
```

## Creating a Textbox
```lua
local Textbox = Tab:CreateTextbox("TextBox")

Textbox:GetPropertyChangedSignal("Text"):Connect(function()
print(Hi)
end)
```
