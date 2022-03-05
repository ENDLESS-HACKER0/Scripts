local API = {}

local LP = game.Players.LocalPlayer
local camara = game.Workspace.Camera
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
		for _,person in pairs(game.Players:GetPlayers()) do
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
			if game.Players[target].Character:FindFirstChild("HumanoidRootPart") then
				if game.Players[target].Character.HumanoidRootPart:FindFirstChild(target) and LP.Character.HumanoidRootPart:FindFirstChild(target) then
					print(target.." already has a tracer")
				else
					if game.Players[target].Character.HumanoidRootPart:FindFirstChild(tostring(target)) then
						game.Players[target].Character.HumanoidRootPart:FindFirstChild(tostring(target)):Destroy()
					end

					if LP.Character.HumanoidRootPart:FindFirstChild(tostring(target)) then
						LP.Character.HumanoidRootPart:FindFirstChild(tostring(target)):Destroy()
					end

					local line  = Instance.new("Beam")
					local A0 = Instance.new("Attachment")
					local A1 = Instance.new("Attachment")

					A0.Parent = LP.Character.HumanoidRootPart
					A0.Name = target
					A1.Parent = game.Players[target].Character:WaitForChild("HumanoidRootPart")
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
	while wait(0.5) do
		game.Lighting.ClockTime = 0
		game.Lighting.ShadowSoftness = 0
		game.Lighting.Brightness = 0
		game.Lighting = "Future"
		if LP.Character:FindFirstChild("HumanoidRootPart") then
			if LP.Character.HumanoidRootPart:FindFirstChild("RTX Light Inset") then
				LP.Character.HumanoidRootPart["RTX Light Inset"]:Destroy()
				
			else
				local light = Instance.new("PointLight")
				
				light.Name = "RTX Light Inset"
				light.Parent = LP.Character.HumanoidRootPart
				light.Brightness = 0.75
				light.Color = Color3.fromRGB(255, 255, 255)
				light.Range = 10
				light.Shadows = true
			end
		end
	end
end

return API
