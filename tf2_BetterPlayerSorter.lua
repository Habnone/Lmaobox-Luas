
-- Priority's if you have them set as a diffrent priority
local CheatersPriority = 10;
local TryhardPriority = 5;
local AnnoyingPriority = 3;
local FriendsPriority = -1;

-- TriggerKey, then this button is pressed it will print out all the names and priority's (Idea by @xarq0n and few others)
local triggerKey = KEY_NUMLOCK

-- Stuff copied from @lnx00 on lmaobox and github, way to dumb to make my own version of it so huge thanks to him
local lastButton = 0
local anyButtonDown = false
local function ButtonReleased(button) --
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
print("========== BETTER PLAYER SORTER V2.3 ========== \n By Dexter");
client.ChatPrintf("\x03[LmaoBox] \x01 Lua enabled! ");

local players = entities.FindByClass("CTFPlayer")
players[client.GetLocalPlayerIndex()] = nil 

local function printPlayerInfo( cmd )
    if ButtonReleased(triggerKey) then 

        local isSomeone = false;

        for i, player in pairs(players) do
            if player ~= entities.GetLocalPlayer() then


                local steamid = client.GetPlayerInfo(player:GetIndex()).SteamID;
                local name = player:GetName();
                local priority = playerlist.GetPriority(steamid);

                if priority == CheatersPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x07ff1100cheating!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is cheating!");
                    client.Command( "say_party ".. name.." is cheating!", true); 
                    isSomeone = true;
                elseif priority == TryhardPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is a \x07ff8800tryhard!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is a tryhard!");
                    client.Command( "say_party ".. name.." is a tryhard!", true);
                    isSomeone = true;
                elseif priority == FriendsPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x071eff00friended!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is a friended!");
                    isSomeone = true;
                elseif priority == AnnoyingPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is an \x07694200annoying!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is annoying!");
                    client.Command( "say_party ".. name.." is annoying!", true);
                    isSomeone = true;
                else
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is clean!");
                end
            end
        end

        if isSomeone ~= true then
            client.ChatPrintf("\x03[LmaoBox] \x01 Nobody is marked ");
        end

    end
end

callbacks.Register( "CreateMove", "printPlayer", printPlayerInfo )
