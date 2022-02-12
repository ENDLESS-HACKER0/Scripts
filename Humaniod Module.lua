--Player Vars
local LP = game.Players.LocalPlayer
local pGUI = LP.PlayerGui

--Destroy Old
if pGUI:FindFirstChild("Humaniod Module") then
	pGUI:FindFirstChild("Humaniod Module"):Destroy()
end

--Vars
local Module = Instance.new("ScreenGui")
local RoundFrame = Instance.new("ImageLabel")
local Toggle = Instance.new("TextButton")
local DropdownFrame = Instance.new("Frame")
local Speed = Instance.new("TextButton")
local SpeedFrame = Instance.new("Frame")
local SpeedValue = Instance.new("TextBox")
local SetSpeed = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local JumpFrame = Instance.new("Frame")
local JumpValue = Instance.new("TextBox")
local SetJump = Instance.new("TextButton")

--Toggled?
local ToggleBV = false
local SpeedBV = false
local JumpBV = false

--Parenting
Module.Parent = pGUI
RoundFrame.Parent = Module
Toggle.Parent = RoundFrame
DropdownFrame.Parent = Module
Speed.Parent = DropdownFrame
SpeedFrame.Parent = Module
SpeedValue.Parent = SpeedFrame
SetSpeed.Parent = SpeedFrame
Jump.Parent = DropdownFrame
JumpFrame.Parent = Module
JumpValue.Parent = JumpFrame
SetJump.Parent = JumpFrame

--Properties
Module.Name = "Humaniod Module"

SetJump.Name = "Set Jump"
SetJump.Text = "Set"
SetJump.BorderSizePixel = 0
SetJump.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SetJump.Position = UDim2.new(0.1, 0, 0.5, 0)
SetJump.Size = UDim2.new(0.8, 0, 0.2, 0)
SetJump.TextColor3 = Color3.fromRGB(255, 255, 255)
SetJump.TextScaled = true

JumpValue.Name = "Jump Value"
JumpValue.PlaceholderText = "Value"
JumpValue.Text = ""
JumpValue.BorderSizePixel = 0
JumpValue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
JumpValue.Position = UDim2.new(0.2, 0, 0.2, 0)
JumpValue.Size = UDim2.new(0.6, 0, 0.2, 0)
JumpValue.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpValue.TextScaled = true

JumpFrame.Name = "Jump Frame"
JumpFrame.BorderSizePixel = 0
JumpFrame.Position = UDim2.new(0.225, 0, 0.18, 0)
JumpFrame.Size = UDim2.new(0.15, 0, 0.3, 0)
JumpFrame.BackgroundTransparency = 0
JumpFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
JumpFrame.Visible = false

Jump.Name = "Jump Toggle"
Jump.Text = "Jump"
Jump.BorderSizePixel = 0
Jump.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Jump.Position = UDim2.new(0, 0, 0.1, 0)
Jump.Size = UDim2.new(1, 0, 0.1, 0)
Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
Jump.TextScaled = true

SetSpeed.Name = "Set Speed"
SetSpeed.Text = "Set"
SetSpeed.BorderSizePixel = 0
SetSpeed.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SetSpeed.Position = UDim2.new(0.1, 0, 0.5, 0)
SetSpeed.Size = UDim2.new(0.8, 0, 0.2, 0)
SetSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
SetSpeed.TextScaled = true

SpeedValue.Name = "Speed Value"
SpeedValue.PlaceholderText = "Value"
SpeedValue.Text = ""
SpeedValue.BorderSizePixel = 0
SpeedValue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
SpeedValue.Position = UDim2.new(0.2, 0, 0.2, 0)
SpeedValue.Size = UDim2.new(0.6, 0, 0.2, 0)
SpeedValue.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedValue.TextScaled = true

SpeedFrame.Name = "Speed Frame"
SpeedFrame.BorderSizePixel = 0
SpeedFrame.Position = UDim2.new(0.225, 0, 0.1, 0)
SpeedFrame.Size = UDim2.new(0.15, 0, 0.3, 0)
SpeedFrame.BackgroundTransparency = 0
SpeedFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SpeedFrame.Visible = false

Speed.Name = "Speed Toggle"
Speed.Text = "Speed"
Speed.BorderSizePixel = 0
Speed.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Speed.Position = UDim2.new(0, 0, 0, 0)
Speed.Size = UDim2.new(1, 0, 0.1, 0)
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextScaled = true

DropdownFrame.Name = "Dropdown Frame"
DropdownFrame.BorderSizePixel = 0
DropdownFrame.Position = UDim2.new(0.075, 0, 0.1, 0)
DropdownFrame.Size = UDim2.new(0.15, 0, 0.8, 0)
DropdownFrame.BackgroundTransparency = 0
DropdownFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
DropdownFrame.Visible = false

RoundFrame.BackgroundTransparency = 1
RoundFrame.Name = "Round_Frame"
RoundFrame.BorderSizePixel = 0
RoundFrame.Position = UDim2.new(0.1, 0, 0.02, 0)
RoundFrame.Size = UDim2.new(0.1, 0, 0.06, 0)
RoundFrame.Image = "rbxassetid://3570695787"
RoundFrame.ImageColor3 = Color3.fromRGB(35, 35, 35)
RoundFrame.ScaleType = Enum.ScaleType.Slice
RoundFrame.SliceCenter = Rect.new(100, 100, 100, 100)

Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.Size = UDim2.new(1, 0, 0.8, 0)
Toggle.Position = UDim2.new(0, 0, 0.1, 0)
Toggle.BackgroundTransparency = 1
Toggle.Name = "Toggle Button"
Toggle.BorderSizePixel = 0
Toggle.TextScaled = true
Toggle.Text = "Open"
Toggle.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
Toggle.TextStrokeTransparency = 0

Speed.MouseButton1Click:Connect(function()
	if SpeedBV == true then
		SpeedBV = false
		SpeedFrame.Visible = false
		Speed.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	elseif SpeedBV == false then
		JumpBV = false
		SpeedBV = true
		SpeedFrame.Visible = true
		JumpFrame.Visible = false
		Jump.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Speed.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	end
end)

SetSpeed.MouseButton1Click:Connect(function()
	LP.Character.Humanoid.WalkSpeed = tonumber(SpeedValue.Text)
	print("Walk Speed Was set to "..tonumber(SpeedValue.Text))
end)

Jump.MouseButton1Click:Connect(function()
	if JumpBV == true then
		JumpBV = false
		JumpFrame.Visible = false
		Jump.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	elseif JumpBV == false then
		JumpBV = true
		SpeedBV = false
		SpeedFrame.Visible = false
		JumpFrame.Visible = true
		Jump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		Speed.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	end
end)

SetJump.MouseButton1Click:Connect(function()
	LP.Character.Humanoid.JumpPower = tonumber(JumpValue.Text)
	print("Jump Power Was set to "..tonumber(JumpValue.Text))
end)

Toggle.MouseButton1Click:Connect(function()
	if ToggleBV == false then
		ToggleBV = true
		Toggle.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
		Toggle.Text = "Close"
		DropdownFrame.Visible = true
	elseif ToggleBV == true then
		ToggleBV = false
		Toggle.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
		Toggle.Text = "Open"
		DropdownFrame.Visible = false
		SpeedBV = false
		JumpBV = false
		SpeedFrame.Visible = false
		JumpFrame.Visible = false
		Jump.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Speed.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	end
end)
