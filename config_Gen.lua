
client.ChatPrintf( "\x07049660[Config Generator] \x01Lua Activated!" )

-- ===== Config =====

local configureAimbot = true
local configureTrigger = true
local configureESP = true
local configureVisuals = true
local configureRadar = true
local configureMisc = true
local configureAA = true

-- ==================


local textBasedConfig = nil

local function configAimbot()

    if configureAimbot ~= false then
        gui.SetValue("Aim Bot", math.random(0, 1))
        
        textBasedConfig = math.random(0, 1)
        if textBasedConfig == 0 then
            gui.SetValue("Aim Key Mode", "hold-to-use")
        else
            gui.SetValue("Aim Key Mode", "press-to-toggle")
        end

        gui.SetValue("Aim Fov", math.random(0, 180))

        textBasedConfig = math.random(0, 2)
        if textBasedConfig == 2 then
            gui.SetValue("Aim Position", "hit scan")
        elseif textBasedConfig == 1 then
            gui.SetValue("Aim Position", "head")
        else
            gui.SetValue("Aim Position", "body")
        end

        textBasedConfig = math.random(0, 3)
        if textBasedConfig == 3 then
            gui.SetValue("Priority", "closest to crosshair")
        elseif textBasedConfig == 2 then
            gui.SetValue("Priority", "lowest health")
        elseif textBasedConfig == 1 then
            gui.SetValue("Priority", "highest health")
        else
            gui.SetValue("Priority", "smallest distance")
        end

        gui.SetValue("Auto Shoot", math.random(0, 1))
        
        textBasedConfig = math.random(0, 4)
        if textBasedConfig == 4 then
            gui.SetValue("Aim Method", "plain")
        elseif textBasedConfig == 3 then
            gui.SetValue("Aim Method", "smooth")
        elseif textBasedConfig == 2 then
            gui.SetValue("Aim Method", "assistance")
        elseif textBasedConfig == 1 then
            gui.SetValue("Aim Method", "silent")
        else
            gui.SetValue("Aim Method", "silent +")
        end

        textBasedConfig = math.random(0, 4)
        if textBasedConfig == 4 then
            gui.SetValue("Aim Method (Projectile)", "plain")
        elseif textBasedConfig == 3 then
            gui.SetValue("Aim Method (Projectile)", "smooth")
        elseif textBasedConfig == 2 then
            gui.SetValue("Aim Method (Projectile)", "assistance")
        elseif textBasedConfig == 1 then
            gui.SetValue("Aim Method (Projectile)", "silent")
        else
            gui.SetValue("Aim Method", "silent +")
        end

        gui.SetValue("Smooth Value", math.random(1, 60))
        
        textBasedConfig = math.random(0, 3)
        if textBasedConfig == 3 then
            gui.SetValue("Smooth Type", "default")
        elseif textBasedConfig == 2 then
            gui.SetValue("Smooth Type", "slow end")
        elseif textBasedConfig == 1 then
            gui.SetValue("Smooth Type", "constant")
        else
            gui.SetValue("Smooth Type", "fast end")
        end

        gui.SetValue("Preserve Target", math.random(0, 1))
        gui.SetValue("Target Switch Delay (MS)", math.random(0, 1500))
        gui.SetValue("First Shot Delay (MS)", math.random(0, 500))

        textBasedConfig = math.random(0, 3)
        if textBasedConfig == 3 then
            gui.SetValue("Projectile Aimbot", "aim")
        elseif textBasedConfig == 2 then
            gui.SetValue("Projectile Aimbot", "aim+draw")
        elseif textBasedConfig == 1 then
            gui.SetValue("Projectile Aimbot", "draw")
        else
            gui.SetValue("Projectile Aimbot", "off")
        end

        textBasedConfig = math.random(0, 3)
        if textBasedConfig == 3 then
            gui.SetValue("Melee Aimbot", "off")
        elseif textBasedConfig == 2 then
            gui.SetValue("Melee Aimbot", "legit")
        elseif textBasedConfig == 1 then
            gui.SetValue("Melee Aimbot", "rage")
        else
            gui.SetValue("Melee Aimbot", "always")
        end

        textBasedConfig = math.random(0, 2)
        if textBasedConfig == 2 then
            gui.SetValue("Medigun Aim", "off")
        elseif textBasedConfig == 1 then
            gui.SetValue("Medigun Aim", "all players")
        else
            gui.SetValue("Medigun Aim", "friends only")
        end

        gui.SetValue("Spread: Max Distance", math.random(0, 200))
        gui.SetValue("Aim When Reloading", math.random(0, 1))

        textBasedConfig = math.random(0, 2)
        if textBasedConfig == 2 then
            gui.SetValue("Crit Hack", "off")
        elseif textBasedConfig == 1 then
            gui.SetValue("Crit Hack", "force always")
        else
            gui.SetValue("Crit Hack", "force key")
        end

        textBasedConfig = math.random(0, 2)
        if textBasedConfig == 2 then
            gui.SetValue("Melee Crits", "off")
        elseif textBasedConfig == 1 then
            gui.SetValue("Melee Crits", "force always")
        else
            gui.SetValue("Melee Crits", "force key")
        end

        gui.SetValue("Aim Sentry", math.random(0, 1))
        gui.SetValue("Aim Other buildings", math.random(0, 1))
        gui.SetValue("Aim Stickies", math.random(0, 1))
        gui.SetValue("Aim Sentry Buster", math.random(0, 1))
        gui.SetValue("Aim NPC", math.random(0, 1))
        gui.SetValue("Ignore Steam Friends", math.random(0, 1))
        gui.SetValue("Ignore Deadringer", math.random(0, 1))
        gui.SetValue("Ignore Cloaked", math.random(0, 1))
        gui.SetValue("Ignore Disguised", math.random(0, 1))
        gui.SetValue("Ignore Taunting", math.random(0, 1))
        gui.SetValue("Ignore Bonked", math.random(0, 1))
        gui.SetValue("Ignore Vacc Ubercharge", math.random(0, 1))

        textBasedConfig = math.random(0, 2)
        if textBasedConfig == 2 then
            gui.SetValue("Heal/Buff Weapons", "teammates")
        elseif textBasedConfig == 1 then
            gui.SetValue("Heal/Buff Weapons", "enemies")
        else
            gui.SetValue("Heal/Buff Weapons", "both teams")
        end

        gui.SetValue("Prefer Medics", math.random(0, 1))
        gui.SetValue("Minigun Spinup", math.random(0, 1))
        gui.SetValue("Minigun tapfire", math.random(0, 1))
        gui.SetValue("Sniper: Zoomed Only", math.random(0, 1))
        gui.SetValue("Sniper: Auto Zoom", math.random(0, 1))
        gui.SetValue("Wait for charge", math.random(0, 1))
        gui.SetValue("Backtrack", math.random(0, 1))
        -- gui.SetValue("Minimal Priority", math.random(0, 10)) -- Disabled due to being ass
        gui.SetValue("NoSpread", math.random(0, 1))
        gui.SetValue("NoRecoil", math.random(0, 1))
        print("Aimbot Done")
        client.ChatPrintf( "\x07049660[Config Generator] \x01Aimbot Config Generated!" )

    end
