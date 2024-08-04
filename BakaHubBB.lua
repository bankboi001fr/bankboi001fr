--Source by noob!!!

local KeySystem = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Hello = Instance.new("TextLabel")
local Hub = Instance.new("TextLabel")
local Baka = Instance.new("TextLabel")
local EnterKey = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Frame = Instance.new("Frame")

--Properties:

KeySystem.Name = "KeySystem"
KeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
KeySystem.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = KeySystem
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.163187891, 0, 0.200652525, 0)
MainFrame.Size = UDim2.new(0.661290288, 0, 0.610114217, 0)

UICorner.CornerRadius = UDim.new(0.0500000007, 0)
UICorner.Parent = MainFrame

Hello.Name = "Hello"
Hello.Parent = MainFrame
Hello.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hello.BackgroundTransparency = 1.000
Hello.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hello.BorderSizePixel = 0
Hello.Position = UDim2.new(0.023391813, 0, 0.913612545, 0)
Hello.Size = UDim2.new(0.390350878, 0, 0.0863874331, 0)
Hello.Font = Enum.Font.Unknown
Hello.Text = ""
Hello.TextColor3 = Color3.fromRGB(255, 255, 255)
Hello.TextScaled = true
Hello.TextSize = 14.000
Hello.TextWrapped = true
Hello.TextXAlignment = Enum.TextXAlignment.Left

Hub.Name = "Hub"
Hub.Parent = MainFrame
Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Hub.BackgroundTransparency = 1.000
Hub.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hub.BorderSizePixel = 0
Hub.Position = UDim2.new(0.0321637429, 0, 0.31937173, 0)
Hub.Size = UDim2.new(0.290935665, 0, 0.13874346, 0)
Hub.Font = Enum.Font.Unknown
Hub.Text = "Hub"
Hub.TextColor3 = Color3.fromRGB(255, 255, 255)
Hub.TextScaled = true
Hub.TextSize = 14.000
Hub.TextWrapped = true

Baka.Name = "Baka"
Baka.Parent = MainFrame
Baka.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Baka.BackgroundTransparency = 1.000
Baka.BorderColor3 = Color3.fromRGB(0, 0, 0)
Baka.BorderSizePixel = 0
Baka.Position = UDim2.new(0.0321637429, 0, 0.0994764417, 0)
Baka.Size = UDim2.new(0.307017535, 0, 0.267015696, 0)
Baka.Font = Enum.Font.Unknown
Baka.Text = "Baka"
Baka.TextColor3 = Color3.fromRGB(255, 255, 255)
Baka.TextScaled = true
Baka.TextSize = 14.000
Baka.TextWrapped = true

EnterKey.Name = "EnterKey"
EnterKey.Parent = MainFrame
EnterKey.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
EnterKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
EnterKey.BorderSizePixel = 0
EnterKey.Position = UDim2.new(0.561403513, 0, 0.74345547, 0)
EnterKey.Size = UDim2.new(0.399122804, 0, 0.130890056, 0)
EnterKey.Font = Enum.Font.Unknown
EnterKey.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
EnterKey.PlaceholderText = "Enter You Key Get In Discord https://discord.gg/Eh8w5VjhMh"
EnterKey.Text = ""
EnterKey.TextColor3 = Color3.fromRGB(255, 255, 255)
EnterKey.TextScaled = true
EnterKey.TextSize = 36.000
EnterKey.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0.100000001, 0)
UICorner_2.Parent = EnterKey

Frame.Parent = MainFrame
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-4.37841905e-08, 0, 0, 0)
Frame.Size = UDim2.new(0, 697, 0, 37)

-- Scripts:

local function DNEXZD_fake_script()
	local script = Instance.new('LocalScript', Hello)

	local Players = game.Players.LocalPlayer
	local playerName = tostring(Players.Name)
	local textLabel = script.Parent
	
	local message = "Hello " .. playerName
	local delayTime = 0.1 
	
	local function typeEffect(label, text)
		label.Text = ""
		for i = 1, #text do
			label.Text = string.sub(text, 1, i)
			task.wait(delayTime)
		end
	end
	
	task.wait(1)
	typeEffect(textLabel, message)
	
end
coroutine.wrap(DNEXZD_fake_script)()
local function YMUI_fake_script() -- EnterKey.LocalScript 
	local script = Instance.new('LocalScript', EnterKey)

	local textBox = script.Parent
	local frame = textBox.Parent
	local correctKey = "scripthubopfrfr"
	local TweenService = game:GetService("TweenService")
	
	local function moveFrameDown()
		local newPosition = UDim2.new(frame.Position.X.Scale, frame.Position.X.Offset, frame.Position.Y.Scale + 1, frame.Position.Y.Offset)
		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
		local tween = TweenService:Create(frame, tweenInfo, {Position = newPosition})
		tween:Play()
	end
	
	textBox.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local inputKey = textBox.Text
			if inputKey == correctKey then
				textBox.Text = ""
				textBox.PlaceholderText = "Correct!"
				moveFrameDown()
				task.wait(1)
				loadstring(game:HttpGet("https://raw.githubusercontent.com/bankboi001fr/bankboi001fr/main/NotGoodBBScript.Lua"))()
			else
				textBox.Text = ""
				textBox.PlaceholderText = "Incorrect!"
				task.wait(1)
				textBox.PlaceholderText = "Get Key In Discord https://discord.gg/Eh8w5VjhMh"
			end
		end
	end)
	
end
coroutine.wrap(YMUI_fake_script)()
local function FLRX_fake_script() -- Frame.DraggableTopbar 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	local topbar = script.Parent
	local mainFrame = topbar.Parent
	
	local dragging = false
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
	    local delta = input.Position - dragStart
	    local newPosition = UDim2.new(
	        startPos.X.Scale,
	        startPos.X.Offset + delta.X,
	        startPos.Y.Scale,
	        startPos.Y.Offset + delta.Y
	    )
	    
	    local tween = TweenService:Create(mainFrame, TweenInfo.new(0.1), {Position = newPosition})
	    tween:Play()
	end
	
	topbar.InputBegan:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseButton1 then
	        dragging = true
	        dragStart = input.Position
	        startPos = mainFrame.Position
	        
	        input.Changed:Connect(function()
	            if input.UserInputState == Enum.UserInputState.End then
	                dragging = false
	            end
	        end)
	    end
	end)
	
	topbar.InputChanged:Connect(function(input)
	    if input.UserInputType == Enum.UserInputType.MouseMovement then
	        dragInput = input
	    end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
	    if dragging and input == dragInput then
	        update(input)
	    end
	end)
end
coroutine.wrap(FLRX_fake_script)()
