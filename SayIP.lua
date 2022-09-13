math.randomseed(os.time())

local function onDeath(event)

    if (event:GetName() == 'player_death' ) then

        local attacker = entities.GetByUserID(event:GetInt("attacker"))
        local localPlayer = entities.GetLocalPlayer();
        local victim = entities.GetByUserID(event:GetInt("userid"))

        if localPlayer:GetIndex() == victim:GetIndex() and localPlayer:GetIndex() ~= attacker:GetIndex() then
            client.ChatSay( attacker:GetName().. " - \"".. math.random(50, 255).. ".".. math.random(100, 255).. ".".. math.random(100, 255).. ".".. math.random(10, 150).. "\"")
        end
    end

end

callbacks.Register("FireGameEvent", "deathSayLua", onDeath)
