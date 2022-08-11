local HttpService = game:GetService("HttpService")

local Toast = game:HttpGetAsync("https://raw.githubusercontent.com/r3aI1ty/roblox-vulnerable-remote-events/main/src/toast.lua")()

local vulnerableEvents = HttpService:JSONDecode(game:HttpGetAsync("https://raw.githubusercontent.com/r3aI1ty/roblox-vulnerable-remote-events/main/remotes.json")())
local detected = {}

for _, remote in pairs(game:GetDescendants()) do
	if remote:IsA("RemoteEvent") then
		if table.find(vulnerableEvents, remote.Name) then
			if not table.find(detected, remote.Name) then
				table.insert(detected, remote.Name)

				print(string.format(remote.Name), 247, 209, 39)
				notify(remote.Name)
				addRemote(remote)

				if not ScreenGui.Enabled then
					ScreenGui.Enabled = true
				end
			end
		end
	end
end

game.DescendantAdded:Connect(function(remote)
	if remote:IsA("RemoteEvent") then
		if table.find(vulnerableEvents, remote.Name) then
			if not table.find(detected, remote.Name) then
				table.insert(detected, remote.Name)

				print(string.format(remote.Name), 247, 209, 39)
				notify(remote.Name)
				addRemote(remote)

				if not ScreenGui.Enabled then
					ScreenGui.Enabled = true
				end
			end
		end
	end
end)