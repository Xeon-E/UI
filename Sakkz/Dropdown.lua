local Dropdown = {}

function Dropdown:New(label, options, callback, Groupbox)
    local Dropdown = {
        Value = options[1],
        IsOpen = false,
        Callback = callback
    }

    Dropdown.Object = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Base Objects/Dropdown.lua"))()()
    Dropdown.Object.Parent = Groupbox.Object
    Dropdown.Object.Value.Text = Dropdown.Value
    Dropdown.Object.Label.Text = label
    Dropdown.Object.Position = UDim2.new(0, 0, 0, Groupbox.NextPosition)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Animations/Dropdown.lua"))()(Dropdown)

    Groupbox.NextPosition = Groupbox.NextPosition + Dropdown.Object.AbsoluteSize.Y
    
    for index, Option in next, options do
        local Object = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Base Objects/DropdownItem.lua"))()()
        Object.Parent = Dropdown.Object.Options
        Object.Label.Text = Option

        if index == 1 then
            Object.Label.TextColor3 = Color3.fromRGB(255, 0, 127)
        end

        loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Animations/DropdownItem.lua"))()(Object, Dropdown)
    end

    return Dropdown
end

return Dropdown
