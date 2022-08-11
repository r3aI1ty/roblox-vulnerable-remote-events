-- Services:
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

-- Color Schemes
local pathColorSchemes = {
	Default = {
		normal = Color3.fromRGB(57, 57, 57),
		hover = Color3.fromRGB(77, 77, 77),
		selected = Color3.fromRGB(11, 90, 175)
	}
}

game.Loaded:Wait()
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")

local Top = Instance.new("Frame")
local Close = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

local Tooltips = Instance.new("Frame")
local toggleGame = Instance.new("TextButton")
local toggleLocation = Instance.new("TextButton")
local togglePoC = Instance.new("TextButton")

local Viewer = Instance.new("Frame")
local eventsList = Instance.new("ScrollingFrame")
local eventsPadding = Instance.new("UIPadding")
local eventsLayout = Instance.new("UIListLayout")

local conceptView = Instance.new("TextLabel")
local locationView = Instance.new("Frame")

local pathFrame = Instance.new("ScrollingFrame")
local pathFrameLayout = Instance.new("UIListLayout")
local pathFramePadding = Instance.new("UIPadding")
local copyPath = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.Enabled = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 403, 0, 241)

Top.Name = "Top"
Top.Parent = Frame
Top.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(1, 0, 0, 15)

Close.Name = "Close"
Close.Parent = Top
Close.AnchorPoint = Vector2.new(1, 0)
Close.BackgroundColor3 = Color3.fromRGB(200, 30, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(1, 0, 0, 0)
Close.Size = UDim2.new(0.1, 0, 1, 0)
Close.Font = Enum.Font.GothamBlack
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextSize = 14.000

TextLabel.Parent = Top
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 10, 0, 0)
TextLabel.Size = UDim2.new(0.9, -10, 1, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Vulnerable Remote Events"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 12
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Tooltips.Name = "Tooltips"
Tooltips.Parent = Frame
Tooltips.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Tooltips.BorderSizePixel = 0
Tooltips.Position = UDim2.new(0, 0, 0, 15)
Tooltips.Size = UDim2.new(1, 0, 0, 15)

toggleGame.Name = "Game"
toggleGame.Parent = Tooltips
toggleGame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
toggleGame.BorderColor3 = Color3.fromRGB(0, 0, 0)
toggleGame.BorderSizePixel = 0
toggleGame.Size = UDim2.new(1/3, 0, 1, 0)
toggleGame.Font = Enum.Font.GothamBold
toggleGame.Text = "Game"
toggleGame.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleGame.TextSize = 14

toggleLocation.Name = "Location"
toggleLocation.Parent = Tooltips
toggleLocation.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
toggleLocation.BorderColor3 = Color3.fromRGB(0, 0, 0)
toggleLocation.BorderSizePixel = 0
toggleLocation.Position = UDim2.new(1/3, 0, 0, 0)
toggleLocation.Size = UDim2.new(1/3, 0, 1, 0)
toggleLocation.Font = Enum.Font.GothamBold
toggleLocation.Text = "Location"
toggleLocation.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleLocation.TextSize = 14

togglePoC.Name = "PoC"
togglePoC.Parent = Tooltips
togglePoC.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
togglePoC.BorderColor3 = Color3.fromRGB(0, 0, 0)
togglePoC.BorderSizePixel = 0
togglePoC.Position = UDim2.new(2/3, 0, 0, 0)
togglePoC.Size = UDim2.new(1/3, 0, 1, 0)
togglePoC.Font = Enum.Font.GothamBold
togglePoC.Text = "Proof of Concept"
togglePoC.TextColor3 = Color3.fromRGB(255, 255, 255)
togglePoC.TextSize = 14

Viewer.Name = "Viewer"
Viewer.Parent = Frame
Viewer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Viewer.BackgroundTransparency = 1.000
Viewer.Position = UDim2.new(0, 0, 0, 30)
Viewer.Size = UDim2.new(1, 0, 1, -30)

eventsList.Name = "Events"
eventsList.Parent = Viewer
eventsList.Active = true
eventsList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
eventsList.BackgroundTransparency = 1.000
eventsList.BorderSizePixel = 0
eventsList.Size = UDim2.new(0.25, 0, 1, 0)
eventsList.ScrollBarThickness = 6

eventsPadding.Parent = eventsList
eventsPadding.PaddingRight = UDim.new(0, 6)

eventsLayout.Parent = eventsList
eventsLayout.SortOrder = Enum.SortOrder.LayoutOrder

conceptView.Name = "PoC"
conceptView.Parent = Viewer
conceptView.AnchorPoint = Vector2.new(1, 1)
conceptView.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
conceptView.BackgroundTransparency = 1.000
conceptView.Position = UDim2.new(1, 0, 1, 0)
conceptView.Size = UDim2.new(0.75, -5, 1, -5)
conceptView.Visible = false
conceptView.Font = Enum.Font.Gotham
conceptView.Text = ""
conceptView.TextColor3 = Color3.fromRGB(255, 255, 255)
conceptView.TextSize = 14.000
conceptView.TextXAlignment = Enum.TextXAlignment.Left
conceptView.TextYAlignment = Enum.TextYAlignment.Top

locationView.Name = "Location"
locationView.Parent = Viewer
locationView.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
locationView.BackgroundTransparency = 1.000
locationView.BorderColor3 = Color3.fromRGB(27, 42, 53)
locationView.Position = UDim2.new(0.25, 0, 0, 0)
locationView.Size = UDim2.new(0.75, 0, 1, 0)

pathFrame.Name = "Path"
pathFrame.Parent = locationView
pathFrame.Active = true
pathFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pathFrame.BackgroundTransparency = 1.000
pathFrame.BorderSizePixel = 0
pathFrame.Size = UDim2.new(1, 0, 0.95, 0)
pathFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
pathFrame.ScrollBarThickness = 6

pathFrameLayout.Parent = pathFrame
pathFrameLayout.SortOrder = Enum.SortOrder.LayoutOrder
pathFrameLayout.Padding = UDim.new(0, 2)

pathFramePadding.Parent = pathFrame
pathFramePadding.PaddingTop = UDim.new(0, 5)

copyPath.Name = "Copy"
copyPath.Parent = locationView
copyPath.AnchorPoint = Vector2.new(0, 1)
copyPath.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
copyPath.BorderSizePixel = 0
copyPath.Position = UDim2.new(0, 0, 1, 0)
copyPath.Size = UDim2.new(1, 0, 0.0500000007, 0)
copyPath.Font = Enum.Font.GothamMedium
copyPath.Text = "Click to copy path"
copyPath.TextColor3 = Color3.fromRGB(255, 255, 255)
copyPath.TextScaled = true
copyPath.TextSize = 14.000
copyPath.TextWrapped = true

-- Frame Dragging
local selected = nil
local dragging
local dragInput
local dragStart
local startPos

local function update(input, gui)
	if gui == Frame then
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	elseif gui == Settings then
		local delta = input.Position - dragStart2
		gui.Position = UDim2.new(startPos2.X.Scale, startPos2.X.Offset + delta.X, startPos2.Y.Scale, startPos2.Y.Offset + delta.Y)
	end
end

Frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		selected = Frame
		dragging = true
		dragStart = input.Position
		startPos = Frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				selected = nil
				dragging = false
			end
		end)
	end