end

local function configTrigger()
    if configureTrigger ~= false then
        gui.SetValue("Auto Backstab", math.random(0, 2))
        gui.SetValue("Auto Backstab FOV", math.random(0, 100))
        gui.SetValue("Disguise After Attack", math.random(0, 3))
        gui.SetValue("Ignore Razorback", math.random(0, 1))
        gui.SetValue("Auto Sapper", math.random(0, 2))
        gui.SetValue("Auto Detonate Sticky", math.random(0, 2))
        gui.SetValue("Auto Detonator", math.random(0, 1))
        gui.SetValue("Auto Airblast", math.random(0, 2))
        gui.SetValue("- Ignore Projectiles", math.random(0, 2))
        gui.SetValue("Auto Vaccinator", math.random(0, 1))
        gui.SetValue("Auto Ubercharge", math.random(0, 2))
        gui.SetValue("Health Percentage", math.random(0, 100))
        gui.SetValue("'Activate Uber' Trigger", math.random(0, 1))
        gui.SetValue("Trigger Shoot", math.random(0, 1))
        gui.SetValue("Trigger Melee", math.random(0, 1))

        textBasedConfig = math.random(0, 2)
        if textBasedConfig == 2 then
            gui.SetValue("Trigger Position", "hit scan")
        elseif textBasedConfig == 1 then
            gui.SetValue("Trigger Position", "head")
        else
            gui.SetValue("Trigger Position", "body")
        end

        gui.SetValue("Trigger Shoot Delay (MS)", math.random(0, 500))
        gui.SetValue("Sniper: Shoot Thru Teammates", math.random(0, 1))
        --gui.SetValue("Backtrack", math.random(0, 1)) -- Broken ATM
        print("Trigger Done")
        client.ChatPrintf( "\x07049660[Config Generator] \x01Trigger Config Generated!" )

    end
