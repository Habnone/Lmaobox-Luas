
-- TriggerKey, then this button is pressed it will print out all the names and priority's (Idea by @xarq0n and few others)
local triggerKey = KEY_NUMLOCK
-- sendToPartyChat if set to true will send the message to party chat too
local sendToPartyChat = true;

-- Priority's if you have them set as a diffrent priority
-- Skips empty strings! Ty lbox developer for explaining me how to do that
local priorities = {
    "", -- Priority 1
    "", -- Priority 2
    "Annoying", -- Priority 3
    "", -- Priority 4
    "Tryhard", -- Priority 5
    "", -- Priority 6
    "Closet", -- Priority 7
    "", -- Priority 8
    "Bot", -- Priority 9
    "Cheater", -- Priority 10
}
-- Colors for priorities (hex) (default is white)
-- Sample hex codes
-- ===============
-- Red FF0000
-- Purple FF00FF
-- Geen 00FF00
-- Yellow FFFF00
-- Blue 0000FF
-- Aqua 00FFFF
-- ===============
local priorityColors = {
    "", -- Priority 1
    "", -- Priority 2
    "694200", -- Priority 3
    "", -- Priority 4
    "FF8800", -- Priority 5
    "", -- Priority 6
    "0000FF", -- Priority 7
    "", -- Priority 8
    "FF00FF", -- Priority 9
    "FF1100", -- Priority 10
}


-- Stuff copied from @lnx00 on lmaobox and github, way to dumb to make my own version of it so huge thanks to him
local lastButton = 0
local anyButtonDown = false
local function ButtonPressed(button) --
    if input.IsButtonDown(button) and button ~= lastButton then
        lastButton = button
        anyButtonDown = true
    end

    if input.IsButtonDown(button) == false and button == lastButton then
        lastButton = 0
        anyButtonDown = false
        return true
    end

    if anyButtonDown == false then
        lastButton = 0
    end
    return false
end

-- Intication that everything is working
print("========== BETTER PLAYER SORTER V3 ========== \n By Dexter");
client.ChatPrintf("\x03[LmaoBox] \x01 Lua enabled! ");
  
local function printPlayerInfo( cmd )
    if ButtonPressed(triggerKey) then 

        local players = entities.FindByClass("CTFPlayer");
        players[client.GetLocalPlayerIndex()] = nil;

        -- if body is marked it will tell you, you can turn this off by setting it to true
        local isSomeone = false;

        for i, player in pairs(players) do
            if player ~= entities.GetLocalPlayer() then

                local steamid = client.GetPlayerInfo(player:GetIndex()).SteamID;
                local name = player:GetName();
                local priority = playerlist.GetPriority(steamid);

                if priority ~= 0 or priority ~= -1 then
                    if priorities[priority] ~= nil and priorityColors[priority] ~= nil then
                        if string.len(priorities[priority]) > 0 then
                            client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x07".. priorityColors[priority].. priorities[priority].. "!");
                            isSomeone = true;
                            if sendToPartyChat ~= false then
                                client.Command( "say_party ".. name.." is ".. priorities[priority].. "!", true);
                            end
                        end
                    elseif priority == -1 then
                        client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x071eff00Friended!");
                        if sendToPartyChat ~= false then
                            client.Command( "say_party ".. name.." is ".. priorities[priority].. "!", true);
                        end
                    else
                        print("[Lmaobox] ".. steamid.. " - ".. name.. " Is clean!");
                    end
                end

            end
        end

        if isSomeone ~= true then
            client.ChatPrintf("\x03[LmaoBox] \x01 Nobody is marked ");
        end

    end
end

callbacks.Register( "CreateMove", "printPlayer", printPlayerInfo );