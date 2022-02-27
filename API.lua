local API = {}

local LP = game.Players.LocalPlayer
local camara = game.Workspace.Camera
local pGUI = LP.PlayerGui
local hum = LP.Character.Humanoid

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

function API:trace(Player)
	if Player == "All" then
		for _,person in pairs(game.Players:GetPlayers()) do
			if person.UserId == LP.UserId then
				print("Skipped Local Player!")
			elseif person.Character:FindFirstChild("HumanoidRootPart") then
				if person.Character.HumanoidRootPart:FindFirstChild("Inset Tracer") then
					print(tostring(person).." already has tracer")
				else
					local line  = Instance.new("Beam")
					local A0 = Instance.new("Attachment")
					local A1 = Instance.new("Attachment")

					A0.Parent = LP.Character.HumanoidRootPart
					A1.Parent = person.Character.HumanoidRootPart
					
					line.Name = "Inset Tracer"
					line.Parent = workspace
					line.Attachment0 = A0
					line.Attachment1 = A1
					line.Width0 = 0.5
					line.Width1 = 0.5
					line.FaceCamera = true
				end
			else
				print(tostring(person).." did not have a HumanoidRootPart")
			end
		end
	else
		if game.Players[Player].Character:FindFirstChild("HumanoidRootPart") then
			if game.Players[Player].Character:FindFirstChild("Inset Tracer") then
				print(Player.." already has a tracer")
			else
				local line  = Instance.new("Beam")
				local A0 = Instance.new("Attachment")
				local A1 = Instance.new("Attachment")

				A0.Parent = LP.Character.HumanoidRootPart
				A1.Parent = game.Players[Player].Character:WaitForChild("HumanoidRootPart")

				line.Name = "Inset Tracer"
				line.Parent = workspace
				line.Attachment0 = A0
				line.Attachment1 = A1
				line.Width0 = 0.5
				line.Width1 = 0.5
				line.FaceCamera = true
			end
		else
			print(Player.." did not have a HumanoidRootPart")
		end
	end
end

return API
