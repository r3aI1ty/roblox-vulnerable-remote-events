local toast = {}

toast.notifications = 0

function toast:notify(remoteName)
	local gui = game.CoreGui:FindFirstChild("vulnEventsNotifier")

	if not gui then
		gui = Instance.new("ScreenGui", game.CoreGui)
		gui.Name = "vulnEventsNotifier"

		local frame = Instance.new("Frame", gui)
		frame.AnchorPoint = Vector2.new(1, 1)
		frame.BackgroundTransparency = 1
		frame.Position = UDim2.new(1, 0, 1, 0)
		frame.Size = UDim2.new(0, 225, 0.3, 0)

		local padding = Instance.new("UIPadding", frame)
		padding.PaddingBottom = UDim.new(0, 5)
		padding.PaddingRight = UDim.new(0, 5)

		frame.ChildAdded:Connect(function(child)
			local padding = 3
			if child:IsA("Frame") then
				if #frame:GetChildren() > 2 then -- notification(s) is/are present prior to creation
					for _, notification in pairs(frame:GetChildren()) do
						if notification:IsA("Frame") and notification.Name ~= tostring(notifications) then
							local size = notification.AbsoluteSize.Y + padding

							notification:TweenPosition(UDim2.new(0, 0, 1, notification.Position.Y.Offset - size), 1, 5, 0.2, true)
						end
					end
				end
			end
		end)
	end

	self.notifications += 1

	local closeEnter = nil
	local closeLeave = nil
	local closeEvent = nil

	local frame = Instance.new("Frame")
	local background = Instance.new("Frame", frame)
	local info = Instance.new("Frame", frame)
	local close = Instance.new("ImageButton", frame)

	local frameRatio = Instance.new("UIAspectRatioConstraint")
	local frameCorner = Instance.new("UICorner", frame)
	frame.AnchorPoint = Vector2.new(0, 1)
	frame.Name = tostring(notifications)
	frame.BackgroundColor3 = Color3.fromRGB(0, 135, 222)
	frame.BorderSizePixel = 0
	frame.Position = UDim2.new(2, 0, 1, 0)
	frame.Size = UDim2.new(1, 0, 1, 0)
	frameRatio.AspectRatio = 4.167
	frameRatio.DominantAxis = Enum.DominantAxis.Width	frameCorner.CornerRadius = UDim.new(0, 10)

	local backgroundCorner = frameCorner:Clone()
	background.AnchorPoint = Vector2.new(1, 0)
	background.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
	background.Position = UDim2.new(1, 0, 0, 0)
	background.Size = UDim2.new(1, -3, 1, 0)
	background.ZIndex = 2
	backgroundCorner.Parent = background

	local title = Instance.new("TextLabel", info)
	local body = Instance.new("TextLabel", info)
	info.AnchorPoint = Vector2.new(0, 0.5)
	info.BackgroundTransparency = 1
	info.Position = UDim2.new(0.1, 2, 0.5, 0)
	info.Size = UDim2.new(0.8, 0, 0.75, 0)
	info.ZIndex = 2
	title.BackgroundTransparency = 1
	title.Position = UDim2.new(0, 0, 0.1, 0)
	title.Size = UDim2.new(1, 0, 0.3, 0)
	title.ZIndex = 3
	title.Text = "Vulnerable Remote Events"
	title.Font = Enum.Font.GothamBlack
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextScaled = true
	title.TextXAlignment = Enum.TextXAlignment.Left
	body.BackgroundTransparency = 1
	body.Position = UDim2.new(0, 0, 0.45, 0)
	body.Size = UDim2.new(1, 0, 0.5, 0)
	body.ZIndex = 3
	body.Text = remoteName
	body.Font = Enum.Font.Gotham
	body.TextColor3 = Color3.fromRGB(255, 255, 255)
	body.TextScaled = true
	body.TextXAlignment = Enum.TextXAlignment.Left

	local closeCorner = frameCorner:Clone()
	close.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
	close.BackgroundTransparency = 1
	close.Size = UDim2.new(1, 0, 1, 0)
	close.ZIndex = 5
	close.Image = "http://www.roblox.com/asset/?id=6031094678"
	close.ImageTransparency = 1
	close.ScaleType = Enum.ScaleType.Fit
	closeCorner.Parent = close

	frameRatio.Parent = frame
	frame.Parent = gui.Frame

	local function closeNotification()
		if frame:IsDescendantOf(game) then
			frame:TweenPosition(UDim2.new(2, 0, 1, frame.Position.Y.Offset), 0, 2, 0.5, true, function()
				wait()
				frame:Destroy()
				closeEnter:Disconnect()
				closeLeave:Disconnect()
				closeEvent:Disconnect()

				closeEnter, closeLeave, closeEvent = nil, nil, nil
				notifications -= 1
			end)
		end
	end

	spawn(function()
		frame:TweenPosition(UDim2.new(0, 0, 1, 0), 1, 5, 0.5, true)
		closeEnter = close.MouseEnter:Connect(function()
			local goal = {
				BackgroundTransparency = 0,
				ImageTransparency = 0
			}

			TweenService:Create(close, TweenInfo.new(0.25), goal):Play()
		end)
		closeLeave = close.MouseLeave:Connect(function()
			local goal = {
				BackgroundTransparency = 1,
				ImageTransparency = 1
			}

			TweenService:Create(close, TweenInfo.new(0.25), goal):Play()
		end)
		closeEvent = close.MouseButton1Up:Connect(function()
			closeNotification()
			return
		end)

		wait(5)
		closeNotification()
	end)
end

return toast