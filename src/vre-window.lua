-- Services:

local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Instances:

local vulnerableRemoteEvents = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local top = Instance.new("Frame")
local close = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local tooltips = Instance.new("Frame")
local pathTab = Instance.new("TextButton")
local PoC = Instance.new("TextButton")
local gameTab = Instance.new("TextButton")
local viewers = Instance.new("Frame")
local eventList = Instance.new("ScrollingFrame")
local UIPadding = Instance.new("UIPadding")
local UIListLayout = Instance.new("UIListLayout")
local eventButton = Instance.new("TextButton")
local pathView = Instance.new("Frame")
local path = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_2 = Instance.new("UIPadding")
local copyPathBtn = Instance.new("TextButton")
local conceptView = Instance.new("Frame")
local copyCodeBtn = Instance.new("TextButton")
local codeLabel = Instance.new("TextLabel")
local gameView = Instance.new("Frame")
local gameName = Instance.new("TextLabel")
local UIPadding_3 = Instance.new("UIPadding")
local remoteCount = Instance.new("TextLabel")
local blacklistCount = Instance.new("TextLabel")

--Properties:

vulnerableRemoteEvents.Name = "vulnerableRemoteEvents"
vulnerableRemoteEvents.Parent = game.Players.LocalPlayer:WaitForChild('PlayerGui') -- game:GetService("CoreGui")
vulnerableRemoteEvents.IgnoreGuiInset = true
vulnerableRemoteEvents.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainFrame.Name = "mainFrame"
mainFrame.Parent = vulnerableRemoteEvents
mainFrame.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
mainFrame.BorderSizePixel = 0
mainFrame.Position = UDim2.new(0, workspace.CurrentCamera.ViewportSize.X/2, 0, workspace.CurrentCamera.ViewportSize.Y/2)
mainFrame.Size = UDim2.new(0, 403, 0, 241)

top.Name = "top"
top.Parent = mainFrame
top.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
top.BorderSizePixel = 0
top.Size = UDim2.new(1, 0, 0, 15)

close.Name = "close"
close.Parent = top
close.AnchorPoint = Vector2.new(1, 0)
close.BackgroundColor3 = Color3.fromRGB(200, 30, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(1, 0, 0, 0)
close.Size = UDim2.new(0.100000001, 0, 1, 0)
close.Font = Enum.Font.GothamBlack
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 14.000

title.Name = "title"
title.Parent = top
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0, 10, 0, 0)
title.Size = UDim2.new(0.899999976, -10, 1, 0)
title.Font = Enum.Font.Gotham
title.Text = "Vulnerable Remote Events"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 12.000
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left

tooltips.Name = "tooltips"
tooltips.Parent = mainFrame
tooltips.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
tooltips.BorderSizePixel = 0
tooltips.Position = UDim2.new(0, 0, 0, 15)
tooltips.Size = UDim2.new(1, 0, 0, 15)

pathTab.Name = "pathTab"
pathTab.Parent = tooltips
pathTab.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
pathTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
pathTab.BorderSizePixel = 0
pathTab.Position = UDim2.new(0.333000004, 0, 0, 0)
pathTab.Size = UDim2.new(0.333000004, 0, 1, 0)
pathTab.Font = Enum.Font.GothamBold
pathTab.Text = "Remote Path"
pathTab.TextColor3 = Color3.fromRGB(255, 255, 255)
pathTab.TextSize = 14.000
pathTab.TextWrapped = true

PoC.Name = "PoC"
PoC.Parent = tooltips
PoC.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
PoC.BorderColor3 = Color3.fromRGB(0, 0, 0)
PoC.BorderSizePixel = 0
PoC.Position = UDim2.new(0.666999996, 0, 0, 0)
PoC.Size = UDim2.new(0.333000004, 0, 1, 0)
PoC.Font = Enum.Font.GothamBold
PoC.Text = "Proof of Concept"
PoC.TextColor3 = Color3.fromRGB(255, 255, 255)
PoC.TextSize = 14.000
PoC.TextWrapped = true

gameTab.Name = "gameTab"
gameTab.Parent = tooltips
gameTab.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
gameTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
gameTab.BorderSizePixel = 0
gameTab.Size = UDim2.new(0.333000004, 0, 1, 0)
gameTab.Font = Enum.Font.GothamBold
gameTab.Text = "Game"
gameTab.TextColor3 = Color3.fromRGB(255, 255, 255)
gameTab.TextSize = 14.000
gameTab.TextWrapped = true

