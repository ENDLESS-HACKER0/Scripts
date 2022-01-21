local LP = game.Players.LocalPlayer
local pGUI = LP.PlayerGui

--Destroy Old
if pGUI:FindFirstChild("Inset") then
	pGUI:FindFirstChild("Inset"):Destroy()
end

--Tabs
local tabHome = Instance.new("TextButton")
local tabSimple = Instance.new("TextButton")
local otherGUIs = Instance.new("TextButton")
local Fun = Instance.new("TextButton")

--GUI Vars
local app = Instance.new("ScreenGui")	
local mf = Instance.new("Frame")
local tabFrame = Instance.new("Frame")
local homeFrame = Instance.new("Frame")
local hackList1 = Instance.new("ScrollingFrame")
local GUIlist = Instance.new("ScrollingFrame")
local Funlist = Instance.new("ScrollingFrame")
local toggleOFF = Instance.new("TextButton")
local toggleON = Instance.new("TextButton")
local Intro = Instance.new("TextLabel")
local speed = Instance.new("TextButton")
local speedValue = Instance.new("TextBox")
local jump = Instance.new("TextButton")
local jumpValue = Instance.new("TextBox")
local fly = Instance.new("TextButton")
local FirePets = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local BangGUI = Instance.new("TextButton")
local DaHoodGUI = Instance.new("TextButton")
local Fireworks = Instance.new("TextButton")

--Toggles
local ESPtoggle = false

--Parenting
app.Parent = pGUI
mf.Parent = app
toggleON.Parent = app
tabFrame.Parent = mf
Funlist.Parent = mf
GUIlist.Parent = mf
hackList1.Parent = mf
homeFrame.Parent = mf
toggleOFF.Parent = tabFrame
tabHome.Parent = tabFrame
Intro.Parent = homeFrame
tabSimple.Parent = tabFrame
otherGUIs.Parent = tabFrame
Fun.Parent = tabFrame
speed.Parent = hackList1
speedValue.Parent = hackList1
jump.Parent = hackList1
jumpValue.Parent = hackList1
fly.Parent = hackList1
FirePets.Parent = Funlist
ESP.Parent = hackList1
BangGUI.Parent = GUIlist
DaHoodGUI.Parent = GUIlist
Fireworks.Parent = Funlist

--Adjustments
app.Name = "Inset"

tabFrame.BorderSizePixel = 0
tabFrame.Size = UDim2.new(1, 0, 0.2, 0)
tabFrame.Position = UDim2.new(0, 0, 0, 0)
tabFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

hackList1.BorderSizePixel = 0
hackList1.Position = UDim2.new(0, 0, 0.2, 0)
hackList1.Size = UDim2.new(1, 0, 0.8, 0)
hackList1.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50)
hackList1.CanvasSize = UDim2.new(0, 0, 3, 0)
hackList1.BackgroundTransparency = 0.2
hackList1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
hackList1.Visible = false

GUIlist.BorderSizePixel = 0
GUIlist.Position = UDim2.new(0, 0, 0.2, 0)
GUIlist.Size = UDim2.new(1, 0, 0.8, 0)
GUIlist.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50)
GUIlist.CanvasSize = UDim2.new(0, 0, 3, 0)
GUIlist.BackgroundTransparency = 0.2
GUIlist.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUIlist.Visible = false

Funlist.BorderSizePixel = 0
Funlist.Position = UDim2.new(0, 0, 0.2, 0)
Funlist.Size = UDim2.new(1, 0, 0.8, 0)
Funlist.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50)
Funlist.CanvasSize = UDim2.new(0, 0, 3, 0)
Funlist.BackgroundTransparency = 0.2
Funlist.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Funlist.Visible = false

mf.Size = UDim2.new(0.5, 0, 0.5, 0)
mf.Position = UDim2.new(0.25, 0, 0.25, 0)
mf.BackgroundTransparency = 1
mf.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mf.BorderSizePixel = 0
mf.Visible = false

toggleON.Size = UDim2.new(0.1, 0, 0.1, 0)
toggleON.Position = UDim2.new(0, 0, 0.5, 0)
toggleON.BackgroundTransparency = 1
toggleON.BorderSizePixel = 0
toggleON.Text = "Toggle"
toggleON.TextScaled = true
toggleON.TextColor3 = Color3.fromRGB(0, 255, 0)
toggleON.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
toggleON.TextStrokeTransparency = 0