end)

Frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input, selected)
	end
end)

-- Functions
local currentView = locationView
local currentRemote = nil
local currentPath = nil

toggleLocation.MouseButton1Up:Connect(function()
	print('loc')
	if currentView and currentView ~= locationView then
		currentView.Visible = false
	end

	currentView = locationView
	currentView.Visible = true
end)

togglePoC.MouseButton1Up:Connect(function()
	print('concept')
	if currentView and currentView ~= conceptView then
		currentView.Visible = false
	end

	currentView = conceptView
	currentView.Visible = true
end)

copyPath.MouseButton1Up:Connect(function()
	if setclipboard then
		setclipboard(currentRemote:GetFullName())
	end
end)

Close.MouseButton1Up:Connect(function()
	ScreenGui:Destroy()
end)

-- path
local ExplorerIndex, ReflectionMetadata = {}, "https://api.factmaven.com/xml-to-json/?xml=https://raw.githubusercontent.com/CloneTrooper1019/Roblox-Client-Tracker/roblox/ReflectionMetadata.xml"

for _, Metadata in ipairs(HttpService:JSONDecode(game:HttpGet(ReflectionMetadata, true)).roblox.Item[1].Item) do
	local Item = Metadata.Properties.string
	local ImageOrder = 0
	local ClassName = "Instance"
	for Category, Data in ipairs(Item) do
		if Data.name == "ExplorerImageIndex" then
			ImageOrder = tonumber(Data.text)
		end
		if Data.name == "Name" then
			ClassName = Data.text
		end
	end
	ExplorerIndex[ClassName] = ImageOrder
end

