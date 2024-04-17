-- Place this script inside your NPC model in Roblox Studio

local npc = script.Parent  -- Assuming this script is a child of the NPC model

-- Function to handle interactions
local function OnInteract(player)
    local message = "Hello, adventurer! I have a quest for you."
    print(message)  -- You can replace this with other actions (e.g., displaying a GUI)

    -- Optional: You can also play a sound or trigger an animation here
    -- Example: npc.Sound:Play() or npc.Animation:Play()
end

-- Connect the interaction function to the NPC's Touched event
npc.Touched:Connect(function(otherPart)
    local character = otherPart.Parent
    local player = game.Players:GetPlayerFromCharacter(character)
    if player then
        OnInteract(player)
    end
end)

-- Optional: Add more functionality
-- For instance, you can create a quest system, store quest progress, or track completed quests
-- You can also add more NPCs with unique interactions and quests

-- Example of a quest system:
local quests = {
    {
        name = "Retrieve the Lost Amulet",
        description = "Find the ancient amulet hidden in the forest.",
        reward = "500 gold coins",
        completed = false,
    },
    -- Add more quests here
}

-- Function to check quest completion
local function CheckQuestCompletion(player)
    for _, quest in pairs(quests) do
        if not quest.completed then
            -- Check if the player has completed this quest
            -- Example: if player.Inventory:HasItem("AncientAmulet") then
            -- Mark the quest as completed and give the reward
            quest.completed = true
            print("Quest completed! You've earned " .. quest.reward)
        end
    end
end

-- Connect the quest check function to a custom event (e.g., when the player collects an item)
-- Example: player.Inventory.ItemCollected:Connect(CheckQuestCompletion)

-- Remember to replace placeholders with your own content and explore more features!
