-- Create a ScreenGui to hold the UI elements
local gui = Instance.new("ScreenGui")
gui.Name = "GameUI"
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create a Frame to hold the UI elements
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0.3, 0, 0.5, 0) -- Increased height to accommodate the extra button
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Parent = gui

-- Create a TextLabel to display the score
local scoreLabel = Instance.new("TextLabel")
scoreLabel.Name = "CoinsLabel"
scoreLabel.Size = UDim2.new(0.8, 0, 0.1, 0)
scoreLabel.Position = UDim2.new(0.1, 0, 0.05, 0) -- Adjusted position
scoreLabel.BackgroundTransparency = 1
scoreLabel.TextColor3 = Color3.new(1, 1, 1)
scoreLabel.TextScaled = true
scoreLabel.Text = "Coins: 0"
scoreLabel.Parent = frame

-- Create a TextButton to increment the score
local button = Instance.new("TextButton")
button.Name = "ClickButton"
button.Size = UDim2.new(0.8, 0, 0.15, 0)
button.Position = UDim2.new(0.1, 0, 0.2, 0) -- Adjusted position
button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
button.TextColor3 = Color3.new(1, 1, 1)
button.TextScaled = true
button.Text = "Click Me!"
button.Parent = frame

-- Create a TextButton to upgrade the click
local upgradeButton = Instance.new("TextButton")
upgradeButton.Name = "UpgradeButton"
upgradeButton.Size = UDim2.new(0.8, 0, 0.15, 0)
upgradeButton.Position = UDim2.new(0.1, 0, 0.4, 0) -- Adjusted position
upgradeButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
upgradeButton.TextColor3 = Color3.new(1, 1, 1)
upgradeButton.TextScaled = true
upgradeButton.Text = "Upgrade Click (100 coins)"
upgradeButton.Parent = frame

-- Create a TextButton for the Ultra Upgrade
local ultraUpgradeButton = Instance.new("TextButton")
ultraUpgradeButton.Name = "UltraUpgradeButton"
ultraUpgradeButton.Size = UDim2.new(0.8, 0, 0.15, 0)
ultraUpgradeButton.Position = UDim2.new(0.1, 0, 0.6, 0) -- Adjusted position
ultraUpgradeButton.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
ultraUpgradeButton.TextColor3 = Color3.new(1, 1, 1)
ultraUpgradeButton.TextScaled = true
ultraUpgradeButton.Text = "Ultra Upgrade Click (10K coins)"
ultraUpgradeButton.Parent = frame

-- Create Sparkles effect (Glitter)
local sparkles = Instance.new("Sparkles")
sparkles.Parent = frame
sparkles.Enabled = false -- Initially disabled

-- Game variables
local score = 0
local clickMultiplier = 1
local upgradeCost = 100
local ultraUpgradeCost = 10000

-- Function to update the score label
local function updateScoreLabel()
    scoreLabel.Text = "Coins: " .. score
end

-- Function to update the upgrade button texts
local function updateUpgradeButtons()
    upgradeButton.Text = "Upgrade Click (" .. upgradeCost .. " coins)"
    ultraUpgradeButton.Text = "Ultra Upgrade Click (" .. ultraUpgradeCost .. " coins)"
end

-- Function to check if glitter should be enabled
local function updateGlitter()
    if score >= 10000 then
        sparkles.Enabled = true
    else
        sparkles.Enabled = false
    end
end

-- Click button event
button.MouseButton1Click:Connect(function()
    score = score + clickMultiplier
    updateScoreLabel()
    updateGlitter()
end)

-- Upgrade button event
upgradeButton.MouseButton1Click:Connect(function()
    if score >= upgradeCost then
        score = score - upgradeCost
        clickMultiplier = clickMultiplier + 4
        upgradeCost = upgradeCost + 100
        updateScoreLabel()
        updateUpgradeButtons()
        updateGlitter()
    end
end)

-- Ultra Upgrade button event
ultraUpgradeButton.MouseButton1Click:Connect(function()
    if score >= ultraUpgradeCost then
        score = score - ultraUpgradeCost
        clickMultiplier = clickMultiplier + 50
        ultraUpgradeCost = ultraUpgradeCost + 10000
        updateScoreLabel()
        updateUpgradeButtons()
        updateGlitter()
    end
end)

-- Initial setup
updateScoreLabel()
updateUpgradeButtons()

-- Create a ScreenGui to hold the UI elements
local gui = Instance.new("ScreenGui")
gui.Name = "GameUI"
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create a Frame to hold the UI elements
local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0.3, 0, 0.5, 0) -- Increased height to accommodate the extra button
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
frame.Parent = gui

-- Create a TextLabel to display the score
local scoreLabel = Instance.new("TextLabel")
scoreLabel.Name = "CoinsLabel"
scoreLabel.Size = UDim2.new(0.8, 0, 0.1, 0)
scoreLabel.Position = UDim2.new(0.1, 0, 0.03, 0) -- Adjusted position
scoreLabel.BackgroundTransparency = 1
scoreLabel.TextColor3 = Color3.new(1, 1, 1)
scoreLabel.TextScaled = true
scoreLabel.Text = "Shop"
scoreLabel.Parent = frame
