local Window = {}
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

function Window:New()
    local Window = {}

    Window.Object = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sakkzz/UI/master/Sakkz/Base%20Objects/Window.lua", true))()
    Window.Object.Parent = game.CoreGui

    Window.Tiles = 1

    function Window:Tile(icon, label)
        local Tile = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sakkzz/UI/master/Sakkz/Tile.lua", true))():New(icon, label, Window)
    
        return Tile
    end

    return Window
end

return Window
