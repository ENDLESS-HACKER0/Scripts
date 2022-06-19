local API = {}

local TS = game:GetService("TeleportService")
local players = game:GetService('Players')
local lighting = game:GetService('Lighting')
local LP = players.LocalPlayer
local camara = game:GetService("Workspace").Camera
local pGUI = LP.PlayerGui
local hum = LP.Character:WaitForChild("Humanoid")

function API:reset()
	hum.Health = 0
end

function API:fire(color, color2)
	local main = Instance.new('Part')
	local fire = Instance.new("Fire")
	local fire_Light = Instance.new('PointLight')
	local weld = Instance.new('Weld')

	main.Parent = LP.Character:WaitForChild("Head")
	main.Transparency = 1
	main.Size = Vector3.new(1, 1, 1)
	main.Massless = true
	main.Position = LP.Character:WaitForChild("Head").Position
	main.Name = "Inset Fire"

	fire.Parent = main
	fire.Color = color
	fire.SecondaryColor = color2

	fire_Light.Parent = main
	fire_Light.Color = color

	weld.Part0 = LP.Character:WaitForChild("Head")
	weld.Part1 = main
	weld.Parent = main
end

function API:unfire()
	LP.Character:WaitForChild("Head"):WaitForChild("Inset Fire"):Destroy()
end

function API:ToGame(place)
	TS:Teleport(place, LP)
end

function API:trace(target)
	if target == "All" then
		for _,person in pairs(players:GetPlayers()) do
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
			if players[target].Character:FindFirstChild("HumanoidRootPart") then
				if players[target].Character.HumanoidRootPart:FindFirstChild(target) and LP.Character.HumanoidRootPart:FindFirstChild(target) then
					print(target.." already has a tracer")
				else
					if players[target].Character.HumanoidRootPart:FindFirstChild(tostring(target)) then
						players[target].Character.HumanoidRootPart:FindFirstChild(tostring(target)):Destroy()
					end

					if LP.Character.HumanoidRootPart:FindFirstChild(tostring(target)) then
						LP.Character.HumanoidRootPart:FindFirstChild(tostring(target)):Destroy()
					end

					local line  = Instance.new("Beam")
					local A0 = Instance.new("Attachment")
					local A1 = Instance.new("Attachment")

					A0.Parent = LP.Character.HumanoidRootPart
					A0.Name = target
					A1.Parent = players[target].Character.HumanoidRootPart
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
	lighting.ShadowSoftness = 0
	lighting.GlobalShadows = true

	for _, child in pairs(lighting:GetChildren()) do
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

	for _, child in pairs(workspace.Terrain:GetChildren()) do
		if child:IsA("Clouds") then
			child:Destroy()
		end
	end

	local Clouds = Instance.new("Clouds")
	local Blur = Instance.new("BlurEffect")
	local CC = Instance.new("ColorCorrectionEffect")
	local SR = Instance.new("SunRaysEffect")
	local Bloom = Instance.new("BloomEffect")

	Clouds.Parent = workspace.Terrain
	Clouds.Cover = 0.6
	Clouds.Density = 1
	Clouds.Name = "CloudsINSET"
	Clouds.Color = Color3.fromRGB(255, 255, 255)

	Blur.Parent = lighting
	Blur.Size = 3
	Blur.Name = "BlurINSET"

	SR.Parent = lighting
	SR.Intensity = 0.035
	SR.Spread = 0.4
	SR.Name = "SunRayINSET"

	Bloom.Parent = lighting
	Bloom.Intensity = 0.5
	Bloom.Size = 50
	Bloom.Threshold = 0.8
	Bloom.Name = "BloomINSET"

	CC.Parent = lighting
	CC.Brightness = 0
	CC.Contrast = 0.2
	CC.Saturation = 0.1
	CC.TintColor = Color3.fromRGB(255, 255, 255)
	CC.Name = "ColorCorrectionINSET"
end

function API:SayChildren(parent)
	warn('ClassName : Name')

	for _,child in pairs(parent:GetChildren()) do
		if game.Players:FindFirstChild(child.Name) then
			print('Player-Character : '..child.Name)
		else
			print(child.ClassName..' : '..child.Name)
		end
	end
end

function API:TeamCheck(plr)
	if plr.Team ~= nil then
		if plr.Team ~= LP.Team then
			return 'Enemy'
		end
		if plr.Team == LP.Team then
			return 'Teammate'
		end
	elseif plr.Team == nil then
		return 'No Team'
	end
end

function API:skybox(up, down, front, left, back, right)
	if lighting:FindFirstChild("Inset Client Skybox") then
		lighting:FindFirstChild("Inset Client Skybox"):Destroy()
	end

	local skybox = Instance.new("Sky")

	skybox.Parent = lighting
	skybox.Name = "Inset Client Skybox"
	skybox.SkyboxBk = "http://www.roblox.com/asset/?id="..tonumber(back)
	skybox.SkyboxFt = "http://www.roblox.com/asset/?id="..tonumber(front)
	skybox.SkyboxLf = "http://www.roblox.com/asset/?id="..tonumber(left)
	skybox.SkyboxDn = "http://www.roblox.com/asset/?id="..tonumber(down)
	skybox.SkyboxRt = "http://www.roblox.com/asset/?id="..tonumber(right)
	skybox.SkyboxUp = "http://www.roblox.com/asset/?id="..tonumber(up)
end

return API
