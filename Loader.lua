local CoreGui = game:GetService("StarterGui") 
CoreGui:SetCore("SendNotification", {
 Title = "Era of Encanto GUI",
 Text = "Script Loading",
Duration = 5;
})
if not game:IsLoaded() then
    repeat wait() until game:IsLoaded()
end
if game.PlaceId == 8365830854 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Magixxz/rblxscripts/main/EraofEncantoGUI.lua"))()
else
    CoreGui:SetCore("SendNotification", {
 Title = "Game not supported!",
 Text = "This game hasn't been added yet, or was removed.",
Duration = 5;
})
end
local Settings = {
    InviteCode = "6JPVQrC2cW"
}

local HttpService = game:GetService("HttpService")
local RequestFunction

if syn and syn.request then
    RequestFunction = syn.request
elseif request then
    RequestFunction = request
elseif http and http.request then
    RequestFunction = http.request
elseif http_request then
    RequestFunction = http_request
end

local DiscordApiUrl = "http://127.0.0.1:%s/rpc?v=1"

if not RequestFunction then
    return game.Players.LocalPlayer:Kick("Exploit Not Support")
end

for i = 6453, 6464 do
    local DiscordInviteRequest = function()
        local Request = RequestFunction({
            Url = string.format(DiscordApiUrl, tostring(i)),
            Method = "POST",
            Body = HttpService:JSONEncode({
                nonce = HttpService:GenerateGUID(false),
                args = {
                    invite = {code = Settings.InviteCode},
                    code = Settings.InviteCode
                },
                cmd = "INVITE_BROWSER"
            }),
            Headers = {
                ["Origin"] = "https://discord.com",
                ["Content-Type"] = "application/json"
            }
        })
    end
    spawn(DiscordInviteRequest)
end