end
local function configESP()
    if configureESP ~= false then
        gui.SetValue("Players", math.random(0, 1))
        gui.SetValue("Enemy Only", math.random(0, 1))
        gui.SetValue("Friends", math.random(0, 1))
        gui.SetValue("Lobby Members", math.random(0, 1))
        gui.SetValue("Enemy Only", math.random(0, 1))
        gui.SetValue("Name", math.random(0, 1))
        gui.SetValue("Steam", math.random(0, 1))
        gui.SetValue("Health", math.random(0, 3))
        gui.SetValue("Weapon", math.random(0, 2))
        gui.SetValue("Ubercharge", math.random(0, 1))
        gui.SetValue("Distance", math.random(0, 1))
        gui.SetValue("Class", math.random(0, 2))
        gui.SetValue("Conditions", math.random(0, 1))
        gui.SetValue("Box", math.random(0, 7))
        gui.SetValue("View Angles", math.random(0, 2))
        gui.SetValue("Skeleton", math.random(0, 3))
        gui.SetValue("Glow", math.random(0, 2))
        gui.SetValue("Glow Style", math.random(1, 2))
        gui.SetValue("Glow Mode", math.random(1, 3))
        gui.SetValue("Glow Size", math.random(1, 30))
        gui.SetValue("Glow Weapon", math.random(0, 1))
        gui.SetValue("Local Player", math.random(0, 1))
        gui.SetValue("OffScreen Arrows", math.random(0, 2))
        gui.SetValue("Anti-Taunting", math.random(0, 1))
        gui.SetValue("Anti-Disguise", math.random(0, 1))
        gui.SetValue("Hide Cloaked", math.random(0, 1))
        -- gui.SetValue("Minimal Priority", math.random(0, 10)) not work
        gui.SetValue("Buildings", math.random(0, 1))
        gui.SetValue("Buildings Name", math.random(0, 1))
        -- gui.SetValue("Enemy Only", math.random(0, 1)) -- Not work
        gui.SetValue("Aim FOV Range", math.random(0, 1))
        gui.SetValue("Aim FOV Range Transparency", math.random(0, 100))
        gui.SetValue("Crit Indicator", math.random(0, 1))
        gui.SetValue("Crit Indicator Size", math.random(0, 9))
        gui.SetValue("BackTrack Ticks", math.random(0, 3))
        gui.SetValue("BackTrack Ticks Color", math.random(-16514817, -1))
        gui.SetValue("Text Color", math.random(1, 2))
        gui.SetValue("Far ESP", math.random(0, 1))
        gui.SetValue("Ammo/Medkit", math.random(0, 3))
        gui.SetValue("Dropped Ammo", math.random(0, 3))
        gui.SetValue("Respawn Timers", math.random(0, 1))
        gui.SetValue("MvM Money", math.random(0, 3))
        gui.SetValue("Halloween Item", math.random(0, 3))
        gui.SetValue("Power Ups", math.random(0, 3))
        gui.SetValue("NPC", math.random(0, 3))
        gui.SetValue("Capture Flag", math.random(0, 3))

        print("ESP Done")
        client.ChatPrintf( "\x07049660[Config Generator] \x01ESP Config Generated!" )

        
    end
end

local colorgen = nil