local function loadPath(path)
	local actualInstances = {}
	local selected = nil


	-- clean up previous
	for _, item in pairs(pathFrame:GetChildren()) do
		if item:IsA("Frame") then
			item:Destroy()
		end
	end

	for i, instance in pairs(path) do
		if #actualInstances == 0 then
			actualInstances[1] = game[instance]
		else
			local search = nil

			for j = 1, #path do
				if not actualInstances[i] then
					--print("LOOKING FOR ", instance, '[', i, ']', " in ", actualInstances[j], '[', j, ']')
					search = actualInstances[j]:FindFirstChild(instance)

					if search then
						--print('FOUND ', search)
						actualInstances[i] = search
					end
				end
			end
		end
	end
	print(path)

	local function createButton(instance, position)
		local opened = false

		local button = Instance.new("TextButton", pathFrame)
		local padding = Instance.new("UIPadding", button)
		local icon = Instance.new("ImageLabel", button)
		local name = Instance.new("TextLabel", button)

		button.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
		button.BorderSizePixel = 0
		button.Size = UDim2.new(1, 0, 0, 15)
		button.Text = ""

		padding.PaddingLeft = UDim.new(0, 5+((position-1)*20))

		icon.Position = UDim2.new(0, 15, 0, 0)
		icon.Size = UDim2.new(1, 0, 1, 0)
		icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
		icon.Image = "rbxasset://textures/ClassImages.png"
		icon.BackgroundTransparency = 1
		icon.ImageRectOffset = Vector2.new(16*ExplorerIndex[instance.ClassName], 0)
		icon.ImageRectSize = Vector2.new(16, 16)

		name.BackgroundTransparency = 1
		name.Position = UDim2.new(0, 35, 0)
		name.Size = UDim2.new(1, 0, 1, 0)
		name.Text = instance.Name
		name.TextColor3 = Color3.fromRGB(255, 255, 255)
		name.TextXAlignment = Enum.TextXAlignment.Left

		button.MouseEnter:Connect(function()
			if button ~= selected then
				button.BackgroundColor3 = pathColorSchemes.Default.hover
			end
		end)
		button.MouseLeave:Connect(function()
			if button ~= selected then
				button.BackgroundColor3 = pathColorSchemes.Default.normal
			end
		end)

		button.MouseButton1Up:Connect(function()
			if selected then
				if button ~= selected then
					selected.BackgroundColor3 = pathColorSchemes.Default.normal
				end
			end
			selected = button
			button.BackgroundColor3 = pathColorSchemes.Default.selected
		end)


		--if position ~= #path then
		--	local arrow = Instance.new("ImageButton", button)

		--	arrow.AnchorPoint = Vector2.new(0, 0.5)
		--	arrow.BackgroundTransparency = 1
		--	arrow.Position = UDim2.new(0, 0, 0.5, 0)
		--	arrow.Rotation = 270
		--	arrow.Size = UDim2.new(0.75, 0, 1, 0)
		--	arrow.SizeConstraint = Enum.SizeConstraint.RelativeYY
		--	arrow.Image = "rbxasset://textures/AnimationEditor/btn_expand.png"
		--	arrow.ScaleType = Enum.ScaleType.Fit

		--	arrow.MouseButton1Up:Connect(function()
		--		if not opened then
		--			opened = true
		--			arrow.Rotation = 0
		--		else
		--			opened = false
		--			arrow.Rotation = 270
		--		end
		--	end)
		--end
	end

	for pos, instance in pairs(actualInstances) do
		print(instance)
		createButton(instance, pos)
	end
end

local function addRemote(remote)
	local remoteButton = Instance.new("TextButton", eventsList)

	remoteButton.Name = remote.Name
	remoteButton.Parent = eventsList
	remoteButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	remoteButton.BorderSizePixel = 0
	remoteButton.Size = UDim2.new(1, 0, 0, 20)
	remoteButton.Font = Enum.Font.GothamBold
	remoteButton.Text = remote.Name
	remoteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	remoteButton.TextScaled = true
	remoteButton.TextSize = 14
	remoteButton.TextWrapped = true

	remoteButton.MouseButton1Up:Connect(function()
		if currentView == locationView then
			local pathTable = remote:GetFullName():split(".")

			if currentPath ~= pathTable then
				print("path making")
				currentRemote = remote
				currentPath = pathTable
				loadPath(currentPath)
			end
		elseif currentView == conceptView then
			print("proof of concept for", remoteButton.Name)
		end
	end)

	return remoteButton
end