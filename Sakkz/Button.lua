local Button = {}

function Button:New(label, callback, Groupbox)
    local Button = {
        Callback = callback
    }
    Button.Object = loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Base Objects/Button.lua"))()()
    Button.Object.Box.Label.Text = label
    Button.Object.Parent = Groupbox.Object
    Button.Object.Position = UDim2.new(0, 0, 0, Groupbox.NextPosition)

    Groupbox.NextPosition = Groupbox.NextPosition + Button.Object.AbsoluteSize.Y
    
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xeon-E/UI/master/Sakkz/Animations/Button.lua"))()(Button)

    return Button
end

return Button
