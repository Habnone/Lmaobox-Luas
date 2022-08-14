local CheatersPriority = 10;
local TryhardPriority = 5;
local FriendsPriority = -1;

local function outcaller(event)
    local players = entities.FindByClass("CTFPlayer")
    if (event:GetName() == 'localplayer_respawn' ) then
        for i, player in pairs(players) do
            if player ~= entities.GetLocalPlayer() then
                local steamid = client.GetPlayerInfo(player:GetIndex()).SteamID;
                local name = player:GetName();
                local priority = playerlist.GetPriority(steamid);
                if priority == CheatersPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x07ff1100cheating!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is cheating!");
                elseif priority == TryhardPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is a \x07ff8800tryhard!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is a tryhard!");
                elseif priority == FriendsPriority then
                    client.ChatPrintf("\x03[LmaoBox] \x01\"".. name.. "\" Is \x071eff00friended!");
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is a friended!");
                else
                    print("[Lmaobox] ".. steamid.. " - ".. name.. " Is clean!");
                end
            end
        end
    end
end
callbacks.Register("FireGameEvent", "playerLogger", outcaller)
