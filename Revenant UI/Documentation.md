# Revenant UI
This documentation is for Kavo UI Credit To xHeptc

## Booting the Revenant UI Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
```




## Creating a Revenant UI Flag
```lua
local Flags = Library.Flags
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)
```

## Creating a Window / Tab
```lua
local Window = Library:Window({
   Text = "Aiming"
})
```

## Creating a Toggle
```lua
Window:Toggle({
   Text = "Aimbot",
   Callback = function()
       print("Aimbot")
   end
})
```

## Creating a Button
```lua
Window:Button({
   Text = "Reload",
   Callback = function(bool)
       Library:Notification({
           Text = "Your gun has been reloaded.",
           Duration = 5
       })
   end
})
```

## Creating a Local Toggle
```lua
local Toggle = Window:Toggle({
   Text = "No-Recoil",
   Flag = "TestFlag",
   Callback = function(bool)
       print(bool)
   end
})
```

## Creating a Local Label
```lua
local Label
Window3:Prompt({
   Text = "Join our discord!",
   OnConfirm = function()
       Library:Notification({
           Text = "Thanks for joining our discord!",
           Duration = 10
       })
       Label:Set({
           Text = "Status: Joined Discord",
           Color = Color3.fromRGB(56, 207, 154)
       })
   end
})
```

## Creating a Label
```lua
Label = Window3:Label({
   Text = "Status: ...",
   Color = Color3.fromRGB(214, 214, 214)
})
```

## Creating a Keybind
```lua
Window3:Keybind({
   Text = "Toggle Library",
   Default = Enum.KeyCode.F4,
   Callback = function()
       Library:Toggle()
   end
})
```

## Creating a Check
```lua
Window3:Check({
   Text = "Mode",
   Callback = function()
       warn("Why did i add this lol")
   end
})

wait(2)
Toggle:Set({
   Bool = true
})

while true do
   if Flags.TestFlag then
       warn("Toggled")
   end
   wait(1)
end
```

## Creating a Second Button
```lua
Window2:Button({
   Text = "Fling All",
   Callback = function()
       print("Flinging all")
   end
})
```

## Creating A Second Toggle
```lua
Window2:Toggle({
   Text = "Fly",
   Callback = function()
       print("weeeeeee")
   end
})
```

## Creating A Dropdown
```lua
Window3:Dropdown({
   Text = "Color Scheme",
   List = {"Dark", "White", "Aqua","Nova"},
   Callback = function(bool)
       print(bool)
   end
})
```

## Creating A Third Button
```lua
Window3:Button({
   Text = "Kill Client",
   Callback = function()
       game:Shutdown()
   end
})
```

## Creating A Slider
```lua
Window3:Slider({
   Text = "Test Slider",
   Default = 10,
   Minimum = 1,
   Maximum = 50,
   Callback = function(value)
       print(value)
   end
})
```
