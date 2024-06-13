local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")

    local ScreenGui = Instance.new("ScreenGui")
    local Toggle = Instance.new("ImageButton")
    
    ScreenGui.Name = "ScreenGui"
    ScreenGui.Parent = game.CoreGui
    
    Toggle.Name = "Toggle"
    Toggle.Parent = ScreenGui
    Toggle.BorderSizePixel = 2
    Toggle.BorderColor3 = Color3.fromRGB(0,255,255)
    Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
    Toggle.Size = UDim2.new(0, 50, 0, 50)
    Toggle.Image = "https://raw.githubusercontent.com/RileyBeeOrion/Roblox-UI-Libraries/main/Speed%20Hub%20X/SpeedHubXLogo.png"
    Toggle.ImageColor3 = Color3.fromRGB(0, 255, 255)
    Toggle.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"LeftControl",false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"LeftControl",false,game)
    end)

    local gui = Toggle
    local dragging
    local dragInput
    local dragStart
    local startPos
    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    gui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Speed Hub X | Arsenal",
    SubTitle = "By Riley, Ahmad,",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Amethyst",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

Fluent:Notify({
        Title = "Speed Hub X",
        Content = "Speed Hub X Has Loaded!",
        SubContent = "By Riley, Ahmad", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Home", Icon = "home" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do

Tabs.Main:AddParagraph({
        Title = "Welcome To Speed Hub X",
        Content = "Speed Hub X Supports Various Games Like Blox Fruits, PS99, Muscle Legends"
    })

local Tabs2 = {
    Main = Window:AddTab({ Title = "Main", Icon = "laptop-minimal" }),
}

Tabs2.Main:AddButton({
        Title = "Rapid Fire",
        Description = "No Weapon Cooldown",
        Callback = function()
            Window:Dialog({
                Title = "Execute Rapid Fire?",
                Content = "Press Execute Or No",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                        local replicationstorage = game.ReplicatedStorage

for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
   if v.Name == "Auto" then
       v.Value = true
   end
   if v.Name == "RecoilControl" then
       v.Value = 0
   end
   if v.Name == "MaxSpread" then
       v.Value = 0
   end
   if v.Name == "ReloadTime" then
      v.Value = 1
   end
   if v.Name == "FireRate" then
       v.Value = 0.05
   end
   if v.Name == "Crit" then
       v.Value = 20
   end
end
                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                            print("no")
                        end
                    }
                }
            })
        end
    })

Tabs2.Main:AddButton({
        Title = "Infinite Ammo",
        Description = "Never Ran Out Of Ammo",
        Callback = function()
            Window:Dialog({
                Title = "Execute Infinite Ammo?",
                Content = "Press Execute Or No",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                        while wait() do
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
end
                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                            print("no")
                        end
                    }
                }
            })
        end
    })

Tabs2.Main:AddButton({
        Title = "Silent Aim",
        Description = "Increase Your Hitbox",
        Callback = function()
            Window:Dialog({
                Title = "Execute Silent Aim?",
                Content = "Press Execute Or No",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                        function getplrsname() for i,v in pairs(game:GetChildren()) do if v.ClassName == "Players" then return v.Name end end end local players = getplrsname() local plr = game[players].LocalPlayer coroutine.resume(coroutine.create(function() while wait(1) do coroutine.resume(coroutine.create(function() for _,v in pairs(game[players]:GetPlayers()) do if v.Name ~= plr.Name and v.Character then v.Character.RightUpperLeg.CanCollide = false v.Character.RightUpperLeg.Transparency = 75 v.Character.RightUpperLeg.Size = Vector3.new(21,21,21) v.Character.LeftUpperLeg.CanCollide = false v.Character.LeftUpperLeg.Transparency = 75 v.Character.LeftUpperLeg.Size = Vector3.new(21,21,21) v.Character.HeadHB.CanCollide = false v.Character.HeadHB.Transparency = 75 v.Character.HeadHB.Size = Vector3.new(21,21,21) v.Character.HumanoidRootPart.CanCollide = false v.Character.HumanoidRootPart.Transparency = 75 v.Character.HumanoidRootPart.Size = Vector3.new(21,21,21) end end end)) end end))
                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                            print("no")
                        end
                    }
                }
            })
        end
    })

Tabs2.Main:AddButton({
        Title = "RGB Gun",
        Description = "Makes Your Gun Go Rainbow",
        Callback = function()
            Window:Dialog({
                Title = "Execute RGB Gun?",
                Content = "Press Execute Or No",
                Buttons = {
                    {
                        Title = "Execute",
                        Callback = function()
                        local c = 1 function zigzag(X)  return math.acos(math.cos(X * math.pi)) / math.pi end game:GetService("RunService").RenderStepped:Connect(function()  if game.Workspace.Camera:FindFirstChild('Arms') then   for i,v in pairs(game.Workspace.Camera.Arms:GetDescendants()) do    if v.ClassName == 'MeshPart' then      v.Color = Color3.fromHSV(zigzag(c),1,1)     c = c + .0001    end   end  end end)
                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                            print("No")
                        end
                    }
                }
            })
        end
    })
