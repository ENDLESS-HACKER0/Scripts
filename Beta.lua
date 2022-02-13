--Player Vars
local LP = game.Players.LocalPlayer
local pGUI = LP.PlayerGui

--Destroy Old
if pGUI:FindFirstChild("Inset Beta") then
	pGUI:FindFirstChild("Inset Beta"):Destroy()
end

--Vars
local Main = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")
local DropdownFrame = Instance.new("Frame")

--World
local World = Instance.new("TextButton")
local WorldFrame = Instance.new("Frame")

--Player
local Player = Instance.new("TextButton")
local PlayerFrame = Instance.new("Frame")

local Speed = Instance.new("TextButton")
local SpeedFrame = Instance.new("Frame")
local SpeedValue = Instance.new("TextBox")
local SetSpeed = Instance.new("TextButton")

local Jump = Instance.new("TextButton")
local JumpFrame = Instance.new("Frame")
local JumpValue = Instance.new("TextBox")
local SetJump = Instance.new("TextButton")

--Render
local Render = Instance.new("TextButton")
local RenderFrame = Instance.new("Frame")
local ESP = Instance.new("TextButton")

--Other
local Other = Instance.new("TextButton")
local OtherFrame = Instance.new("Frame")

--Toggled?
local ToggleBV = false
local WorldBV = false
local PlayerBV = false
local RenderBV = false
local OtherBV = false

--PlayerToggles
local SpeedBV = false
local JumpBV = false

--RenderToggles
local ESPBV = false

--Collapse
local function CollapseWorld()
	WorldBV = false
	WorldFrame.Visible = false
	World.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
end

local function CollapsePlayer()
	PlayerBV = false
	PlayerFrame.Visible = false
	Player.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	
	Speed.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	SpeedFrame.Visible = false
	SpeedBV = false
	
	Jump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	JumpFrame.Visible = false
	JumpBV = false
end

local function CollapseRender()
	RenderBV = false
	RenderFrame.Visible = false
	Render.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
end

local function CollapseOther()
	OtherBV = false
	OtherFrame.Visible = false
	Other.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
end

--Parenting
Main.Parent = pGUI
Toggle.Parent = Main
DropdownFrame.Parent = Main
World.Parent = DropdownFrame
WorldFrame.Parent = Main
Player.Parent = DropdownFrame
PlayerFrame.Parent = Main
Speed.Parent = PlayerFrame
SpeedFrame.Parent = Main
SpeedValue.Parent = SpeedFrame
SetSpeed.Parent = SpeedFrame
Jump.Parent = PlayerFrame
JumpFrame.Parent = Main
JumpValue.Parent = JumpFrame
SetJump.Parent = JumpFrame
Render.Parent = DropdownFrame
RenderFrame.Parent = Main
ESP.Parent = RenderFrame
Other.Parent = DropdownFrame
OtherFrame.Parent = Main

--Properties
Main.Name = "Inset Beta"

OtherFrame.Name = "Other Frame"
OtherFrame.BorderSizePixel = 0
OtherFrame.Position = UDim2.new(0.225, 0, 0.34, 0)
OtherFrame.Size = UDim2.new(0.15, 0, 0.3, 0)
OtherFrame.BackgroundTransparency = 0
OtherFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
OtherFrame.Visible = false

Other.Name = "Other Toggle"
Other.Text = "Other"
Other.BorderSizePixel = 0
Other.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Other.Position = UDim2.new(0, 0, 0.3, 0)
Other.Size = UDim2.new(1, 0, 0.1, 0)
Other.TextColor3 = Color3.fromRGB(255, 255, 255)
Other.TextScaled = true

ESP.Name = "ESP Toggle"
ESP.Text = "ESP"
ESP.Size = UDim2.new(1, 0, 0.265, 0)
ESP.Position = UDim2.new(0, 0, 0, 0)
ESP.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ESP.TextScaled = true
ESP.TextColor3 = Color3.fromRGB(255, 255, 255)
ESP.BorderSizePixel = 0

RenderFrame.Name = "Render Frame"
RenderFrame.BorderSizePixel = 0
RenderFrame.Position = UDim2.new(0.225, 0, 0.26, 0)
RenderFrame.Size = UDim2.new(0.15, 0, 0.3, 0)
RenderFrame.BackgroundTransparency = 0
RenderFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
RenderFrame.Visible = false

