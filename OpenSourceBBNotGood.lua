-- Configurable variables
local PawsConfig = {
    AutoParry = true,
    PingBased = true,
    PingBasedOffset = 0.1,
    DistanceToParry = 1,
    BallSpeedCheck = true,
    BaseDistance = 1,
    AntiCurveStrength = 0.45, -- Adjustable value
    PingThreshold = 400, -- Ping threshold to start spamming
    SpamDelay = 0.05, -- Delay between spam clicks
    StablePingThreshold = 250, -- Ping threshold to stop spamming
    SpamRateMultiplier = 5, -- Multiplier for spam rate based on distance
    MinSpamRate = 0.1, -- Minimum spam rate
    MaxSpamRate = 0.5, -- Maximum spam rate
    SpeedThreshold = 50, -- Speed threshold to start spamming
    }
    
    -- Services and variables
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
    local ReplicatedPaw = game:GetService("ReplicatedStorage")
    local UserInputService = game:GetService("UserInputService")
    local VirtualInputManager = game:GetService("VirtualInputManager")
    local RunService = game:GetService("RunService")
    local Stats = game:GetService("Stats")
    
    print("BAKA IS RUN")
    -- Functions
    
    local function getMousePosition()
    return UserInputService:GetMouseLocation()
    end
    
local function simulateMouseClick()
    -- Check for Mouse Input
    local mousePosition = getMousePosition()
    if mousePosition and isMouseButtonPressed(0) then -- Check for left mouse button
        VirtualInputManager:SendMouseButtonEvent(mousePosition.X, mousePosition.Y, 0, true, game, 0)
        task.wait()
        VirtualInputManager:SendMouseButtonEvent(mousePosition.X, mousePosition.Y, 0, false, game, 0)
        return -- Exit function to avoid redundant tap simulation
    end

    -- Check for Touch Input (if mouse input was not detected)
    local touchPosition = getTouchPosition() -- Placeholder function
    if touchPosition then
        local screenPosition = convertToScreenSpace(touchPosition) 
        VirtualInputManager:SendTouchInputBegin(0, screenPosition.X, screenPosition.Y, game)
        task.wait()
        VirtualInputManager:SendTouchInputEnd(0, screenPosition.X, screenPosition.Y, game)
    end
end

    
    local function isTarget()
    return Player.Character:FindFirstChild("Highlight")
    end
    
    local function findBall()
    local balls = workspace:WaitForChild("Balls", 9e9)
    if not balls then return nil end
    for _, ball in pairs(balls:GetChildren()) do
    if ball:GetAttribute("realBall") == true then
    return ball
    end
    end
    return nil
    end
    
    local function predictCurvedPosition(ball, time)
    if time == 0 then return ball.Position end
    local angularVelocity = ball.AssemblyAngularVelocity
    local currentPosition = ball.Position
    local currentVelocity = ball.AssemblyLinearVelocity
    
    local curveOffset = angularVelocity.Magnitude * PawsConfig.AntiCurveStrength * time * time / 2  
    local curveDirection = currentVelocity:Cross(angularVelocity).Unit  
    
    return currentPosition + (currentVelocity * time) + (curveDirection * curveOffset)  
    end
    
    -- Main script
    local parryCheck = false
    local spamming = false
    
    RunService.PreRender:Connect(function()
    local ball = findBall()
    if not ball then return end
    
    local ballPosition = ball.Position  
    local ballVelocity = ball.AssemblyLinearVelocity.Magnitude  
    local distance = Player:DistanceFromCharacter(ballPosition)  
    
    local ping = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()  
    if PawsConfig.PingBased then  
        distance -= ping / 1000 + PawsConfig.PingBasedOffset  
    end  
    
    if PawsConfig.BallSpeedCheck and ballVelocity == 0 then return end  
    
    local bestParryTime = nil  
    for timeInterval = 0, 0.5, 0.01 do  
        local predictedPosition = predictCurvedPosition(ball, timeInterval)  
        local predictedDistance = Player:DistanceFromCharacter(predictedPosition)  
        if predictedDistance / ballVelocity &lt;= PawsConfig.DistanceToParry and isTarget() then  
            bestParryTime = timeInterval  
            break  
        end  
    end  
    
    if distance / ballVelocity &lt;= PawsConfig.DistanceToParry and isTarget() and PawsConfig.AutoParry and not parryCheck then  
        if ballVelocity &gt;= PawsConfig.SpeedThreshold then  
            local spamRate = math.clamp((30 - distance) / 30 * PawsConfig.SpamRateMultiplier, PawsConfig.MinSpamRate, PawsConfig.MaxSpamRate)  
            if ping &gt; PawsConfig.PingThreshold then  
                spamming = true  
                while spamming do  
                    simulateMouseClick()  
                    task.wait(spamRate)  
                    if ping &lt;= PawsConfig.StablePingThreshold then  
                        spamming = false  
                    end  
                end  
            else  
                task.wait(bestParryTime)  
                simulateMouseClick()  
                print("parry")  
                parryCheck = true  
            end  
        end  
    elseif not isTarget() then  
        parryCheck = false  
        elseif parryCheck then  
            parryCheck = false  
        end  
    end  
end)
