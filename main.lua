local TweenService = game:GetService("TweenService")

local ScreenGui = Instance.new("ScreenGui")
local OpenButton = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local UICornerFrame = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local SpeedBox = Instance.new("TextBox")
local UICornerSpeedBox = Instance.new("UICorner")
local ApplyButton = Instance.new("TextButton")
local UICornerApplyButton = Instance.new("UICorner")
local TitleLabel = Instance.new("TextLabel")
local SpeedLabel = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")
local UICornerToggle = Instance.new("UICorner")
local Notification = Instance.new("Frame")
local NotifCorner = Instance.new("UICorner")
local NotifTitle = Instance.new("TextLabel")
local NotifText = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "Autoclicker"

OpenButton.Parent = ScreenGui
OpenButton.Name = "ActivateIt"
OpenButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
OpenButton.Position = UDim2.new(0, 10, 0.5, 0)
OpenButton.Size = UDim2.new(0, 120, 0, 50)
OpenButton.Font = Enum.Font.Arcade
OpenButton.Text = "Autoclicker MODDED"
OpenButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenButton.TextScaled = true
OpenButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = true
end)

MainFrame.Parent = ScreenGui
MainFrame.Name = "Main"
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0, 250, 0, 200)
MainFrame.Visible = false
MainFrame.Active = true
MainFrame.Draggable = true

UICornerFrame.Parent = MainFrame
UICornerFrame.CornerRadius = UDim.new(0, 10)

CloseButton.Parent = MainFrame
CloseButton.Name = "Close"
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.Position = UDim2.new(0.88, 0, 0.05, 0)
CloseButton.Size = UDim2.new(0, 25, 0, 25)
CloseButton.Font = Enum.Font.Arcade
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextScaled = true
CloseButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = false
end)

TitleLabel.Parent = MainFrame
TitleLabel.Name = "Title"
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.Size = UDim2.new(0, 200, 0, 30)
TitleLabel.Font = Enum.Font.Arcade
TitleLabel.Text = "Settings"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true

SpeedBox.Parent = MainFrame
SpeedBox.Name = "SpeedBox"
SpeedBox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
SpeedBox.Position = UDim2.new(0.1, 0, 0.22, 0)
SpeedBox.Size = UDim2.new(0, 200, 0, 30)
SpeedBox.Font = Enum.Font.Arcade
SpeedBox.PlaceholderText = "Speed (e.g. 50)"
SpeedBox.Text = "50"
SpeedBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedBox.TextScaled = true

UICornerSpeedBox.Parent = SpeedBox
UICornerSpeedBox.CornerRadius = UDim.new(0, 8)

ApplyButton.Parent = MainFrame
ApplyButton.Name = "Apply"
ApplyButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
ApplyButton.Position = UDim2.new(0.1, 0, 0.45, 0)
ApplyButton.Size = UDim2.new(0, 200, 0, 30)
ApplyButton.Font = Enum.Font.Arcade
ApplyButton.Text = "Apply Speed"
ApplyButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ApplyButton.TextScaled = true

UICornerApplyButton.Parent = ApplyButton
UICornerApplyButton.CornerRadius = UDim.new(0, 8)

ToggleButton.Parent = MainFrame
ToggleButton.Name = "Toggle"
ToggleButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
ToggleButton.Position = UDim2.new(0.1, 0, 0.7, 0)
ToggleButton.Size = UDim2.new(0, 200, 0, 30)
ToggleButton.Font = Enum.Font.Arcade
ToggleButton.Text = "Autoclick: ON"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextScaled = true

UICornerToggle.Parent = ToggleButton
UICornerToggle.CornerRadius = UDim.new(0, 8)

SpeedLabel.Parent = MainFrame
SpeedLabel.Name = "SpeedLabel"
SpeedLabel.BackgroundTransparency = 1
SpeedLabel.Position = UDim2.new(0.1, 0, 0.89, 0)
SpeedLabel.Size = UDim2.new(0, 200, 0, 20)
SpeedLabel.Font = Enum.Font.Arcade
SpeedLabel.Text = "Current speed: 50"
SpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SpeedLabel.TextScaled = true

