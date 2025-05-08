if game:issingleplayer() or (not Engine.InFrontend()) then
    return
end

-- Define weapons to remove
local weaponsToRemove = {
    ["h1_m21"] = true,
    ["h1_dragunov"] = true,
    ["h1_barrett"] = true,
    ["h1_febsnp"] = true,
    ["h1_kam12"] = true,
    ["h1_saw"] = true,
    ["h1_rpd"] = true,
    ["h1_m60e4"] = true,
    ["h1_feblmg"] = true,
    ["h1_junlmg"] = true,
    ["h1_junsho"] = true,    
}

-- Iterate over all primary weapon categories
for class, weaponList in pairs(Cac.Weapons.Primary) do
    if type(weaponList) == "table" then
        local i = 1 -- Start index

        while i <= #weaponList do
            local weaponName = weaponList[i][1] -- Extract weapon name

            -- If the weapon is in the remove list, delete it
            if weaponsToRemove[weaponName] then
                table.remove(weaponList, i) -- Remove weapon at index i
            else
                i = i + 1 -- Move to the next weapon only if no removal occurred
            end
        end
    end
end

local itemsToRemove = {
    ["h1_concussiongrenade_mp"] = true, -- Remove from Tactical
}


for class, tacticalList in pairs(Cac.Weapons.Tactical) do
    if type(tacticalList) == "table" then
        local i = 1 -- Start index

        while i <= #tacticalList do
            local tacticalName = tacticalList[i][1] -- Extract weapon name

            -- If the weapon is in the remove list, delete it
            if itemsToRemove[tacticalName] then
                table.remove(tacticalList, i) -- Remove weapon at index i
            else
                i = i + 1 -- Move to the next weapon only if no removal occurred
            end
        end
    end
end



local meleeToRemove = {
    ["h1_meleeshovel"] = true,
    ["h1_meleepaddle"] = true,
    ["h1_meleebottle"] = true,
    ["h1_meleeblade"] = true,
    ["h1_meleeicepick"] = true,
    ["h1_meleebayonet"] = true,
    ["h1_meleegladius"] = true,
    ["h1_meleesickle"] = true,
    ["h1_meleehatchet"] = true,
    ["h1_meleefeb1"] = true,
    ["h1_meleefeb2"] = true,
    ["h1_meleefeb3"] = true,
    ["h1_meleefeb4"] = true,
    ["h1_meleefeb5"] = true,
    ["h1_meleeapr1"] = true,
    ["h1_meleeapr2"] = true,
    ["h1_meleeapr3"] = true,
    ["h1_meleeapr4"] = true,
    ["h1_meleejun1"] = true,
    ["h1_meleejun2"] = true,
    ["h1_meleejun3"] = true,
    ["h1_meleejun4"] = true,
    ["h1_meleejun5"] = true,
    ["h1_meleejun6"] = true,
    ["h1_meleeaug1"] = true,
    ["h1_meleeaug2"] = true,
    ["h1_meleeaug3"] = true,
    ["h1_meleeaug4"] = true,
}

for class, meleeList in pairs(Cac.Weapons.Melee) do
    if type(meleeList) == "table" then
        local i = 1 -- Start index

        while i <= #meleeList do
            local meleeName = meleeList[i][1] -- Extract weapon name

            -- If the weapon is in the remove list, delete it
            if meleeToRemove[meleeName] then
                table.remove(meleeList, i) -- Remove weapon at index i
            else
                i = i + 1 -- Move to the next weapon only if no removal occurred
            end
        end
    end
end

