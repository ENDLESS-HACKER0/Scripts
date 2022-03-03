local bg = Instance.new("BillboardGui")
local frame = Instance.new("Frame")
local LP = game.Players.LocalPlayer

for _,player in pairs(game.Players:GetPlayers()) do
	if player.UserId == LP.UserId then
		warn("Local Player Error")
	elseif player.Character:FindFirstChild("HumanoidRootPart") then
		if player.Character.HumanoidRootPart:FindFirstChild("copyBackground") then
			print(tostring(player).." already has ESP")
		else
			if player.Character:FindFirstChild("Head") then
				local copyBG = bg:Clone()
				local copyBG2 = bg:Clone()
				local copyBG3 = bg:Clone()
				local copyFrame = frame:Clone()
				local copyFrame2 = frame:Clone()
				local copyFrame3 = frame:Clone()
				copyBG.AlwaysOnTop = true
				copyBG2.AlwaysOnTop = true
				copyBG3.AlwaysOnTop = false
				copyBG.Parent = player.Character.HumanoidRootPart
				copyBG2.Parent = copyBG.Parent
				copyBG3.Parent = player.Character.Head
				copyFrame.Parent = copyBG
				copyFrame2.Parent = copyBG2
				copyFrame3.Parent = copyBG3
				copyFrame.Size = UDim2.new(1, 0, 1, 0)
				copyFrame2.Size = UDim2.new(1, 0, 1, 0)
				copyFrame3.Size = UDim2.new(1, 0, 1, 0)
				copyBG.Size = UDim2.new(0, 50, 0, 50)
				copyBG2.Size = UDim2.new(0, 10, 0, 10)
				copyBG3.Size = UDim2.new(0, 30, 0, 30)
				copyBG.Name = "copyBackground"
				copyBG2.Name = "copyBackground2"
				copyBG2.Name = "copyBackground3"
				copyFrame.BackgroundTransparency = 0.5
				copyFrame2.BackgroundTransparency = 0.5
				copyFrame3.BackgroundTransparency = 0
				copyFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
				copyFrame2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				copyFrame3.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
				copyFrame.BorderSizePixel = 0
				copyFrame2.BorderSizePixel = 0
				copyFrame3.BorderSizePixel = 0
				print("Added ESP to "..tostring(player))
			else
				warn(tostring(player).." had a HumanoidRootPart but not a Head")
			end
		end
	else
		warn(tostring(player).." did not have a HumanoidRootPart")
	end
end