local function configVisuals()
    if configureVisuals ~= false then
        gui.SetValue("Colored Players", math.random(0, 1))
        gui.SetValue("Draw Mode", math.random(1, 4))
        gui.SetValue("Draw Style", math.random(1, 2))
        gui.SetValue("Enemy Only", math.random(0, 1)) -- Not Working ATM
        gui.SetValue("Friends", math.random(0, 1)) -- Not Working ATM
        gui.SetValue("Classic Wallhack", math.random(0, 1))
        gui.SetValue("Ammo/medkit", math.random(0, 1)) -- Not Working ATM
        gui.SetValue("Projectiles", math.random(0, 1)) -- Not Working ATM
        gui.SetValue("Red Team Color", math.random(-16514817, -1))
        gui.SetValue("Blue Team Color", math.random(-16514817, -1))
        gui.SetValue("Blue Team (Invisible)", math.random(-16514817, -1))
        gui.SetValue("Red Team (Invisible)", math.random(-16514817, -1))
        gui.SetValue("Aimbot Target Color", math.random(-16514817, -1))
        gui.SetValue("Gui Color", math.random(-16514817, -1))
        gui.SetValue("Thirdperson", math.random(0, 1))
        gui.SetValue("No Hands", math.random(0, 1))
        gui.SetValue("No Scope", math.random(0, 1))
        gui.SetValue("No Zoom", math.random(0, 1))
        gui.SetValue("Sky box", math.random(0, 8))
        gui.SetValue("Big Heads", math.random(0, 1))
        gui.SetValue("Enable Custom FOV", math.random(0, 1))
        gui.SetValue("Custom FOV Value", math.random(75, 120))
        gui.SetValue("Scoreboard: Custom Colors", math.random(0, 1))
        gui.SetValue("Scoreboard: Show Enemy Classes", math.random(0, 1))
        gui.SetValue("Night Mode", math.random(0, 100))
        gui.SetValue("Night Mode Color", math.random(-16514817, -1))
        gui.SetValue("Custom GUI Background", math.random(0, 1))
        print("Visuals Done")
        client.ChatPrintf( "\x07049660[Config Generator] \x01Visuals Config Generated!" )

    end
end

local function configRadar()
    if configureRadar ~= false then
        gui.SetValue("Radar", math.random(0, 1))
        -- gui.SetValue("Enemy Only", math.random(0, 1)) -- Still not work
        gui.SetValue("Radar Type", math.random(1, 2))
        gui.SetValue("Radar Size", math.random(20, 270))
        gui.SetValue("Custom Transparency", math.random(0, 255))

        gui.SetValue("Icon Style", math.random(1, 2))
        gui.SetValue("Icon Size", math.random(6, 32))
        gui.SetValue("Icon Background Size", math.random(0, 20))
        gui.SetValue("HealthBars", math.random(0, 1))
        gui.SetValue("Objectives", math.random(1, 2))

        --gui.SetValue("Ammo/Medkit", math.random(0, 1))
        --gui.SetValue("Dropped Ammo", math.random(0, 1))
        --gui.SetValue("Projectiles", math.random(0, 1))

        gui.SetValue("Spy Camera", math.random(0, 1))
        gui.SetValue("Camera Mode", math.random(1, 4))
        gui.SetValue("Camera Size", math.random(1, 100))
        gui.SetValue("Camera FOV", math.random(60, 120))

        print("Radar Done")
        client.ChatPrintf( "\x07049660[Config Generator] \x01Radar Config Generated!" )


    end
end