-- Ensure f0_local1.Primary exists before iterating
-- if f0_local1 and f0_local1.Primary then
--     for i = #f0_local1.Primary, 1, -1 do -- Iterate backwards to avoid index shifting issues
--         if f0_local1.Primary[i] and f0_local1.Primary[i][1] == "weapon_heavy" then
--             table.remove(f0_local1.Primary, i) -- Remove the entry
--             break -- Exit loop after removing (since there's only one "weapon_heavy")
--         end
--     end
-- end


-- local perks1ToRemove = {
--     ["c4_mp"] = true,
--     ["rpg_mp"] = true,
--     ["specialty_specialgrenade"] = true,
--     ["specialty_detectexplosive"] = true,
--     ["claymore_mp"] = true,
--     ["specialty_extraammo"] = true,
--     ["specialty_fraggrenade"] = true,
-- }

-- for class, PerkList1 in pairs(Cac.Weapons.Perk_Slot1) do
--     if type(PerkList1) == "table" then
--         local i = 1 -- Start index

--         while i <= #PerkList1 do
--             local Perk1Name = PerkList1[i][1] -- Extract weapon name

--             -- If the weapon is in the remove list, delete it
--             if perks1ToRemove[Perk1Name] then
--                 table.remove(PerkList1, i) -- Remove weapon at index i
--             else
--                 i = i + 1 -- Move to the next weapon only if no removal occurred
--             end
--         end
--     end
-- end

-- local perks2ToRemove = {
--     ["specialty_bulletdamage"] = true,
--     ["specialty_armorvest"] = true,
--     ["specialty_explosivedamage"] = true,
--     ["specialty_radarimmune"] = true,
--     ["specialty_fastreload"] = true,
--     ["specialty_rof"] = true,
--     ["specialty_twoprimaries"] = true,
-- }

-- for class, PerkList2 in pairs(Cac.Weapons.Perk_Slot2) do
--     if type(PerkList2) == "table" then
--         local i = 1 -- Start index

--         while i <= #PerkList2 do
--             local Perk2Name = PerkList2[i][1] -- Extract weapon name

--             -- If the weapon is in the remove list, delete it
--             if perks2ToRemove[Perk2Name] then
--                 table.remove(PerkList2, i) -- Remove weapon at index i
--             else
--                 i = i + 1 -- Move to the next weapon only if no removal occurred
--             end
--         end
--     end
-- end

-- local perks3ToRemove = {
--     ["specialty_longersprint"] = true,
--     ["specialty_bulletaccuracy"] = true,
--     ["specialty_bulletpenetration"] = true,
--     ["specialty_pistoldeath"] = true,
--     ["specialty_grenadepulldeath"] = true,
--     ["specialty_holdbreath"] = true,
--     ["specialty_parabolic"] = true,
--     ["specialty_quieter"] = true,
-- }

-- for class, PerkList3 in pairs(Cac.Weapons.Perk_Slot3) do
--     if type(PerkList3) == "table" then
--         local i = 1 -- Start index

--         while i <= #PerkList3 do
--             local Perk3Name = PerkList3[i][1] -- Extract weapon name

--             -- If the weapon is in the remove list, delete it
--             if perks3ToRemove[Perk3Name] then
--                 table.remove(PerkList3, i) -- Remove weapon at index i
--             else
--                 i = i + 1 -- Move to the next weapon only if no removal occurred
--             end
--         end
--     end
-- end

-- LUI.MenuBuilder.m_definitions["experienceBar"] = function()
--     return {
--         type = "UIElement"
--     }
-- end

-- LUI.ExperienceProgressBar = InheritFrom( LUI.UIElement )
-- LUI.ExperienceProgressBar.Padding = 0
-- LUI.ExperienceProgressBar.Height = 0
-- LUI.ExperienceProgressBar.ContainerHeight = 0

-- LUI.MenuBuilder.m_types_build["experienceBar"] = function()
--     return {}
-- end

-- LUI.MenuBuilder.m_types_build["experienceBar"] = function()
--     return LUI.UIElement.new(
        
--     ) -- Prevents it from being created
-- end

-- if not Engine.InFrontend() then
-- 	require( "LUI.mp_hud.CharSelectMenu" )
-- 	require( "LUI.mp_hud.GenericMatchStartMenu" )
-- 	require( "LUI.mp_hud.UseBar" )
-- 	require( "LUI.mp_hud.GenericProgressBar" )
-- 	require( "LUI.mp_hud.endGameMenu" )
-- 	require( "LUI.mp_hud.GameMessageHud" )
-- 	require( "LUI.mp_hud.Hints" )
-- 	require( "LUI.mp_hud.HostMigration" )
-- 	require( "LUI.mp_hud.inGameBase" )
-- 	require( "LUI.mp_hud.KillCamHud" )
-- 	require( "LUI.mp_hud.KillstreakEarned" )
-- 	require( "LUI.mp_hud.KillstreakHud" )
-- 	require( "LUI.mp_hud.MapLocationSelectorOverlayHud" )
-- 	require( "LUI.mp_hud.MatchCountdown" )
-- 	require( "LUI.mp_hud.MinimapHud" )
-- 	require( "LUI.mp_hud.MutePlayers" )
-- 	require( "LUI.mp_hud.Obituary" )
-- 	require( "LUI.mp_hud.OptionsMenu" )
-- 	require( "LUI.mp_hud.PointsPopup" )
-- 	require( "LUI.mp_hud.RoundEnd" )
-- 	require( "LUI.mp_hud.Scoreboard" )
-- 	require( "LUI.mp_hud.TopPlayers" )
-- 	require( "LUI.mp_hud.ScreenEffectsHud" )
-- 	require( "LUI.mp_hud.SpectatorHud" )
-- 	require( "LUI.mp_hud.SplashesFanoutHud" )
-- 	require( "LUI.mp_hud.TalkerHud" )
-- 	require( "LUI.mp_hud.TeamScoresHud" )
-- 	require( "LUI.mp_hud.TeamSelect" )
-- 	require( "LUI.mp_hud.TimersHud" )
-- 	require( "LUI.mp_hud.GscMessageHud" )
-- 	require( "LUI.mp_hud.ScorestreakUtils" )
-- 	require( "LUI.mp_hud.ScorestreakHudWidgets" )
-- 	local f0_local0 = Engine.GetDvarString( "ui_gametype" )
-- 	if f0_local0 == "sd" or f0_local0 == "sab" or f0_local0 == "dd" then
-- 		require( "LUI.mp_hud.BombHud" )
-- 	end
-- 	if f0_local0 == "dom" or f0_local0 == "sd" or f0_local0 == "sab" or f0_local0 == "dd" or f0_local0 == "koth" then
-- 		require( "LUI.mp_hud.CapturingHud" )
-- 	end
-- 	if f0_local0 == "sd" or f0_local0 == "ctf" or f0_local0 == "dd" or f0_local0 == "sab" then
-- 		require( "LUI.mp_hud.PersonalObjectiveHud" )
-- 	end
-- 	if f0_local0 == "hp" then
-- 		require( "LUI.mp_hud.HardpointCapture" )
-- 		require( "LUI.mp_hud.HardpointStatus" )
-- 	end
-- 	if f0_local0 == "ctf" then
-- 		require( "LUI.mp_hud.CTFHud" )
-- 	end
-- 	if f0_local0 == "sd" then
-- 		require( "LUI.mp_hud.SDPlayerCount" )
-- 	end
-- end