Notification.Parent = ScreenGui
Notification.Name = "Notification"
Notification.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Notification.Size = UDim2.new(0, 260, 0, 80)
Notification.Position = UDim2.new(1, 20, 0.8, 0) -- off-screen
Notification.AnchorPoint = Vector2.new(0, 0)
Notification.Visible = false
Notification.ZIndex = 10

NotifCorner.Parent = Notification
NotifCorner.CornerRadius = UDim.new(0, 10)

NotifTitle.Parent = Notification
NotifTitle.BackgroundTransparency = 1
NotifTitle.Position = UDim2.new(0.05, 0, 0.1, 0)
NotifTitle.Size = UDim2.new(0.9, 0, 0.35, 0)
NotifTitle.Font = Enum.Font.Arcade
NotifTitle.Text = "Script Loaded"
NotifTitle.TextColor3 = Color3.fromRGB(0, 255, 140)
NotifTitle.TextScaled = true
NotifTitle.TextXAlignment = Enum.TextXAlignment.Left
NotifTitle.ZIndex = 11

NotifText.Parent = Notification
NotifText.BackgroundTransparency = 1
NotifText.Position = UDim2.new(0.05, 0, 0.5, 0)
NotifText.Size = UDim2.new(0.9, 0, 0.4, 0)
NotifText.Font = Enum.Font.Arcade
NotifText.Text = "Made by Felipe, Modded by Hime."
NotifText.TextColor3 = Color3.fromRGB(255, 255, 255)
NotifText.TextScaled = true
NotifText.TextWrapped = true
NotifText.TextXAlignment = Enum.TextXAlignment.Left
NotifText.ZIndex = 11

local player = game:GetService("Players").LocalPlayer
local autoClickSpeed = 1 / 50
local autoClickEnabled = true

local shiftPressed = false
task.spawn(function()
    task.wait(0.5)
    if not shiftPressed then
        local virtualInput = game:GetService("VirtualInputManager")
        virtualInput:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, nil)
        task.wait(0.1)
        virtualInput:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, nil)
        shiftPressed = true
    end
end)

local function autoClickLoop()
    while true do
        if autoClickEnabled then
            local character = player.Character
            if character then
                local tool = character:FindFirstChildOfClass("Tool")
                if tool and tool:FindFirstChild("Handle") then
                    tool:Activate()
                end
            end
        end
        task.wait(autoClickSpeed)
    end
end

local function showNotification(title, text, duration)
	NotifTitle.Text = title
	NotifText.Text = text
	duration = duration or 4

	Notification.Visible = true

	local slideIn = TweenService:Create(
		Notification,
		TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
		{ Position = UDim2.new(1, -280, 0.8, 0) }
	)

	local slideOut = TweenService:Create(
		Notification,
		TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
		{ Position = UDim2.new(1, 20, 0.8, 0) }
	)

	slideIn:Play()
	task.wait(duration)
	slideOut:Play()
	slideOut.Completed:Wait()
	Notification.Visible = false
end

task.spawn(autoClickLoop)

ApplyButton.MouseButton1Click:Connect(function()
    local newSpeed = tonumber(SpeedBox.Text)
    if newSpeed and newSpeed > 0 then
        autoClickSpeed = 1 / newSpeed
        SpeedLabel.Text = "Current speed: " .. newSpeed
    else
        SpeedLabel.Text = "Current speed: Invalid"
    end
end)

ToggleButton.MouseButton1Click:Connect(function()
    autoClickEnabled = not autoClickEnabled
    if autoClickEnabled then
        ToggleButton.Text = "Autoclick: ON"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
        SpeedBox.Active = true
        SpeedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    else
        ToggleButton.Text = "Autoclick: OFF"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        SpeedBox.Active = false
        SpeedLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
    end
end)

player.CharacterAdded:Connect(function()
    autoClickEnabled = true
end)

task.delay(0.5, function()
	showNotification(
		"Script Loaded!",
		"Made by Felipe, Modded by Hime!",
		5
	)
end)