toggleOFF.BackgroundTransparency = 1
toggleOFF.Size = UDim2.new(0.05, 0, 0.5, 0)
toggleOFF.Position = UDim2.new(0.925, 0, 0.25, 0)
toggleOFF.Text = "X"
toggleOFF.TextScaled = true
toggleOFF.TextColor3 = Color3.fromRGB(255, 0, 0)

homeFrame.BorderSizePixel = 0
homeFrame.Position = UDim2.new(0, 0, 0.2, 0)
homeFrame.Size = UDim2.new(1, 0, 0.8, 0)
homeFrame.BackgroundTransparency = 0.2
homeFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Intro.Size = UDim2.new(1, 0, 1, 0)
Intro.BackgroundTransparency = 1
Intro.TextColor3 = Color3.fromRGB(255, 255, 255)
Intro.Text = "This is the Inset menu. To get Inset go to https://discord.gg/DTvh7BDhWt and get Inset Executer"
Intro.TextScaled = true

Fun.BackgroundTransparency = 1
Fun.Size = UDim2.new(0.1, 0, 0.5, 0)
Fun.Position = UDim2.new(0.41, 0, 0.25, 0)
Fun.Text = "Fun"
Fun.TextScaled = true
Fun.TextColor3 = Color3.fromRGB(255, 255, 255)
Fun.TextStrokeTransparency = 0
Fun.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

otherGUIs.BackgroundTransparency = 1
otherGUIs.Size = UDim2.new(0.1, 0, 0.5, 0)
otherGUIs.Position = UDim2.new(0.28, 0, 0.25, 0)
otherGUIs.Text = "GUIs"
otherGUIs.TextScaled = true
otherGUIs.TextColor3 = Color3.fromRGB(255, 255, 255)
otherGUIs.TextStrokeTransparency = 0
otherGUIs.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

tabSimple.BackgroundTransparency = 1
tabSimple.Size = UDim2.new(0.1, 0, 0.5, 0)
tabSimple.Position = UDim2.new(0.15, 0, 0.25, 0)
tabSimple.Text = "Simple"
tabSimple.TextScaled = true
tabSimple.TextColor3 = Color3.fromRGB(255, 255, 255)
tabSimple.TextStrokeTransparency = 0
tabSimple.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

tabHome.BackgroundTransparency = 1
tabHome.Size = UDim2.new(0.1, 0, 0.5, 0)
tabHome.Position = UDim2.new(0.025, 0, 0.25, 0)
tabHome.Text = "Home"
tabHome.TextScaled = true
tabHome.TextColor3 = Color3.fromRGB(255, 255, 255)
tabHome.TextStrokeTransparency = 0
tabHome.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)

speed.BorderSizePixel = 0
speed.BackgroundTransparency = 1
speed.Text = "Set"
speed.TextScaled = true
speed.Size = UDim2.new(0.1, 0, 0.03, 0)
speed.Position = UDim2.new(0.02, 0, 0.08, 0)
speed.TextColor3 = Color3.fromRGB(0, 255, 0)

speedValue.BorderSizePixel = 0
speedValue.BackgroundTransparency = 1
speedValue.PlaceholderText = "Speed Value"
speedValue.Text = ""
speedValue.TextScaled = true
speedValue.Size = UDim2.new(0.1, 0, 0.05, 0)
speedValue.Position = UDim2.new(0.02, 0, 0.02)
speedValue.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
speedValue.TextColor3 = Color3.fromRGB(255, 255, 255)

jump.BorderSizePixel = 0
jump.BackgroundTransparency = 1
jump.Text = "Set"
jump.TextScaled = true
jump.Size = UDim2.new(0.1, 0, 0.03, 0)
jump.Position = UDim2.new(0.2, 0, 0.08, 0)
jump.TextColor3 = Color3.fromRGB(0, 255, 0)

jumpValue.BorderSizePixel = 0
jumpValue.BackgroundTransparency = 1
jumpValue.PlaceholderText = "Jump Value"
jumpValue.Text = ""
jumpValue.TextScaled = true
jumpValue.Size = UDim2.new(0.1, 0, 0.05, 0)
jumpValue.Position = UDim2.new(0.2, 0, 0.02)
jumpValue.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
jumpValue.TextColor3 = Color3.fromRGB(255, 255, 255)

fly.BorderSizePixel = 0
fly.BackgroundTransparency = 1
fly.Text = "Fly(X)"
fly.TextScaled = true
fly.Size = UDim2.new(0.1, 0, 0.08, 0)
fly.Position = UDim2.new(0.38, 0, 0.02, 0)
fly.TextColor3 = Color3.fromRGB(0, 255, 0)

