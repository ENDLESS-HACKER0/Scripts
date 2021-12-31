--Player Vars
local LP = game.Players.LocalPlayer
local pGUI = LP.PlayerGui

--Tabs
local tabHome = Instance.new("TextButton")
local tabSimple = Instance.new("TextButton")

--GUI Vars
local app = Instance.new("ScreenGui")	
local mf = Instance.new("Frame")
local tabFrame = Instance.new("Frame")
local homeFrame = Instance.new("Frame")
local hackList1 = Instance.new("ScrollingFrame")
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

--Parenting
app.Parent = pGUI
mf.Parent = app
toggleON.Parent = app
tabFrame.Parent = mf
hackList1.Parent = mf
homeFrame.Parent = mf
toggleOFF.Parent = tabFrame
tabHome.Parent = tabFrame
Intro.Parent = homeFrame
tabSimple.Parent = tabFrame
speed.Parent = hackList1
speedValue.Parent = hackList1
jump.Parent = hackList1
jumpValue.Parent = hackList1
fly.Parent = hackList1
FirePets.Parent = hackList1
ESP.Parent = hackList1

--Positioning
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
FirePets.Position = UDim2.new(0.56, 0, 0.02, 0)
FirePets.TextColor3 = Color3.fromRGB(255, 115, 15)

ESP.BorderSizePixel = 0
ESP.BackgroundTransparency = 1
ESP.Text = "ESP"
ESP.TextScaled = true
ESP.Size = UDim2.new(0.1, 0, 0.08, 0)
ESP.Position = UDim2.new(0.74, 0, 0.02, 0)
ESP.TextColor3 = Color3.fromRGB(0, 255, 0)

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
	local plr = game.Players.LocalPlayer
	local mouse = plr:GetMouse()

	local player = plr

	if workspace:FindFirstChild("Core") then
		workspace.Core:Destroy()
	end

	local Core = Instance.new("Part")
	Core.Name = "Core"
	Core.Size = Vector3.new(0.05, 0.05, 0.05)

	spawn(function()
		Core.Parent = workspace
		local Weld = Instance.new("Weld", Core)
		Weld.Part0 = Core
		Weld.Part1 = player.Character.LowerTorso
		Weld.C0 = CFrame.new(0, 0, 0)
	end)

	workspace:WaitForChild("Core")

	local torso = workspace.Core
	local flying = true
	local speed=10
	local keys={a=false,d=false,w=false,s=false}
	local e1
	local e2
	local function start()
		local pos = Instance.new("BodyPosition",torso)
		local gyro = Instance.new("BodyGyro",torso)
		pos.Name="EPIXPOS"
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = torso.Position
		gyro.maxTorque = Vector3.new(15e15, 15e15, 15e15)
		gyro.cframe = torso.CFrame
		repeat
			wait()
			player.Character.Humanoid.PlatformStand=true
			local new=gyro.cframe - gyro.cframe.p + pos.position
			if not keys.w and not keys.s and not keys.a and not keys.d then
				speed=10
			end
			if keys.w then
				new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.s then
				new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
				speed=speed+0
			end
			if keys.d then
				new = new * CFrame.new(speed,0,0)
				speed=speed+0
			end
			if keys.a then
				new = new * CFrame.new(-speed,0,0)
				speed=speed+0
			end
			if speed>100 then
				speed=10
			end
			pos.position=new.p
			if keys.w then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
			elseif keys.s then
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
			else
				gyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end
		until flying == false
		if gyro then gyro:Destroy() end
		if pos then pos:Destroy() end
		flying=false
		player.Character.Humanoid.PlatformStand=false
		speed=10
	end
	e1=mouse.KeyDown:connect(function(key)
		if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
		if key=="w" then
			keys.w=true
		elseif key=="s" then
			keys.s=true
		elseif key=="a" then
			keys.a=true
		elseif key=="d" then
			keys.d=true
		elseif key=="x" then
			if flying==true then
				flying=false
			else
				flying=true
				start()
			end
		end
	end)
	e2=mouse.KeyUp:connect(function(key)
		if key=="w" then
			keys.w=false
		elseif key=="s" then
			keys.s=false
		elseif key=="a" then
			keys.a=false
		elseif key=="d" then
			keys.d=false
		end
	end)
	start()
end)

FirePets.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/PkT0DHGB", true))()
end)

ESP.MouseButton1Click:Connect(function()
	local bg = Instance.new("BillboardGui")
	local frame = Instance.new("Frame")
	local LP = game.Players.LocalPlayer

	for _,player in pairs(game.Players:GetPlayers()) do
		if player.UserId == LP.UserId then
			print("Skipped Local Player!")
		elseif player.Character:FindFirstChild("HumanoidRootPart") then
			local copyBG = bg:Clone()
			local copyBG2 = bg:Clone()
			local copyFrame = frame:Clone()
			local copyFrame2 = frame:Clone()
			copyBG.AlwaysOnTop = true
			copyBG2.AlwaysOnTop = true
			copyBG.Parent = player.Character.HumanoidRootPart
			copyBG2.Parent = copyBG.Parent
			copyFrame.Parent = copyBG
			copyFrame2.Parent = copyBG2
			copyFrame.BackgroundTransparency = 0.5
			copyFrame.Size = UDim2.new(1, 0, 1, 0)
			copyFrame2.Size = UDim2.new(1, 0, 1, 0)
			copyBG.Size = UDim2.new(0, 50, 0, 50)
			copyBG2.Size = UDim2.new(0, 10, 0, 10)
			copyBG.Name = "copyBackground"
			copyBG2.Name = "copyBackground2"
			copyFrame.BackgroundTransparency = 0.5
			copyFrame2.BackgroundTransparency = 0.5
			copyFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			copyFrame2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			copyFrame.BorderSizePixel = 0
			copyFrame2.BorderSizePixel = 0
			print(tostring(player).." has ESP")
		else
			print(tostring(player).." did not have a HumanoidRootPart")
		end
	end
end)

tabHome.MouseButton1Click:Connect(function()
	tabHome.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
	tabSimple.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	hackList1.Visible = false
	homeFrame.Visible = true
end)

tabSimple.MouseButton1Click:Connect(function()
	tabHome.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	tabSimple.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
	hackList1.Visible = true
	homeFrame.Visible = false
end)
