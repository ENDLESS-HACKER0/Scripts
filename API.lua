local library = {}

local LP = game.Players.LocalPlayer
local pGUI = LP.PlayerGui
local camara = game.Workspace.Camera

function library:TestModule(style)
	
	if style == "fancy" then
		local gui = Instance.new("ScreenGui")
		local lb = Instance.new("TextLabel")

		gui.Parent = pGUI
		lb.Parent = gui
		
		gui.IgnoreGuiInset = true
		
		lb.Size = UDim2.new(1, 0, 0.1, 0)
		lb.Text = "Just a test module"
		lb.TextScaled = true
		lb.BorderSizePixel = 0
		lb.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		lb.BackgroundTransparency = 0.5
		wait(1)
		lb.BackgroundTransparency = 0.6
		wait(0.1)
		lb.BackgroundTransparency = 0.7
		wait(0.1)
		lb.BackgroundTransparency = 0.8
		wait(0.1)
		lb.BackgroundTransparency = 0.9
		wait(0.1)
		gui:Destroy()
	elseif style == "none" then
		local gui = Instance.new("ScreenGui")
		local lb = Instance.new("TextLabel")

		gui.Parent = pGUI
		lb.Parent = gui

		lb.Size = UDim2.new(1, 0, 0.1, 0)
		lb.Text = "Just a test module"
		lb.TextScaled = true
		wait(1)
		gui:Destroy()
	end
end

return library