FirePets.BorderSizePixel = 0
FirePets.BackgroundTransparency = 1
FirePets.Text = "Fire Pets"
FirePets.TextScaled = true
FirePets.Size = UDim2.new(0.1, 0, 0.08, 0)
FirePets.Position = UDim2.new(0.2, 0, 0.02, 0)
FirePets.TextColor3 = Color3.fromRGB(255, 115, 15)

ESP.BorderSizePixel = 0
ESP.BackgroundTransparency = 1
ESP.Text = "ESP"
ESP.TextScaled = true
ESP.Size = UDim2.new(0.1, 0, 0.08, 0)
ESP.Position = UDim2.new(0.56, 0, 0.02, 0)
ESP.TextColor3 = Color3.fromRGB(255, 0, 0)

BangGUI.BorderSizePixel = 0
BangGUI.BackgroundTransparency = 1
BangGUI.Text = "Bang GUI (R6)"
BangGUI.TextScaled = true
BangGUI.Size = UDim2.new(0.1, 0, 0.08, 0)
BangGUI.Position = UDim2.new(0.02, 0, 0.02, 0)
BangGUI.TextColor3 = Color3.fromRGB(0, 255, 0)

DaHoodGUI.BorderSizePixel = 0
DaHoodGUI.BackgroundTransparency = 1
DaHoodGUI.Text = "Da Hood GUI"
DaHoodGUI.TextScaled = true
DaHoodGUI.Size = UDim2.new(0.1, 0, 0.08, 0)
DaHoodGUI.Position = UDim2.new(0.2, 0, 0.02, 0)
DaHoodGUI.TextColor3 = Color3.fromRGB(0, 255, 0)

Fireworks.BorderSizePixel = 0
Fireworks.BackgroundTransparency = 1
Fireworks.Text = "FireWorks"
Fireworks.TextScaled = true
Fireworks.Size = UDim2.new(0.1, 0, 0.08, 0)
Fireworks.Position = UDim2.new(0.02, 0, 0.02, 0)
Fireworks.TextColor3 = Color3.fromRGB(0, 255, 0)

--Main Script
toggleON.MouseButton1Click:Connect(function()
	mf.Visible = true
	toggleON.Visible = false
end)

toggleOFF.MouseButton1Click:Connect(function()
	mf.Visible = false
	toggleON.Visible = true
end)

speed.MouseButton1Click:Connect(function()
	LP.Character.Humanoid.WalkSpeed = speedValue.Text
end)

jump.MouseButton1Click:Connect(function()
	LP.Character.Humanoid.JumpPower = jumpValue.Text
end)

fly.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/Fly.lua", true))()
end)

FirePets.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/Fire%20Orb%20Pet.lua", true))()
end)

ESP.MouseButton1Click:Connect(function()
	ESPtoggle = not ESPtoggle
	if ESPtoggle == true then
		ESP.TextColor3 = Color3.fromRGB(0, 255, 0)
		while ESPtoggle == true do
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/ESP.lua", true))()
			wait(30)
		end
	elseif ESPtoggle == false then
		ESP.TextColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

BangGUI.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/Bang.lua", true))()
end)

DaHoodGUI.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/Da%20Hood%20GUI.lua", true))()
end)

Fireworks.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/Fireworks.lua", true))()
end)

tabHome.MouseButton1Click:Connect(function()
	tabHome.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
	tabSimple.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	otherGUIs.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	Fun.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	hackList1.Visible = false
	homeFrame.Visible = true
	GUIlist.Visible = false
	Funlist.Visible = false
end)

tabSimple.MouseButton1Click:Connect(function()
	tabHome.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	tabSimple.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
	otherGUIs.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	Fun.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	hackList1.Visible = true
	homeFrame.Visible = false
	GUIlist.Visible = false
	Funlist.Visible = false
end)

otherGUIs.MouseButton1Click:Connect(function()
	tabHome.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	tabSimple.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	otherGUIs.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
	Fun.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	hackList1.Visible = false
	homeFrame.Visible = false
	GUIlist.Visible = true
	Funlist.Visible = false
end)

Fun.MouseButton1Click:Connect(function()
	tabHome.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	tabSimple.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	otherGUIs.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	Fun.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
	hackList1.Visible = false
	homeFrame.Visible = false
	GUIlist.Visible = false
	Funlist.Visible = true
end)
