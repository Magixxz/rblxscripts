local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Magixxz Testing", HidePremium = true, SaveConfig = false, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "Welcome!",
	Content = "Testing!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Tab = Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
OrionLib:Init()
