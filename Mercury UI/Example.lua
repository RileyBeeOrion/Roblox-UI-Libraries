local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local gui = Library:create{
    Theme = Library.Themes.Serika
}

local tab = gui:tab{
    Icon = "rbxassetid://6034996695",
    Name = "Aimbot"
}

tab:button({
    Name = "show prompt",
    Callback = function()
        tab:prompt{
            Title = "Hi",
            Text = "hello",
            Buttons = {
                Ok = function()
                    tab:prompt{
                        Followup = true,
                        Title = "test",
                        Text = "test",
                        Buttons = {
                            Yes = function()
                                tab:prompt{
                                    Followup = true,
                                    Title = "test",
                                    Text = "test",
                                    Buttons = {
                                        balls = function()
                                            gui:set_status("github")
                                        end,
                                        anal = function()
                                            gui:set_Status("money")
                                        end
                                    }
                                }
                            end,
                        }
                    }
                end,
            }
        }
    end,
})
tab:keybind({Callback = function()
    gui:prompt()
end,})
tab:dropdown({
    Name = "Dropdown",
    Description = "dropdown",
    StartingText = "Bodypart",
    Items = {
        "Head",
        "Torso",
        "Random"
    }
})
tab:dropdown({
    Name = "Test",
    StartingText = "Number",
    Items = {
        {"One", 1},
        {"Two", 2},
        {"Three", 3}
    },
    Description = "test",
    Callback = function(v)
        print(v, "clicked")
    end,
})
local cum = tab:slider({Callback = function(v)
    gui:set_status(v)
end})

tab:textbox({Callback = function(v)
    gui:prompt{Text = v}
end,})

tab:color_picker({
    Name = "Color Theme",
    Style = Library.ColorPickerStyles.Legacy,
    Description = "Click to adjust color...",
    Callback = function(color)
        print(color)
    end,
})
