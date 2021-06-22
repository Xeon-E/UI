local TweenService = game:GetService("TweenService")
local Checkbox = {}

function Checkbox:New(label, callback, Groupbox)
    local Checkbox = {
        Value = false,
        Callback = callback
    }
    Checkbox.Object = Sakkz.require("Sakkz\\Base Objects\\Checkbox.lua")()
    Checkbox.Object.Label.Text = label
    Checkbox.Object.Parent = Groupbox.Object
    Checkbox.Object.Position = UDim2.new(0, 0, 0, Groupbox.NextPosition)

    Sakkz.require("Sakkz\\Animations\\Checkbox.lua")(Checkbox)

    Groupbox.NextPosition = Groupbox.NextPosition + Checkbox.Object.AbsoluteSize.Y

    function Checkbox:SetValue(Value)
        if Value then
            TweenService:Create( Checkbox.Object.Box, TweenInfo.new(0.3), {
                ImageColor3 = Color3.fromRGB(255, 0, 127)
            } ):Play()
        else
            TweenService:Create( Checkbox.Object.Box, TweenInfo.new(0.3), {
                ImageColor3 = Color3.fromRGB(26, 26, 26)
            } ):Play()
        end
        Checkbox.Value = Value
        Checkbox.Callback(value) 
    end

    return Checkbox
end

return Checkbox