# Speed Hub X UI
This documentation is for Speed Hub X UI Credit To Ahmad

## Booting the Speed Hub X UI Library
```lua
local Library = loadstring(game:HttpGet("https://speedhubxv3-library.surge.sh"))()
```




## Creating a Speed Hub X UI Window
```lua
local Window = Library:MakeWindow({
    Title = "Speed Hub X | " .. Version,
    SaveFolder = "Speed Hub X"
});Window:AddMinimizeButton({
    Button = {Image = "rbxassetid://16022917595"},
    Corner = {CornerRadius = UDim.new(0, 5)}
})
```

## Creating a Tab
```lua
local Home = Window:MakeTab({"Home", "scan-face"})
```

## Creating a Section
```lua
Home:AddSection({"Local Player"})
```

## Creating a Discord Invite
```lua
Home:AddDiscordInvite({
    Name = "hi",
    Logo = "rbxassetid://16022917595",
    Invite = Discord
})
```

## Creating a Button
```lua
Main:AddButton({Name = "Refersh Boss", Description = "", Callback = function()
    BossList:Set(getgenv().TableBoss)
end})
```

## Creating a Toggle
```lua
local SpeedHubX = {}
local function Toggle(Tab, Name, Desc, Default)
  local Ver = Tab:AddToggle({
    Name = Name,Description = Desc or "",Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Toggle/"..Name})
    return Ver
end
```

## Creating a Dropdown
```lua
local function Dropdown(Tab, Name, Desc, Option, Default)
  local Ver = Tab:AddDropdown({
    Name = Name,Description = Desc or "",Options = Option,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Dropdown/"..Name})
    return Ver
end
```

## Creating a Silder
```lua
local function Silder(Tab, Name, Min, Max, Default)
  local Ver = Tab:AddSlider({
    Name = Name,Min = Min,Max = Max,Default = Default,
    Callback = function(Value)
      SpeedHubX[Name] = Value
    end, Flag = "SpeedHubX/Slider/"..Name})
    return Ver
end
```

## Creating a Function
```lua
Toggle(ItemQuest, "Auto Twin Hooks", "", false)
```
```lua
Dropdown(Main, "Choose Chest Area", "", {"Mirage Island", "Island Other"}, "Island Other")
```
```lua
Silder(Main, "Mastery Health", 0, 100, 25)
```
