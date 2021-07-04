--// Initialize UI Object /--
Sakkz.UI = {}

--// Create UI Objects /--
function Sakkz:Window()
    local Window = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Window.lua"))():New()

    return Window
end
