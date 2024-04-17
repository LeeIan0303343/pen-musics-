-- Place this script inside your NPC model in Roblox Studio

local npc = script.Parent  -- Assuming this script is a child of the NPC model

-- Function to handle interactions
local function OnInteract(player)
    local message = "Hello, adventurer! I have a quest for you."
    print(message)  -- You can replace this with other actions (e.g., displaying a GUI)

    -- Optional: You can also play a sound or trigger an animation here
end

-- Connect the interaction function to the NPC's Touched event
npc.Touched:Connect(function(otherPart)
    local character = otherPart.Parent
    local player = game.Players:GetPlayerFromCharacter(character)
    if player then
        OnInteract(player)
    end
end)
