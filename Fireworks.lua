--Fires
local FireOne = Instance.new("Fire")
local FireTwo = Instance.new("Fire")
local FireThree = Instance.new("Fire")
local FireFour = Instance.new("Fire")

--Firework Body
local left = Instance.new("Part")
local right = Instance.new("Part")
local front = Instance.new("Part")
local back = Instance.new("Part")

--Fire Part
local LFP = Instance.new("Part")
local RFP = Instance.new("Part")
local FFP = Instance.new("Part")
local BFP = Instance.new("Part")

--Sparkle
local sparkleL = Instance.new("ParticleEmitter")
local sparkleR = Instance.new("ParticleEmitter")
local sparkleF = Instance.new("ParticleEmitter")
local sparkleB = Instance.new("ParticleEmitter")

--Sparkle block
local sparkleLBlock = Instance.new("Part")
local sparkleRBlock = Instance.new("Part")
local sparkleFBlock = Instance.new("Part")
local sparkleBBlock = Instance.new("Part")

--vars
local player = game:GetService("Players").LocalPlayer
local char = player.Character.HumanoidRootPart

--Fire Names
FireOne.Name = "Fire1"
FireTwo.Name = "Fire2"
FireThree.Name = "Fire3"
FireFour.Name = "Fire4"

--Names
left.Name = "Left Firework"
right.Name = "Right Firework"
front.Name = "Front Firework"
back.Name = "Back Firework"

LFP.Name = "Left Firework's Fire"
RFP.Name = "Right Firework's Fire"
FFP.Name = "Front Firework's Fire"
BFP.Name = "Back Firework's Fire"

--Parents
left.Parent = game.Workspace
right.Parent = game.Workspace
front.Parent = game.Workspace
back.Parent = game.Workspace

LFP.Parent = left
RFP.Parent = right
FFP.Parent = front
BFP.Parent = back

--Fire Parts
FireOne.Parent = LFP
FireTwo.Parent = RFP
FireThree.Parent = FFP
FireFour.Parent = BFP

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

LFP.CanCollide = false
RFP.CanCollide = false
FFP.CanCollide = false
BFP.CanCollide = false

--Anchoring
left.Anchored = true
right.Anchored = true
front.Anchored = true
back.Anchored = true

LFP.Anchored = true
RFP.Anchored = true
FFP.Anchored = true
BFP.Anchored = true

--Position
left.Position = char.Position + Vector3.new(math.random(10, 15), 0, 0)
right.Position = char.Position - Vector3.new(math.random(10, 15), 0, 0)
front.Position = char.Position + Vector3.new(0, 0, math.random(10, 15))
back.Position = char.Position - Vector3.new(0, 0, math.random(10, 15))

LFP.Position = left.Position - Vector3.new(0, 2, 0)
RFP.Position = right.Position - Vector3.new(0, 2, 0)
FFP.Position = front.Position - Vector3.new(0, 2, 0)
BFP.Position = back.Position - Vector3.new(0, 2, 0)

--sizing
left.Size = Vector3.new(1, 3, 1)
right.Size = Vector3.new(1, 3, 1)
front.Size = Vector3.new(1, 3, 1)
back.Size = Vector3.new(1, 3, 1)

LFP.Size = Vector3.new(1, 1, 1)
RFP.Size = Vector3.new(1, 1, 1)
FFP.Size = Vector3.new(1, 1, 1)
BFP.Size = Vector3.new(1, 1, 1)

--Transparency
LFP.Transparency = 1
RFP.Transparency = 1
FFP.Transparency = 1
BFP.Transparency = 1

--Painting
left.Color = Color3.fromRGB(255, 3, 28)
right.Color = Color3.fromRGB(255, 3, 28)
front.Color = Color3.fromRGB(255, 3, 28)
back.Color = Color3.fromRGB(255, 3, 28)

--Animation
wait(1)

local loop = 0

