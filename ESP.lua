--API
local InsetAPI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ENDLESS-HACKER0/Scripts/main/API.lua", true))()

--Variables
local bg = Instance.new("BillboardGui")
local frame = Instance.new("Frame")
local LP = game:GetService("Players").LocalPlayer

--Main Function
function AddESP(player, team)
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
	copyFrame.Name = "TeamColorFrame"
	copyBG.Name = "copyBackground"
	copyBG2.Name = "copyBackground2"
	copyBG2.Name = "copyBackground3"
	copyFrame.BackgroundTransparency = 0.5
	copyFrame2.BackgroundTransparency = 0.5
	copyFrame3.BackgroundTransparency = 0
	if team == "Teammate" then
		copyFrame.BackgroundColor3 = Color3.fromRGB(0, 255, 106)
	elseif team == "Enemy" then
		copyFrame.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
	elseif team == "No Team" then
		copyFrame.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
	end
	copyFrame2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	copyFrame3.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
	copyFrame.BorderSizePixel = 0
	copyFrame2.BorderSizePixel = 0
	copyFrame3.BorderSizePixel = 0
end

--Main
for _,player in pairs(game.Players:GetPlayers()) do
	if player.UserId == LP.UserId then
		warn("Local Player Error")
	elseif player.Character:FindFirstChild("HumanoidRootPart") then
		if player.Character.HumanoidRootPart:FindFirstChild("copyBackground") then
			print("Updating "..tostring(player).."'s ESP")
			if InsetAPI:TeamCheck(player) == "Teammate" then
				player.Character.HumanoidRootPart.copyBackground.TeamColorFrame.Color = Color3.fromRGB(0, 255, 106)
			elseif InsetAPI:TeamCheck(player) == "Enemy" then
				player.Character.HumanoidRootPart.copyBackground.TeamColorFrame.Color = Color3.fromRGB(100, 0, 0)
			elseif InsetAPI:TeamCheck(player) == "No Team" then
				player.Character.HumanoidRootPart.copyBackground.TeamColorFrame.Color = Color3.fromRGB(0, 150, 0)
			end
		end
		if player.Character:FindFirstChild("Head") then
			if InsetAPI:TeamCheck(player) ~= "No Team" then
				if InsetAPI:TeamCheck(player) == "Enemy" then
					AddESP(player, "Enemy")
					print("Added Other Team ESP to "..tostring(player))
				elseif InsetAPI:TeamCheck(player) == "Teammate" then
					AddESP(player, "Teammate")
					print("Added Team ESP to "..tostring(player))
				end
			else
				AddESP(player, "No Team")
				print("Added ESP to "..tostring(player))
			end
		else
			warn(tostring(player).." had a HumanoidRootPart but not a Head")
		end
	else
		warn(tostring(player).." did not have a HumanoidRootPart")
	end
end
