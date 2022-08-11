local player = game.Players.localPlayer
local character = player.character

local part = character.PrimaryPart

game.ReplicatedStorage.TazerEvents:WaitForChild("event4"):FireServer(part)