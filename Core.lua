-- v1.0.7

-- This script contains three event functions:
-- 1. Event function level up: Plays a custom sound when the player levels up.
-- 2. Mute default level up sound: Mutes the default level up sound.
-- 3. Chat Message: Displays a message to the player when they log in, informing them that the addon is no longer being updated and that its functionality has been merged into another addon called "BLU - Better Level Up!".

-- Event function level up
local frame_a = CreateFrame("Frame")
frame_a:RegisterEvent("PLAYER_LEVEL_UP")
frame_a:SetScript("OnEvent", function(self, event, ...)
	PlaySoundFile("Interface\\Addons\\MWLU\\MWLU.ogg", "Master")
end)

-- Mute default level up sound
local frame_b = CreateFrame("Frame")
frame_b:RegisterEvent("ADDON_LOADED")
frame_b:SetScript("OnEvent", function(self, event, ...)
	MuteSoundFile(569593)
end)

-- Chat Message
local frame_c = CreateFrame("Frame")
frame_c:RegisterEvent("PLAYER_LOGIN")
frame_c:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" then
		print("|cff231f20MWLU - Morrowind Level Up!|r Will no longer be receiving updates. Functionality has been merged into |c2d4b92ffBLU - Better Level Up!|r. If you're a fan of my sound addons, |c2d4b92ffBLU - Better Level Up!|r is available from all addon provider websites. Thank you!")
	end
end)
