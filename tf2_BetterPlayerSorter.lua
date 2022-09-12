
-- Priority's if you have them set as a diffrent priority
local FirstPriority = 10;
local SecondPriority = 7;
local ThirdPriority = 5;
local FourthPriority = 3;
local FifthPriority = -1;

-- Names for diffrent prioritys
local FirstTag = "Cheating"; -- Color Red
local SecondTag = "Closeting"; -- Color Blue
local ThirdTag = "Tryharding"; -- Color Orange
local FourthTag = "Annoying"; -- Color Brown
local FifthTag = "Friended"; -- Color Green

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

        -- if body is marked it will tell you, you can turn this off by setting it to true
        local isSomeone = false;

        for i, player in pairs(players) do
            if player ~= entities.GetLocalPlayer() then


                local steamid = client.GetPlayerInfo(player:GetIndex()).SteamID;
                local name = player:GetName();
                local priority = playerlist.GetPriority(steamid);

                if priority == FirstPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x07ff1100".. FirstTag.. "!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is".. FirstTag.. "!");
                    client.Command( "say_party ".. name.." is ".. FirstTag.. "!", true); 
                    isSomeone = true;
                elseif priority == SecondPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x070000FF".. SecondTag.. "!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is ".. SecondTag);
                    client.Command( "say_party ".. name.." is ".. SecondTag.. "!", true);
                    isSomeone = true;
                elseif priority == ThirdPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x07ff8800".. ThirdTag.. "!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is ".. ThirdTag);
                    client.Command( "say_party ".. name.." is ".. ThirdTag.. "!", true);
                    isSomeone = true;
                elseif priority == FourthPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x07694200".. FourthTag.. "!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is ".. FourthTag.. "!");
                    client.Command( "say_party ".. name.." is ".. FourthTag.. "!", true);
                elseif priority == FifthPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x071eff00".. FifthTag.. "!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is ".. FifthTag);
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
