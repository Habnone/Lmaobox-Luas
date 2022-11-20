
local karma = 0;


local function onDeath(event)

    if (event:GetName() == 'player_death' ) then

        local localPlayer = entities.GetLocalPlayer();
        local attacker = entities.GetByUserID(event:GetInt("attacker"))
        local userid = entities.GetByUserID(event:GetInt("userid"))
        local assister = entities.GetByUserID( event:GetInt("assister"))


        if (localPlayer:GetIndex() == userid:GetIndex()) then
            karma = karma - 5
            client.ChatPrintf("\x07FF69B4 You just lost \x07B8383B-5\x07FF69B4 karma! You now have \x0732CD32".. karma.. "\x07FF69B4 karma!")
        elseif (attacker:GetIndex() == localPlayer:GetIndex()) then
            karma = karma + 2
            client.ChatPrintf("\x07FF69B4 You just gained \x075885A2+2\x07FF69B4 karma! You now have \x0732CD32".. karma.. "\x07FF69B4 karma!")
        elseif (assister:GetIndex() == localPlayer:GetIndex()) then
            karma = karma + 1
            client.ChatPrintf("\x07FF69B4 You just gained \x075885A2+1\x07FF69B4 karma! You now have \x0732CD32".. karma.. "\x07FF69B4 karma!")
        end
    end
end

callbacks.Register("FireGameEvent", "whenDeath", onDeath)