Render.Name = "Render Toggle"
Render.Text = "Render"
Render.BorderSizePixel = 0
Render.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Render.Position = UDim2.new(0, 0, 0.2, 0)
Render.Size = UDim2.new(1, 0, 0.1, 0)
Render.TextColor3 = Color3.fromRGB(255, 255, 255)
Render.TextScaled = true

SetJump.Name = "Set Jump"
SetJump.Text = "Set"
SetJump.BorderSizePixel = 0
SetJump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SetJump.Position = UDim2.new(0.1, 0, 0.5, 0)
SetJump.Size = UDim2.new(0.8, 0, 0.2, 0)
SetJump.TextColor3 = Color3.fromRGB(255, 255, 255)
SetJump.TextScaled = true

JumpValue.Name = "Jump Value"
JumpValue.PlaceholderText = "50"
JumpValue.Text = ""
JumpValue.BorderSizePixel = 0
JumpValue.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
JumpValue.Position = UDim2.new(0.2, 0, 0.2, 0)
JumpValue.Size = UDim2.new(0.6, 0, 0.2, 0)
JumpValue.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpValue.TextScaled = true

JumpFrame.Name = "Jump Frame"
JumpFrame.BorderSizePixel = 0
JumpFrame.Position = UDim2.new(0.375, 0, 0.26, 0)
JumpFrame.Size = UDim2.new(0.15, 0, 0.3, 0)
JumpFrame.BackgroundTransparency = 0
JumpFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
JumpFrame.Visible = false

Jump.Name = "Jump Toggle"
Jump.Text = "Jump"
Jump.Size = UDim2.new(1, 0, 0.265, 0)
Jump.Position = UDim2.new(0, 0, 0.265, 0)
Jump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Jump.TextScaled = true
Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
Jump.BorderSizePixel = 0

SetSpeed.Name = "Set Speed"
SetSpeed.Text = "Set"
SetSpeed.BorderSizePixel = 0
SetSpeed.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SetSpeed.Position = UDim2.new(0.1, 0, 0.5, 0)
SetSpeed.Size = UDim2.new(0.8, 0, 0.2, 0)
SetSpeed.TextColor3 = Color3.fromRGB(255, 255, 255)
SetSpeed.TextScaled = true

SpeedValue.Name = "Speed Value"
SpeedValue.PlaceholderText = "16"
SpeedValue.Text = ""
SpeedValue.BorderSizePixel = 0
SpeedValue.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SpeedValue.Position = UDim2.new(0.2, 0, 0.2, 0)
SpeedValue.Size = UDim2.new(0.6, 0, 0.2, 0)
SpeedValue.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedValue.TextScaled = true

SpeedFrame.Name = "Speed Frame"
SpeedFrame.BorderSizePixel = 0
SpeedFrame.Position = UDim2.new(0.375, 0, 0.18, 0)
SpeedFrame.Size = UDim2.new(0.15, 0, 0.3, 0)
SpeedFrame.BackgroundTransparency = 0
SpeedFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SpeedFrame.Visible = false

Speed.Name = "Speed Toggle"
Speed.Text = "Speed"
Speed.Size = UDim2.new(1, 0, 0.265, 0)
Speed.Position = UDim2.new(0, 0, 0, 0)
Speed.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Speed.TextScaled = true
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.BorderSizePixel = 0

PlayerFrame.Name = "Player Frame"
PlayerFrame.BorderSizePixel = 0
PlayerFrame.Position = UDim2.new(0.225, 0, 0.18, 0)
PlayerFrame.Size = UDim2.new(0.15, 0, 0.3, 0)
PlayerFrame.BackgroundTransparency = 0
PlayerFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
PlayerFrame.Visible = false

Player.Name = "Player Toggle"
Player.Text = "Player"
Player.BorderSizePixel = 0
Player.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Player.Position = UDim2.new(0, 0, 0.1, 0)
Player.Size = UDim2.new(1, 0, 0.1, 0)
Player.TextColor3 = Color3.fromRGB(255, 255, 255)
Player.TextScaled = true

WorldFrame.Name = "World Frame"
WorldFrame.BorderSizePixel = 0
WorldFrame.Position = UDim2.new(0.225, 0, 0.1, 0)
WorldFrame.Size = UDim2.new(0.15, 0, 0.3, 0)
WorldFrame.BackgroundTransparency = 0
WorldFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
WorldFrame.Visible = false

