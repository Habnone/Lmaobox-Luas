-- Define a list of words
local words = {"drunk", "men", "fucker","is", "are", "I", "them", "if", "then", "because", "that", "and", "or", "when", "where", "kill", "someone", "scout", "demoman", "pyro", "heavy", "sniper", "spy", "fucking", "fuck", "help", "attack", "defend", "point", "cap", "stop", "killing"}

settings = {
    afterKills = 3,
    sayOnDeath = true
}


local killCount = 0

local triggerKey = KEY_NUMLOCK


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

-- Function to generate a random sentence
function generateRandomSentence(name)
    local sentence = {}
    local sentenceLength = math.random(4, 12)
    local attackerPosition = math.random(1, sentenceLength)  -- Random position for "attacker"
    
    for i = 1, sentenceLength do
      local randomWord = words[math.random(1, #words)]
      table.insert(sentence, randomWord)
      
      -- Insert "attacker" at the random position
      if i == attackerPosition then
        print("")
      end
    end
    
    return table.concat(sentence, " ")
end

-- Generate and print a random sentence
local function has_value(tab, val)
    if type(val) == "table" then
        for _, v in ipairs(val) do
            if has_value(tab, v) then
                return true
            end
        end
        return false
    else
        for _, value in ipairs(tab) do
            if value == val then
                return true
            end
        end
        return false
    end
end

local blacklist = {"Dexter", "bot", "f1", "f2", "kick", "aimbot", "wallhack", "walls", "hacking", "hack", "cheat", "cheating", "cheater", "sus", "bots", "kicking", "botting"}
-- Function to split a string into words

function splitWords(str)
    local words = {}
    print("==================================")
    for word in str:gmatch("%S+") do
        if not has_value(blacklist, word) then
            print("+ ".. word)
            table.insert(words, word)
        else
            print("- ".. word)
        end
    end
    print("==================================")
    return words
end


-- Function to update the words table
function updateWordsTable(wordsTable, newWords)
    for _, word in ipairs(newWords) do
        table.insert(wordsTable, word)
    end
end

-- Split the message into words


-- Update the words table


local function myCoolMessageHook(msg)

    if msg:GetID() == SayText2 then 
        msg:SetCurBit(8)-- skip 2 bytes of padding
        local chatType = msg:ReadString(256)
        local playerName = msg:ReadString(256)
        local message = msg:ReadString(256)
        local randomSentence = generateRandomSentence(victim)
        local start_timer = false
        if message ~= "TF_CHAT_ALL" and playerName ~= "Schizophrenia Gaming" then
            print(message)
            local rnd = math.random()
            client.ChatPrintf( "\x06[\x07FF1122LmaoBox\x06] \x04".. rnd )
            if rnd > 0.5 then
                client.ChatSay(string.lower(randomSentence))
            end
            local newWords = splitWords(message)
            updateWordsTable(words, newWords)
        end
    end

end

callbacks.Register("DispatchUserMessage", myCoolMessageHook)

local function sendMessage( cmd , timer)
    if ButtonPressed(triggerKey) then 
        local randomSentence = generateRandomSentence(victim)
        client.ChatSay(string.lower(randomSentence))
    end
    local time = 0
end

callbacks.Register( "CreateMove", "messagesend", sendMessage );
-- local function onDeathSay( event )

--     if (event:GetName() == 'player_death' ) then

--         local attacker = entities.GetByUserID(event:GetInt("attacker"))
--         local localPlayer = entities.GetLocalPlayer();
--         local victim = entities.GetByUserID(event:GetInt("userid"))

--         local randomSentence = generateRandomSentence(victim)
--         if localPlayer:GetIndex() == attacker:GetIndex() and localPlayer:GetIndex() ~= victim:GetIndex() then
--             killCount = killCount + 1
--             if killCount >= settings.afterKills then
--                 killCount = 0
--                 client.ChatSay(randomSentence)
--             else return end
--         end

--         if localPlayer:GetIndex() == victim:GetIndex() and localPlayer:GetIndex() ~= attacker:GetIndex() and settings.sayOnDeath == true then
--             client.ChatSay(randomSentence)
--         end
        

--     end
-- end

-- callbacks.Register("FireGameEvent", "deathSay", onDeathSay);