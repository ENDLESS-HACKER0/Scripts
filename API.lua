local API = {}

local LP = game.Players.LocalPlayer
local camara = game.Workspace.Camera
local pGUI = LP.PlayerGui
local hum = LP.Character.Humanoid

function API:reset()
	hum.Health = 0
end

return API
