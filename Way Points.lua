--Using
local InsetAPI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/API.lua", true))()
local UIS = game:GetService("UserInputService")

--Player Vars
local LP = game:GetService("Players").LocalPlayer
local pGUI = game.CoreGui

--Destroy Old
if pGUI:FindFirstChild("Inset Way Point GUI") then
	pGUI:FindFirstChild("Inset Way Point GUI"):Destroy()
end

--Check For Old Way Points
if workspace:FindFirstChild("Way Points") then

else
	local Way_Points_Folder = Instance.new("Folder")
	Way_Points_Folder.Parent = workspace
	Way_Points_Folder.Name = "Way Points"
end

--variables
local App = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local CornerUI = Instance.new("UICorner")
local TopBar = MainFrame:Clone()
local CornerUITopBar = CornerUI:Clone()
local TopBarLabel = Instance.new("TextLabel")
local TBLGradient = Instance.new("UIGradient")
local InputBox = Instance.new("TextBox")
local IBCornerUI = CornerUI:Clone()
local Create = Instance.new("TextButton")
local CreateCornerUI = CornerUI:Clone()
local Delete = Instance.new("TextButton")
local DeleteCornerUI = CornerUI:Clone()

--Bool Var
local ToggleBV = true

--Properties
App.Name = "Inset Way Point GUI"
App.Parent = pGUI
App.Enabled = true

MainFrame.Size = UDim2.new(0.4, 0, 0.6, 0)
MainFrame.Position = UDim2.new(0.1, 0, 0.2, 0)
MainFrame.Parent = App
MainFrame.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
MainFrame.Visible = true

CornerUI.CornerRadius = UDim.new(0, 15)
CornerUI.Parent = MainFrame

TopBar.Size = UDim2.new(1, 0, 0.2, 0)
TopBar.Position = UDim2.new(0, 0, 0, 0)
TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

CornerUITopBar.CornerRadius = UDim.new(0, 15)
CornerUITopBar.Parent = TopBar

TopBarLabel.Size = UDim2.new(1, 0, 1, 0)
TopBarLabel.Transparency = 1
TopBarLabel.Text = "Inset Way Point GUI"
TopBarLabel.TextScaled = true
TopBarLabel.Parent = TopBar
TopBarLabel.TextTransparency = 0
TopBarLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

TBLGradient.Color = ColorSequence.new {
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 90)),
	ColorSequenceKeypoint.new(0.53, Color3.fromRGB(0, 255, 90)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
TBLGradient.Rotation = 90
TBLGradient.Parent = TopBarLabel

InputBox.Parent = MainFrame
InputBox.Size = UDim2.new(0.8, 0, 0.2, 0)
InputBox.Position = UDim2.new(0.1, 0, 0.4, 0)
InputBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InputBox.PlaceholderColor3 = Color3.fromRGB(122, 86, 36)
InputBox.PlaceholderText = "Way Point Name"
InputBox.TextColor3 = Color3.fromRGB(255, 182, 75)
InputBox.TextStrokeTransparency = 0
InputBox.TextStrokeColor3 = Color3.fromRGB(255, 132, 25)
InputBox.TextScaled = true
InputBox.Text = ""

IBCornerUI.CornerRadius = UDim.new(0, 15)
IBCornerUI.Parent = InputBox

Create.Size = UDim2.new(0.35, 0, 0.2, 0)
Create.Position = UDim2.new(0.1, 0, 0.7, 0)
Create.Parent = MainFrame
Create.TextScaled = true
Create.Text = "Create"
Create.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Create.TextColor3 = Color3.fromRGB(255, 255, 255)

CreateCornerUI.CornerRadius = UDim.new(0, 15)
CreateCornerUI.Parent = Create

Delete.Size = UDim2.new(0.35, 0, 0.2, 0)
Delete.Position = UDim2.new(0.55, 0, 0.7, 0)
Delete.Parent = MainFrame
Delete.TextScaled = true
Delete.Text = "Delete"
Delete.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Delete.TextColor3 = Color3.fromRGB(255, 255, 255)

DeleteCornerUI.CornerRadius = UDim.new(0, 15)
DeleteCornerUI.Parent = Delete

--Buttons
Create.MouseButton1Click:Connect(function()
	local WPF = workspace:WaitForChild("Way Points")
	local name = InputBox.Text
	local brick = Instance.new("Part")
	local marker = Instance.new("BillboardGui")
	local frame = Instance.new("Frame")
	local round = CornerUI:Clone()
	local nameViewer = Instance.new("TextLabel")

	brick.Name = name
	brick.Position = LP.Character.Head.Position + Vector3.new(0, 3, 0)
	brick.Orientation = Vector3.new(0, 0, 90)
	brick.Size = Vector3.new(300, 4, 4)
	brick.Color = Color3.fromRGB(255, 209, 69)
	brick.Transparency = 0.5
	brick.CastShadow = false
	brick.Anchored = true
	brick.CanCollide = false
	brick.Transparency = 0
	brick.Massless = true
	brick.Shape = Enum.PartType.Cylinder
	brick.Material = Enum.Material.ForceField
	brick.Parent = WPF

	marker.Parent = brick
	marker.Active = true
	marker.AlwaysOnTop = true
	marker.Enabled = true
	marker.Size = UDim2.new(0, 50, 0, 50)

	frame.Parent = marker
	frame.BackgroundColor3 = Color3.fromRGB(0, 255, 90)
	frame.Size = UDim2.new(1, 0, 1, 0)

	round.CornerRadius = UDim.new(0, 15)
	round.Parent = frame

	nameViewer.Text = name
	nameViewer.Transparency = 1
	nameViewer.TextScaled = true
	nameViewer.TextColor3 = Color3.fromRGB(255, 255, 255)
	nameViewer.Size = UDim2.new(1, 0, 1, 0)
	nameViewer.Parent = frame
	nameViewer.TextTransparency = 0
end)

Delete.MouseButton1Click:Connect(function()
	local name = InputBox.Text
	local WPF = workspace:WaitForChild("Way Points")

	if WPF:FindFirstChild(name) then
		WPF[name]:Destroy()
	end
end)

--Toggle
UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.Semicolon then
		if ToggleBV == false then
			ToggleBV = true
			MainFrame.Visible = true
		elseif ToggleBV == true then
			ToggleBV = false
			MainFrame.Visible = false
		end
	end
end)

InsetAPI:notify("Inset Way Points", "Press \";\" to toggle", 6)
