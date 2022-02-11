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

--Toggled?
local ToggleBV = false

--Parenting
Module.Parent = pGUI
RoundFrame.Parent = Module
Toggle.Parent = RoundFrame

--Properties
Module.Name = "Humaniod Module"

RoundFrame.BackgroundTransparency = 1
RoundFrame.Name = "Round_Frame"
RoundFrame.BorderSizePixel = 0
RoundFrame.Position = UDim2.new(0.1, 0, 0.02, 0)
RoundFrame.Size = UDim2.new(0.1, 0, 0.06, 0)
RoundFrame.Image = "rbxassetid://3570695787"
RoundFrame.ImageColor3 = Color3.fromRGB(35, 35, 35)
RoundFrame.ScaleType = Enum.ScaleType.Slice
RoundFrame.SliceCenter = Rect.new(100, 100, 100, 100)
RoundFrame.Active = true

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

Toggle.MouseButton1Click:Connect(function()
	if ToggleBV == false then
		ToggleBV = true
		Toggle.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
		Toggle.Text = "Close"
	elseif ToggleBV == true then
		ToggleBV = false
		Toggle.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
		Toggle.Text = "Open"
	end
end)
