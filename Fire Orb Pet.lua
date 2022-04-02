--Fires
local fireleft = Instance.new("Fire")
local fireright = Instance.new("Fire")
local firefront = Instance.new("Fire")
local fireback = Instance.new("Fire")

--Workspace Fire
fireleft.Parent = game:GetService("Workspace")
fireright.Parent = game:GetService("Workspace")
firefront.Parent = game:GetService("Workspace")
fireback.Parent = game:GetService("Workspace")

--Fire Names
fireleft.Name = "fireleft"
fireright.Name = "fireright"
firefront.Name = "firefront"
fireback.Name = "fireback"

--Welds
local thingleft = Instance.new("Weld")
local thingright = Instance.new("Weld")
local thingfront = Instance.new("Weld")
local thingback = Instance.new("Weld")

--Weld Parenting
thingleft.Parent = game:GetService("Workspace")
thingright.Parent = game:GetService("Workspace")
thingfront.Parent = game:GetService("Workspace")
thingback.Parent = game:GetService("Workspace")

--Blocks
local left = Instance.new("Part")
local right = Instance.new("Part")
local front = Instance.new("Part")
local back = Instance.new("Part")

--vars
local player = game:GetService("Players").LocalPlayer
local char = player.Character.HumanoidRootPart

--Names
left.Name = "left"
right.Name = "right"
front.Name = "front"
back.Name = "back"

--Parents
left.Parent = game:GetService("Workspace")
right.Parent = game:GetService("Workspace")
front.Parent = game:GetService("Workspace")
back.Parent = game:GetService("Workspace")

--Part Invis
left.Transparency = 1
right.Transparency = 1
front.Transparency = 1
back.Transparency = 1

--Fire Parts
fireleft.Parent = left
fireright.Parent = right
firefront.Parent = front
fireback.Parent = back

--Shape Parts
left.Shape = "Ball"
right.Shape = "Ball"
front.Shape = "Ball"
back.Shape = "Ball"

--Surface
left.BottomSurface = "Smooth"
left.TopSurface = "Smooth"
right.BottomSurface = "Smooth"
right.TopSurface = "Smooth"
front.BottomSurface = "Smooth"
front.TopSurface = "Smooth"
back.BottomSurface = "Smooth"
back.TopSurface = "Smooth"

--Collision
left.CanCollide = false
right.CanCollide = false
front.CanCollide = false
back.CanCollide = false

--Connecting/Main Script
thingleft.Part0 = char
thingleft.Part1 = left
thingright.Part0 = char
thingright.Part1 = right
thingfront.Part0 = char
thingfront.Part1 = front
thingback.Part0 = char
thingback.Part1 = back

--Position
left.Position = char.Position + Vector3.new(5, 0, 0)
right.Position = char.Position + Vector3.new(-5, 0, 0)
front.Position = char.Position + Vector3.new(0, 0, 5)
back.Position = char.Position + Vector3.new(0, 0, -5)

--sizing
left.Size = Vector3.new(1, 1, 1)
right.Size = Vector3.new(1, 1, 1)
front.Size = Vector3.new(1, 1, 1)
back.Size = Vector3.new(1, 1, 1)

--Weld Names
thingleft.Name = "left"
thingright.Name = "right"
thingfront.Name = "front"
thingback.Name = "back"
