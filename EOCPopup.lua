
local EOCPopup = Instance.new("ScreenGui")
local MainPopup = Instance.new("Frame")
local TopFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")

--Properties:

EOCPopup.Name = "EOCPopup"
EOCPopup.Parent = game.Workspace

MainPopup.Name = "MainPopup"
MainPopup.Parent = EOCPopup
MainPopup.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
MainPopup.Position = UDim2.new(0.312182754, 0, 0.166998073, 0)
MainPopup.Size = UDim2.new(0, 296, 0, 293)

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainPopup
TopFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TopFrame.BorderSizePixel = 0
TopFrame.Size = UDim2.new(0, 296, 0, 54)

TextLabel.Parent = TopFrame
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextLabel.BackgroundTransparency = 100.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 8, 0, 3)
TextLabel.Size = UDim2.new(0, 159, 0, 48)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Era of Encanto GUI"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = TextLabel
TextLabel_2.Active = true
TextLabel_2.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 229, 0, 262)
TextLabel_2.Size = UDim2.new(0, 59, 0, 28)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = " Magixxz"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = TopFrame
TextLabel_3.Active = true
TextLabel_3.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextLabel_3.BackgroundTransparency = 100.000
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 8, 0, 54)
TextLabel_3.Size = UDim2.new(0, 279, 0, 93)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "You might have to rejoin after using this feature."
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = TopFrame
TextLabel_4.Active = true
TextLabel_4.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextLabel_4.BackgroundTransparency = 100.000
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0, 90, 0, 147)
TextLabel_4.Size = UDim2.new(0, 115, 0, 123)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "You can rejoin using the button in misc."
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = TopFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0, 255, 0, 10)
CloseButton.Size = UDim2.new(0, 32, 0, 34)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.TextScaled = true
CloseButton.TextSize = 20.000
CloseButton.TextWrapped = true

-- Scripts:

local function EODYA_fake_script() -- CloseButton.LocalScript 
	local script = Instance.new('LocalScript', CloseButton)

	local Players = game:GetService("Players")
	
	local Player = Players.LocalPlayer
	local PlayerGui = Player:WaitForChild("PlayerGui")
	
	script.Parent.MouseButton1Click:Connect(function()
		PlayerGui:FindFirstChild("EOCPopup"):Destroy()
	
	
	end)
end
coroutine.wrap(EODYA_fake_script)()
