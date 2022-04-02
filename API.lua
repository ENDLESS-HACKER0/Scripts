local API = {}

local LP = game:GetService("Players").LocalPlayer
local camara = game:GetService("Workspace").Camera
local pGUI = LP.PlayerGui
local hum = LP.Character:WaitForChild("Humanoid")

function API:reset()
	hum.Health = 0
end

function API:fire(color, color2)
	local fire = Instance.new("Fire")

	fire.Parent = LP.Character:WaitForChild("Head")
	fire.Color = color
	fire.SecondaryColor = color2
	fire.Name = "Inset Fire"
end

function API:unfire()
	LP.Character:WaitForChild("Head"):WaitForChild("Inset Fire"):Destroy()
end

function API:ToGame(place)
	local TeleportService = game:GetService("TeleportService")

	TeleportService:Teleport(place, LP)
end

function API:trace(target)
	if target == "All" then
		for _,person in pairs(game:GetService("Players"):GetPlayers()) do
			if person.UserId == LP.UserId then
				warn("Local Player Error")
			elseif person.Character:FindFirstChild("HumanoidRootPart") then
				if person.Character.HumanoidRootPart:FindFirstChild(tostring(person)) and LP.Character.HumanoidRootPart:FindFirstChild(tostring(person)) then
					print(tostring(person).." already has tracer")
				else
					if person.Character.HumanoidRootPart:FindFirstChild(tostring(person)) then
						person.Character.HumanoidRootPart:FindFirstChild(tostring(person)):Destroy()
					end

					if LP.Character.HumanoidRootPart:FindFirstChild(tostring(person)) then
						LP.Character.HumanoidRootPart:FindFirstChild(tostring(person)):Destroy()
					end

					local line  = Instance.new("Beam")
					local A0 = Instance.new("Attachment")
					local A1 = Instance.new("Attachment")

					A0.Parent = LP.Character.HumanoidRootPart
					A0.Name = tostring(person)
					A1.Parent = person.Character.HumanoidRootPart
					A1.Name = tostring(person)

					line.Name = "Inset Tracer"
					line.Parent = workspace
					line.Attachment0 = A0
					line.Attachment1 = A1
					line.Width0 = 0.5
					line.Width1 = 0.5
					line.FaceCamera = true
					print("Added Tracer to "..tostring(person))
				end
			else
				warn(tostring(person).." did not have a HumanoidRootPart")
			end
		end
	else
		if target == LP.Name then
			warn("Local Player Error")
		else
			if game:GetService("Players")[target].Character:FindFirstChild("HumanoidRootPart") then
				if game:GetService("Players")[target].Character.HumanoidRootPart:FindFirstChild(target) and LP.Character.HumanoidRootPart:FindFirstChild(target) then
					print(target.." already has a tracer")
				else
					if game:GetService("Players")[target].Character.HumanoidRootPart:FindFirstChild(tostring(target)) then
						game:GetService("Players")[target].Character.HumanoidRootPart:FindFirstChild(tostring(target)):Destroy()
					end

					if LP.Character.HumanoidRootPart:FindFirstChild(tostring(target)) then
						LP.Character.HumanoidRootPart:FindFirstChild(tostring(target)):Destroy()
					end

					local line  = Instance.new("Beam")
					local A0 = Instance.new("Attachment")
					local A1 = Instance.new("Attachment")

					A0.Parent = LP.Character.HumanoidRootPart
					A0.Name = target
					A1.Parent = game:GetService("Players")[target].Character:WaitForChild("HumanoidRootPart")
					A1.Name = target

					line.Name = "Inset Tracer"
					line.Parent = workspace
					line.Attachment0 = A0
					line.Attachment1 = A1
					line.Width0 = 0.5
					line.Width1 = 0.5
					line.FaceCamera = true
					print("Added Tracer to "..target)
				end
			else
				warn(target.." did not have a HumanoidRootPart")
			end
		end
	end
end

function API:RTX()
	for _, child in pairs(game:GetService("Lighting"):GetChildren()) do
		if child:IsA("ColorCorrectionEffect") then
			child:Destroy()
		elseif child:IsA("BloomEffect") then
			child:Destroy()
		elseif child:IsA("SunRaysEffect") then
			child:Destroy()
		elseif child:IsA("BlurEffect") then
			child:Destroy()
		end
	end

	local Blur = Instance.new("BlurEffect")
	local CC = Instance.new("ColorCorrectionEffect")
	local SR = Instance.new("SunRaysEffect")
	local Bloom = Instance.new("BloomEffect")

	Blur.Parent = game:GetService("Lighting")
	Blur.Size = 3
	Blur.Name = "BlurINSET"

	SR.Parent = game:GetService("Lighting")
	SR.Intensity = 0.035
	SR.Spread = 0.4
	SR.Name = "SunRayINSET"

	Bloom.Parent = game:GetService("Lighting")
	Bloom.Intensity = 0.5
	Bloom.Size = 50
	Bloom.Threshold = 0.8
	Bloom.Name = "BloomINSET"

	CC.Parent = game:GetService("Lighting")
	CC.Brightness = 0
	CC.Contrast = 0.2
	CC.Saturation = 0.1
	CC.TintColor = Color3.fromRGB(255, 250, 235)
	CC.Name = "ColorCorrectionINSET"
end

function API:warn(WarnMessage)
	--Values
	local Blinks = 10
	local default = 0
	local delayValue = 0.2

	--Instances
	local Main = Instance.new("ScreenGui")
	local MessageBox = Instance.new("TextLabel")

	--Parenting
	Main.Parent = pGUI
	MessageBox.Parent = Main

	--Properties
	MessageBox.Size = UDim2.new(0.2, 0, 0.1, 0)
	MessageBox.Position = UDim2.new(0.4, 0, 0, 0)
	MessageBox.TextScaled = true
	MessageBox.Text = tostring(WarnMessage)
	MessageBox.TextColor3 = Color3.fromRGB(255, 0, 0)
	MessageBox.BackgroundTransparency = 1
	MessageBox.Font = Enum.Font.SourceSansBold

	while wait() do
		if Blinks > default then
			default = default + 1
			wait(delayValue)
			MessageBox.Visible = false
			wait(delayValue)
			MessageBox.Visible = true
		elseif Blinks == default then
			Main:Destroy()
		end
	end
end

return API