World.Name = "World Toggle"
World.Text = "World"
World.BorderSizePixel = 0
World.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
World.Position = UDim2.new(0, 0, 0, 0)
World.Size = UDim2.new(1, 0, 0.1, 0)
World.TextColor3 = Color3.fromRGB(255, 255, 255)
World.TextScaled = true

DropdownFrame.Name = "Dropdown Frame"
DropdownFrame.BorderSizePixel = 0
DropdownFrame.Position = UDim2.new(0.075, 0, 0.1, 0)
DropdownFrame.Size = UDim2.new(0.15, 0, 0.8, 0)
DropdownFrame.BackgroundTransparency = 0
DropdownFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
DropdownFrame.Visible = false

Toggle.BackgroundColor3 = Color3.fromRGB(0, 125, 64)
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.Size = UDim2.new(0.15, 0, 0.08, 0)
Toggle.Position = UDim2.new(0.075, 0, 0.02, 0)
Toggle.Name = "Toggle Button"
Toggle.BorderSizePixel = 0
Toggle.TextScaled = true
Toggle.Text = "Inset"

World.MouseButton1Click:Connect(function()
	if WorldBV == true then
		CollapseWorld()
	elseif WorldBV == false then
		WorldBV = true
		WorldFrame.Visible = true
		World.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		CollapsePlayer()
		CollapseRender()
		CollapseOther()
	end
end)

Player.MouseButton1Click:Connect(function()
	if PlayerBV == true then
		CollapsePlayer()
	elseif PlayerBV == false then
		PlayerBV = true
		PlayerFrame.Visible = true
		Player.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		CollapseWorld()
		CollapseRender()
		CollapseOther()
	end
end)

Speed.MouseButton1Click:Connect(function()
	if SpeedBV == false then
		SpeedBV = true
		JumpBV = false
		SpeedFrame.Visible = true
		JumpFrame.Visible = false
		Speed.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Jump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	elseif SpeedBV == true then
		SpeedBV = false
		SpeedFrame.Visible = false
		Speed.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	end
end)

SetSpeed.MouseButton1Click:Connect(function()
	print("Walk Speed was set to "..tonumber(SpeedValue.Text).." from "..LP.Character.Humanoid.WalkSpeed)
	LP.Character.Humanoid.WalkSpeed = tonumber(SpeedValue.Text)
end)

Jump.MouseButton1Click:Connect(function()
	if JumpBV == false then
		JumpBV = true
		SpeedBV = false
		JumpFrame.Visible = true
		SpeedFrame.Visible = false
		Jump.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Speed.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	elseif JumpBV == true then
		JumpBV = false
		JumpFrame.Visible = false
		Jump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	end
end)

SetJump.MouseButton1Click:Connect(function()
	print("Jump Power was set to "..tonumber(JumpValue.Text).." from "..LP.Character.Humanoid.JumpPower)
	LP.Character.Humanoid.JumpPower = tonumber(JumpValue.Text)
end)

Render.MouseButton1Click:Connect(function()
	if RenderBV == true then
		CollapseRender()
	elseif RenderBV == false then
		RenderBV = true
		RenderFrame.Visible = true
		Render.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		CollapseWorld()
		CollapsePlayer()
		CollapseOther()
	end
end)

Other.MouseButton1Click:Connect(function()
	if OtherBV == true then
		CollapseOther()
	elseif OtherBV == false then
		OtherBV = true
		OtherFrame.Visible = true
		Other.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
		CollapseWorld()
		CollapsePlayer()
		CollapseRender()
	end
end)

ESP.MouseButton1Click:Connect(function()
	ESPBV = not ESPBV
	if ESPBV == true then
		ESP.BackgroundColor3 = Color3.fromRGB(0, 125, 64)
		while ESPBV == true do
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/ESP.lua", true))()
			wait(30)
		end
	elseif ESPBV == false then
		ESP.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	end
end)

Toggle.MouseButton1Click:Connect(function()
	if ToggleBV == false then
		ToggleBV = true
		DropdownFrame.Visible = true
	elseif ToggleBV == true then
		ToggleBV = false
		DropdownFrame.Visible = false
		CollapseWorld()
		CollapsePlayer()
		CollapseRender()
		CollapseOther()
	end
end)
