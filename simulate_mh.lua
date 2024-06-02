local NDOORS = tonumber(arg[1]) or 3

-- Function to simulate the game
function simulateMontyHall()
    -- Place the car behind a random door
    local carBehind = math.random(1, NDOORS)
    
    -- Player's initial choice
    local playerChoice = math.random(1, NDOORS)
    string.format("player's choice: %d\n",playerChoice)
    
    -- Game maker opens a door with nothing behind it
    local openDoor
    repeat
        openDoor = math.random(1, NDOORS)
    until openDoor ~= carBehind and openDoor ~= playerChoice
    
    -- Ask the player if they want to change their pick
    local changePick = true -- Change the pick for demonstration purposes
    string.format("change pick: %s\n",changePick)
    
    -- If the player decides to change their pick
    if changePick then
        local newChoice
        repeat
            newChoice = math.random(1, NDOORS)
        until newChoice ~= playerChoice and newChoice ~= openDoor
        playerChoice = newChoice
        string.format("new choice : %d\n",newChoice)
    end
    
    -- Check if the player's final choice was the one with the car
    local win = (playerChoice == carBehind)
    
    -- Return the result
    return win
end

-- Simulate the game multiple times to see the outcome
math.randomseed(os.time()) -- Seed the random number generator
local totalSimulations = 10000 -- Number of simulations
local wins = 0 -- Counter for wins

for i = 1, totalSimulations do
    if simulateMontyHall() then
        wins = wins + 1
    end
end

-- Calculate the win percentage
local winPercentage = (wins / totalSimulations) * 100
print("Win percentage without changing the pick: " .. 1.00/NDOORS*100 .. "%")
print("Win percentage when changing the pick: " .. winPercentage .. "%")