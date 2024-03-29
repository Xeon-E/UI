local Tile = {}
local TilePositions = {
    [1] = UDim2.new(0.125, 0, 0.125, 0),
    [2] = UDim2.new(0.562, 0, 0.125, 0),
    [3] = UDim2.new(0.125, 0, 0.562, 0),
    [4] = UDim2.new(0.562, 0, 0.562, 0)
}

function Tile:New(icon, label, Window)
    if Window.Tiles >= 4 then
        warn("[Sakkz] Max tile limit reached!")
        return
    end
    local Tile = {}

    Tile.Object = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Base%20Objects/Tile.lua", true))()

    Tile.Object.Name = icon
    Tile.Object.Icon.Text = icon
    Tile.Object.Label.Text = label
    Tile.Object.Parent = Window.Object.Container.Main
    Tile.Object.Position = TilePositions[ Window.Tiles ]

    Tile.Content = Instance.new("Frame", Window.Object.Container.Content)
    Tile.Content.Name = icon
    Tile.Content.BackgroundTransparency = 1
    Tile.Content.Size = UDim2.new(1,0,1,0)
    Tile.Content.Visible = false

    Window.Tiles = Window.Tiles + 1

    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Animations/Tile.lua", true))()(Tile, Window)

    function Tile:TabList(position, size, options, callback)
        options = options or {}
        local TabList = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/TabList.lua", true))():New(position, size, options, callback, Tile)

        return TabList
    end

    function Tile:Groupbox(position, size, label)
        local Groupbox = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Groupbox.lua", true))():New(position, size, label, Tile)

        return Groupbox
    end

    return Tile
end

return Tile