viewers.Name = "viewers"
viewers.Parent = mainFrame
viewers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
viewers.BackgroundTransparency = 1.000
viewers.ClipsDescendants = true
viewers.Position = UDim2.new(0, 0, 0, 30)
viewers.Size = UDim2.new(1, 0, 1, -30)

eventList.Name = "eventList"
eventList.Parent = viewers
eventList.Active = true
eventList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
eventList.BackgroundTransparency = 1.000
eventList.BorderSizePixel = 0
eventList.Size = UDim2.new(0.25, 0, 1, 0)
eventList.Visible = false
eventList.ScrollBarThickness = 6

UIPadding.Parent = eventList
UIPadding.PaddingRight = UDim.new(0, 6)

UIListLayout.Parent = eventList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

eventButton.Name = "eventButton"
eventButton.Parent = eventList
eventButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
eventButton.BorderSizePixel = 0
eventButton.Size = UDim2.new(1, 0, 0, 20)
eventButton.Font = Enum.Font.GothamBold
eventButton.Text = "OnlyTwentyCharacters"
eventButton.TextColor3 = Color3.fromRGB(255, 255, 255)
eventButton.TextScaled = true
eventButton.TextSize = 14.000
eventButton.TextWrapped = true

pathView.Name = "pathView"
pathView.Parent = viewers
pathView.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pathView.BackgroundTransparency = 1.000
pathView.BorderColor3 = Color3.fromRGB(27, 42, 53)
pathView.Position = UDim2.new(0.25, 0, 0, 0)
pathView.Size = UDim2.new(0.75, 0, 1, 0)
pathView.Visible = false

path.Name = "path"
path.Parent = pathView
path.Active = true
path.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
path.BackgroundTransparency = 1.000
path.BorderSizePixel = 0
path.Size = UDim2.new(1, 0, 0.949999988, 0)
path.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
path.ScrollBarThickness = 6

UIListLayout_2.Parent = path
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 2)

UIPadding_2.Parent = path
UIPadding_2.PaddingTop = UDim.new(0, 5)

copyPathBtn.Name = "copyPathBtn"
copyPathBtn.Parent = pathView
copyPathBtn.AnchorPoint = Vector2.new(0, 1)
copyPathBtn.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
copyPathBtn.BorderSizePixel = 0
copyPathBtn.Position = UDim2.new(0, 0, 1, 0)
copyPathBtn.Size = UDim2.new(1, 0, 0.0500000007, 0)
copyPathBtn.Font = Enum.Font.GothamMedium
copyPathBtn.Text = "Click to copy path"
copyPathBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyPathBtn.TextScaled = true
copyPathBtn.TextSize = 14.000
copyPathBtn.TextWrapped = true

conceptView.Name = "conceptView"
conceptView.Parent = viewers
conceptView.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
conceptView.BackgroundTransparency = 1.000
conceptView.BorderColor3 = Color3.fromRGB(27, 42, 53)
conceptView.Position = UDim2.new(0.25, 0, 0, 0)
conceptView.Size = UDim2.new(0.75, 0, 1, 0)
conceptView.Visible = false

copyCodeBtn.Name = "copyCodeBtn"
copyCodeBtn.Parent = conceptView
copyCodeBtn.AnchorPoint = Vector2.new(0, 1)
copyCodeBtn.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
copyCodeBtn.BorderSizePixel = 0
copyCodeBtn.Position = UDim2.new(0, 0, 1, 0)
copyCodeBtn.Size = UDim2.new(1, 0, 0.0500000007, 0)
copyCodeBtn.Font = Enum.Font.GothamMedium
copyCodeBtn.Text = "Click to copy code"
copyCodeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyCodeBtn.TextScaled = true
copyCodeBtn.TextSize = 14.000
copyCodeBtn.TextWrapped = true

codeLabel.Name = "codeLabel"
codeLabel.Parent = conceptView
codeLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
codeLabel.BackgroundTransparency = 1.000
codeLabel.Size = UDim2.new(1, 0, 0.949999988, 0)
codeLabel.Visible = false
codeLabel.Font = Enum.Font.Gotham
codeLabel.Text = "local function sayHello(name)\\n	print(\"Hello\", name)\\nend"
codeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
codeLabel.TextSize = 14.000
codeLabel.TextXAlignment = Enum.TextXAlignment.Left
codeLabel.TextYAlignment = Enum.TextYAlignment.Top

