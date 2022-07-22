local pathToVehicle = workspace:FindFirstChild("Rhine Flag").Vehicle
local soundName = "Sound"
local soundId = 3102181600

-- making the sound
local args = {
    [1] = "newSound",
    [2] = soundName,
    [3] = workspace, -- location
    [4] = string.format("rbxassetid://%d", soundId), -- sound id
    [5] = 1, -- pitch
    [6] = 10, -- volume
    [7] = true
}
pathToVehicle.AC6_FE_Sounds:FireServer(unpack(args))

-- playing the sound
local args = {
    [1] = "playSound",
    [2] = soundName 
}
pathToVehicle.AC6_FE_Sounds:FireServer(unpack(args))