while wait() do

	if loop < 50 then
		left.Position = left.Position + Vector3.new(0, 0.2, 0)
		right.Position = right.Position + Vector3.new(0, 0.2, 0)
		front.Position = front.Position + Vector3.new(0, 0.2, 0)
		back.Position = back.Position + Vector3.new(0, 0.2, 0)

		LFP.Position = left.Position - Vector3.new(0, 2, 0)
		RFP.Position = right.Position - Vector3.new(0, 2, 0)
		FFP.Position = front.Position - Vector3.new(0, 2, 0)
		BFP.Position = back.Position - Vector3.new(0, 2, 0)

		loop = loop + 1

		wait(0.1)
	elseif loop == 50 then
		--Unlock
		sparkleLBlock.Locked = false
		sparkleRBlock.Locked = false
		sparkleFBlock.Locked = false
		sparkleBBlock.Locked = false

		--Parenting Effect
		sparkleL.Parent = sparkleLBlock
		sparkleR.Parent = sparkleRBlock
		sparkleF.Parent = sparkleFBlock
		sparkleB.Parent = sparkleBBlock

		--Parenting Part
		sparkleLBlock.Parent = game:GetService("Workspace")
		sparkleRBlock.Parent = game:GetService("Workspace")
		sparkleFBlock.Parent = game:GetService("Workspace")
		sparkleBBlock.Parent = game:GetService("Workspace")

		--Anchoring Part
		sparkleLBlock.Anchored = true
		sparkleRBlock.Anchored = true
		sparkleFBlock.Anchored = true
		sparkleBBlock.Anchored = true

		--Positioning Part
		sparkleLBlock.Position = left.Position + Vector3.new(0, 2, 0)
		sparkleRBlock.Position = right.Position + Vector3.new(0, 2, 0)
		sparkleFBlock.Position = front.Position + Vector3.new(0, 2, 0)
		sparkleBBlock.Position = back.Position + Vector3.new(0, 2, 0)

		--Sizing
		sparkleLBlock.Size = Vector3.new(1, 1, 1)
		sparkleRBlock.Size = Vector3.new(1, 1, 1)
		sparkleFBlock.Size = Vector3.new(1, 1, 1)
		sparkleBBlock.Size = Vector3.new(1, 1, 1)

		--Sparkle Controls
		local colorLeft = ColorSequence.new{
			ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 100)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 100))
		}
		local colorRight = ColorSequence.new{
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
		}
		local colorFront = ColorSequence.new{
			ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 200)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 200))
		}
		local colorback = ColorSequence.new{
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 0)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))
		}

		local speed = NumberRange.new(10)
		local lifeTime = NumberRange.new(1)
		local Rate = 100
		local timeScale = 0.45

		--Effect Attributes
		sparkleL.Color = colorLeft
		sparkleR.Color = colorRight
		sparkleF.Color = colorFront
		sparkleB.Color = colorback

		sparkleL.Speed = speed
		sparkleR.Speed = speed
		sparkleF.Speed = speed
		sparkleB.Speed = speed

		sparkleL.Shape = "Sphere"
		sparkleR.Shape = "Sphere"
		sparkleF.Shape = "Sphere"
		sparkleB.Shape = "Sphere"

		sparkleL.Lifetime = lifeTime
		sparkleR.Lifetime = lifeTime
		sparkleF.Lifetime = lifeTime
		sparkleB.Lifetime = lifeTime

		sparkleL.Rate = Rate
		sparkleR.Rate = Rate
		sparkleF.Rate = Rate
		sparkleB.Rate = Rate

		sparkleL.TimeScale = timeScale
		sparkleR.TimeScale = timeScale
		sparkleF.TimeScale = timeScale
		sparkleB.TimeScale = timeScale

		--Invis
		left:Destroy()
		right:Destroy()
		front:Destroy()
		back:Destroy()

		sparkleLBlock.Transparency = 1
		sparkleRBlock.Transparency = 1
		sparkleFBlock.Transparency = 1
		sparkleBBlock.Transparency = 1

		sparkleLBlock.CanCollide = false
		sparkleRBlock.CanCollide = false
		sparkleFBlock.CanCollide = false
		sparkleBBlock.CanCollide = false

		--Rest of script
		wait(2)

		sparkleL.Enabled = false
		sparkleR.Enabled = false
		sparkleF.Enabled = false
		sparkleB.Enabled = false

		wait(2)

		sparkleLBlock:Destroy()
		sparkleRBlock:Destroy()
		sparkleFBlock:Destroy()
		sparkleBBlock:Destroy()
	end
end
