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

return API
