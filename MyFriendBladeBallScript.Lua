local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local debounce = false
local cooldown = 0.5  -- Adjust cooldown time as needed (in seconds)

-- Function for attack action
local function performAttack()
    if debounce then return end
    debounce = true

    -- Perform action (e.g., attack)
    humanoid:Move(Vector3.new(0, 0, 10))  -- Example movement action

    task.wait(cooldown)
    debounce = false
end

-- Create GUI elements
local gui = Instance.new("ScreenGui")
gui.IgnoreGuiInset = true
gui.DisplayOrder = 10
gui.Parent = game.Players.LocalPlayer.PlayerGui

local button = Instance.new("TextButton")
button.Text = "Attack"
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.8, -25)  -- Position near the bottom center
button.Parent = gui

-- Adjust button appearance for mobile
button.TextScaled = true  -- Allow text to resize based on button size

-- Function to handle attack action
local function onButtonClicked()
    performAttack()
end

-- Connect button click event
button.MouseButton1Click:Connect(onButtonClicked)

-- Adjust GUI based on screen size
local function onScreenSizeChanged()
    -- Example: Adjust button position for different screen sizes or orientations
    local screenSize = guiService:GetScreenResolution()
    if screenSize.X < 800 then
        button.Position = UDim2.new(0.5, -100, 0.9, -25)
    else
        button.Position = UDim2.new(0.5, -100, 0.8, -25)
    end
end

-- Connect screen size change event
local guiService = game:GetService("GuiService")
guiService.Changed:Connect(function()
    onScreenSizeChanged()
end)

-- Initial call to adjust GUI on script startup
onScreenSizeChanged()

-- Mouse input handling (left mouse button for attack)
mouse.Button1Down:Connect(function()
    performAttack()
end)
