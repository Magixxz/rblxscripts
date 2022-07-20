local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local magixxz = library.new("Embotic Script Hub", 5012544386)
local themes = {
	Background = Color3.fromRGB(24, 24, 24),
	Glow = Color3.fromRGB(0, 0, 0),
	Accent = Color3.fromRGB(10, 10, 10),
	LightContrast = Color3.fromRGB(20, 20, 20),
	DarkContrast = Color3.fromRGB(14, 14, 14),  
	TextColor = Color3.fromRGB(255, 255, 255)
}

_G.Key = "emboticscripttest"
_G.KeyInput = "string"

function MakeScriptHub()
local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {
 Title = "Embotic Script Hub",
 Text = "Loading...",
Duration = 5;
})
if not game:IsLoaded() then
    repeat wait() until game:IsLoaded()
end
if game.PlaceId == 8365830854 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Magixxz/rblxscripts/main/EraofEncantoGUI.lua"))()
CoreGui:SetCore("SendNotification", {
 Title = "Era of Encanto GUI",
 Text = "Script Loading",
Duration = 5;
})
elseif game.PlaceId == 6755746130 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Magixxz/rblxscripts/main/FruitJuiceTycoonGUI.lua"))()
CoreGui:SetCore("SendNotification", {
 Title = "Fruit Juice Tycoon GUI",
 Text = "Script Loading",
Duration = 5;
})
else
    CoreGui:SetCore("SendNotification", {
 Title = "Game not supported!",
 Text = "This game hasn't been added yet, or was removed.",
Duration = 5;
})
end

end


-- first page
local page = magixxz:addPage("Key", 5012540623)
local section1 = page:addSection("Embotic Key System")
section1:addTextbox("Enter Key", "Key", function(Value)	
 _G.KeyInput = Value
end)
section1:addButton("Check Key", function()
if _G.KeyInput == _G.Key then
    MakeScriptHub()
    magixxz:toggle()
else 
magixxz:Notify("Incorrect Key", "The key was incorrect.")
end
end)
section1:addButton("Copy Key Link", function()

end)
local page = magixxz:addPage("Credits", 5012544693)
local section1 = page:addSection("Owner")
local section2 = page:addSection("Co-Owner")
section1:addButton("Magixxz#3038")
section2:addButton("Dedshoxts")

