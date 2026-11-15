local Loadstring = loadstring or getgenv().loadstring or getfenv().loadstring
if not Loadstring then return end

local success, GameScript = pcall(function()
    return game:HttpGet("https://raw.githubusercontent.com/marblack-o/TokraScript/main/Games/" .. tostring(game.PlaceId) .. ".luau")
end)

if success and GameScript then
    Loadstring(GameScript)()
else
    warn("[Tokra] Falló la descarga del script")
end