gameView.Name = "gameView"
gameView.Parent = viewers
gameView.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameView.BackgroundTransparency = 1.000
gameView.BorderColor3 = Color3.fromRGB(27, 42, 53)
gameView.Size = UDim2.new(1, 0, 1, 0)

gameName.Name = "gameName"
gameName.Parent = gameView
gameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
gameName.BackgroundTransparency = 1.000
gameName.Size = UDim2.new(1, 0, 0.200000003, 0)
gameName.Font = Enum.Font.GothamBlack
gameName.Text = "Example Game Name"
gameName.TextColor3 = Color3.fromRGB(255, 255, 255)
gameName.TextSize = 24.000
gameName.TextStrokeTransparency = 0.750
gameName.TextWrapped = true
gameName.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_3.Parent = gameView
UIPadding_3.PaddingLeft = UDim.new(0, 5)

remoteCount.Name = "remoteCount"
remoteCount.Parent = gameView
remoteCount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
remoteCount.BackgroundTransparency = 1.000
remoteCount.Position = UDim2.new(0, 0, 0.200000003, 0)
remoteCount.Size = UDim2.new(1, 0, 0.100000001, 0)
remoteCount.Font = Enum.Font.GothamBlack
remoteCount.Text = "Detected Remotes: 0"
remoteCount.TextColor3 = Color3.fromRGB(255, 255, 255)
remoteCount.TextSize = 14.000
remoteCount.TextStrokeTransparency = 0.750
remoteCount.TextWrapped = true
remoteCount.TextXAlignment = Enum.TextXAlignment.Left

blacklistCount.Name = "blacklistCount"
blacklistCount.Parent = gameView
blacklistCount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
blacklistCount.BackgroundTransparency = 1.000
blacklistCount.Position = UDim2.new(0, 0, 0.300000012, 0)
blacklistCount.Size = UDim2.new(1, 0, 0.100000001, 0)
blacklistCount.Font = Enum.Font.GothamBlack
blacklistCount.Text = "Blacklisted Remotes: 0"
blacklistCount.TextColor3 = Color3.fromRGB(255, 255, 255)
blacklistCount.TextSize = 14.000
blacklistCount.TextStrokeTransparency = 0.750
blacklistCount.TextWrapped = true
blacklistCount.TextXAlignment = Enum.TextXAlignment.Left

-- Dragging (forked from SimpleSpy)
top.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		local lastPos = UserInputService.GetMouseLocation(UserInputService)
		local mainPos = mainFrame.AbsolutePosition
		local offset = (mainPos - lastPos) + Vector2.new(0, 36)
		local currentPos = offset + lastPos
		RunService.BindToRenderStep(RunService, "drag", 1, function()
			local newPos = UserInputService.GetMouseLocation(UserInputService)
			if newPos ~= lastPos then
				local currentX = (offset + newPos).X
				local currentY = (offset + newPos).Y
				local viewportSize = workspace.CurrentCamera.ViewportSize
				if
					(currentX < 0 and currentX < currentPos.X)
					or (
						currentX > (viewportSize.X - (mainFrame.AbsoluteSize.X))
							and currentX > currentPos.X
					)
				then
					if currentX < 0 then
						currentX = 0
					else
						currentX = viewportSize.X - (mainFrame.AbsoluteSize.X)
					end
				end
				if
					(currentY < 0 and currentY < currentPos.Y)
					or (
						currentY > (viewportSize.Y - (mainFrame.AbsoluteSize.Y))
							and currentY > currentPos.Y
					)
				then
					if currentY < 0 then
						currentY = 0
					else
						currentY = viewportSize.Y - (mainFrame.AbsoluteSize.Y)
					end
				end
				currentPos = Vector2.new(currentX, currentY)
				lastPos = newPos
				TweenService.Create(
					TweenService,
					mainFrame,
					TweenInfo.new(0.1),
					{ Position = UDim2.new(0, currentPos.X, 0, currentPos.Y) }
				):Play()
			end
			-- if input.UserInputState ~= Enum.UserInputState.Begin then
			--     RunService.UnbindFromRenderStep(RunService, "drag")
			-- end
		end)
		UserInputService.InputEnded:Connect(function(inputE)
			if input == inputE then
				RunService:UnbindFromRenderStep("drag")
			end
		end)
	end
end)