local function configMisc()
    if configureMisc ~= false then
        gui.SetValue("Name Stealer", math.random(0, 1))
        gui.SetValue("Name Linebreak", math.random(0, 1))
        gui.SetValue("NoiseMaker Spam", math.random(0, 1))
        gui.SetValue("Voice Menu Spam", math.random(0, 3))
        gui.SetValue("Chat Spammer", math.random(0, 2))
        gui.SetValue("Chat Spam Trigger", math.random(1, 2))
        gui.SetValue("Chat Spam Interval (S)", math.random(1, 60))
        gui.SetValue("Team Chat Only", math.random(0, 1))
        gui.SetValue("Remove Unprintable", math.random(0, 1))

        gui.SetValue("Bunny Hop", math.random(0, 1))
        gui.SetValue("Auto Strafe", math.random(0, 2))
        gui.SetValue("Rocket Jump", math.random(0, 1))
        gui.SetValue("Duck Jump", math.random(0, 1))
        gui.SetValue("Edge Jump", math.random(0, 1))
        gui.SetValue("No Push", math.random(0, 1))
        gui.SetValue("Anti-AFK Kick", math.random(0, 1))
        gui.SetValue("Auto Voting", math.random(0, 2))
        gui.SetValue("Announce voter", math.random(0, 1))

        gui.SetValue("Bypass sv_pure", math.random(0, 1))
        gui.SetValue("Bypass smac", math.random(0, 2))
        gui.SetValue("Conga Sliding", math.random(0, 1))
        gui.SetValue("Ping Reducer", math.random(0, 1))
        gui.SetValue("Anti-Autobalance", math.random(0, 1))
        gui.SetValue("Auto-Accept Item Drops", math.random(0, 1))
        gui.SetValue("COMP. Settings Unlock", math.random(0, 1))
        gui.SetValue("Hide MOTD", math.random(0, 1))
        -- gui.SetValue("Anti-OBS", math.random(0, 1))
        gui.SetValue("Clean Screenshots", math.random(0, 1))
        -- gui.SetValue("Region Selector", math.random(0, 7))

        gui.SetValue("Fake Latency", math.random(0, 1))
        gui.SetValue("Fake Latency Value (MS)", math.random(0, 1500))

        gui.SetValue("Font", math.random(1, 8))
        gui.SetValue("Font Uppercase", math.random(0, 3))
        gui.SetValue("Display Player List", math.random(0, 1))
        gui.SetValue("Display Info Panel", math.random(0, 1))
        -- gui.SetValue("Hide Userinfo in Menu", math.random(0, 1))
        gui.SetValue("Cat-Bot Priority", math.random(0, 10)) -- Patched idk why it still exists

        gui.SetValue("Display Spectator List", math.random(0, 1))
        gui.SetValue("Disable Aimbot When Spectated", math.random(0, 1))
        gui.SetValue("- Ignore Thirdperson Mode", math.random(0, 1))
        gui.SetValue("- Ignore Friends", math.random(0, 1))

        gui.SetValue("MvM Instant Revive", math.random(0, 1))
        gui.SetValue("MvM Instant Respawn", math.random(0, 1))
        gui.SetValue("MvM Auto Ready (F4)", math.random(0, 1))

        gui.SetValue("Double Tap (Beta)", math.random(0, 2))
        
        -- Not Adding Followbot shit bc who tf uses it if not medbots

        gui.SetValue("Weapon Swithcer", math.random(0, 1))
        gui.SetValue("Class Auto-Pick", math.random(0, 9))

        print("Miscs Done")
        client.ChatPrintf( "\x07049660[Config Generator] \x01Miscs Config Generated!" )

    end
end

local function configAA()
    if configureAA ~= false then
        gui.SetValue("Anti Aim", math.random(0, 1))
        gui.SetValue("Anti Aim - Pitch", math.random(0, 7))
        gui.SetValue("Anti Aim - Custom Pitch (Real)", math.random(-360, 360))
        gui.SetValue("Anti Aim - Yaw (Real)", math.random(0, 8))
        gui.SetValue("Anti Aim - Custom Yaw (Real)", math.random(-360, 360))
        gui.SetValue("Anti Aim - Yaw (Fake)", math.random(0, 8))
        gui.SetValue("Anti Aim - Custom Yaw (Fake)", math.random(-360, 360))

        gui.SetValue("Edge Detection", math.random(0, 1))
        gui.SetValue("Spin Speed", math.random(1, 10))
        gui.SetValue("Anti Aim Indicator", math.random(0, 1))
        gui.SetValue("Edge Detection", math.random(0, 1))
        gui.SetValue("Anti Aim Indicator", math.random(0, 1))
        gui.SetValue("Anti Aim Indicator Color", math.random(-16514817, -1))

        gui.SetValue("Anti Backstab", math.random(0, 1))
        gui.SetValue("Duck Speed", math.random(0, 1))

        gui.SetValue("Fake Lag", math.random(0, 1))
        gui.SetValue("Fake Lag Value (MS)", math.random(30, 330))
        gui.SetValue("Dynamic Fake Lag", math.random(0, 1))

        gui.SetValue("Aim Resolver", math.random(0, 1))
        gui.SetValue("Aim Resolver Pitch (Default)", math.random(0, 1))

        print("AA Done")
        client.ChatPrintf( "\x07049660[Config Generator] \x01Anti Aim Config Generated!" )

    end
end

configAimbot()
configTrigger()
configESP()
configVisuals()
configRadar()
configMisc()
configAA()

print("All configured!")
client.ChatPrintf( "\x07049660[Config Generator] \x01All Done!" )
