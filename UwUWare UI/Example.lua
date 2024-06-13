local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraScript/Script/main/test", true))()

local Window = Library:CreateWindow"Window"

Window:AddFolder"Folder"

Window:AddLabel({text = "Label"})
 
Window:AddButton({text = "Button", flag = "button", callback = function() print"pressed" end})

Window:AddToggle({text = "Toggle", flag = "toggle", state = false, callback = function(a) print(a) end})
Window:AddToggle({text = "Toggle", flag = "toggle1", state = true, callback = function(a) print(a) end})


Window:AddList({text = "List", flag = "list", value = "Value", values = {"Value1", "Value2", "Value3", "Value4"}, callback = function(a) print(a) end})

Window:AddBox({text = "Box", flag = "box", value = "Value", callback = function(a) print(a) end})
 
Window:AddSlider({text = "Slider", flag = "slider", value = 100, min = 20, max = 200, float = 0.3, callback = function(a) print(a) end})
Window:AddSlider({text = "Slider", flag = "slider1", value = 0, min = -50, max = 100, callback = function(a) print(a) end})
 
Window:AddBind({text = "Bind", flag = "bind", key = "MouseButton1", callback = function() print"pressed" end})
Window:AddBind({text = "Bind", flag = "bind", hold = true, key = "E" , callback = function(a) if a then print"let go" else print"holding" end end})
Window:AddBind({text = "Toggle UI", key = "RightShift", callback = function() library:Close() end})
 
Window:AddColor({text = "Color", flag = "color", color = Color3.fromRGB(255, 65, 65), callback = function(a) print(a) end})
Window:AddColor({text = "Color", flag = "color", color = {1, 0.2, 0.2}, callback = function(a) print(a) end})

Library:Init()
 
wait(5)
print("Toggle is currently:", Library.flags["toggle"])
print("Second toggle is currently:", Library.flags["toggle1"])
