local bg = Instance.new("BillboardGui")
	local frame = Instance.new("Frame")
	local LP = game.Players.LocalPlayer

	for _,player in pairs(game.Players:GetPlayers()) do
		if player.UserId == LP.UserId then
			print("Skipped Local Player!")
		elseif player.Character:FindFirstChild("HumanoidRootPart") then
			local copyBG = bg:Clone()
			local copyBG2 = bg:Clone()
			local copyFrame = frame:Clone()
			local copyFrame2 = frame:Clone()
			copyBG.AlwaysOnTop = true
			copyBG2.AlwaysOnTop = true
			copyBG.Parent = player.Character.HumanoidRootPart
			copyBG2.Parent = copyBG.Parent
			copyFrame.Parent = copyBG
			copyFrame2.Parent = copyBG2
			copyFrame.BackgroundTransparency = 0.5
			copyFrame.Size = UDim2.new(1, 0, 1, 0)
			copyFrame2.Size = UDim2.new(1, 0, 1, 0)
			copyBG.Size = UDim2.new(0, 50, 0, 50)
			copyBG2.Size = UDim2.new(0, 10, 0, 10)
			copyBG.Name = "copyBackground"
			copyBG2.Name = "copyBackground2"
			copyFrame.BackgroundTransparency = 0.5
			copyFrame2.BackgroundTransparency = 0.5
			copyFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
			copyFrame2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			copyFrame.BorderSizePixel = 0
			copyFrame2.BorderSizePixel = 0
			print(tostring(player).." has ESP")
		else
			print(tostring(player).." did not have a HumanoidRootPart")
		end
	end
