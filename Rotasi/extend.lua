math.randomseed(os.time())

function SplitBot(MyBot, Divira)
    local TheBot = {}
    for w in MyBot:gmatch("([^:]+)") do
        table.insert(TheBot, w) 
    end

    if Divira == "growid" then
        return TheBot[1]
    else
        return TheBot[2]
    end
end

if GuestAkun then

    if not RandomName then
        RandomName = "G4NJARSZ"
    end
    
    function ThatName(ods)
        return string.sub(RandomName, ods, ods)..RandomName:gsub(string.sub(RandomName, ods, ods), "")
    end

    MyName = {}
    for i = 1, #ListGuest do
        if i >= 1 and i <= 26 then
            table.insert(MyName, string.char(64+i)..ThatName(1))
        elseif i >= 27 and i <= 52 then
            table.insert(MyName, string.char((64-26)+i)..ThatName(2))
        elseif i >= 53 and i <= 78 then
            table.insert(MyName, string.char((64-52)+i)..ThatName(3))
        elseif i >= 79 and i <= 104 then
            table.insert(MyName, string.char((64-78)+i)..ThatName(4))
        elseif i >= 105 and i <= 130 then
            table.insert(MyName, string.char((64-104)+i)..ThatName(5))
        elseif i >= 131 and i <= 156 then
            table.insert(MyName, string.char((64-130)+i)..ThatName(6))
        elseif i >= 157 and i <= 182 then
            table.insert(MyName, string.char((64-156)+i)..ThatName(7))
        elseif i >= 183 and i <= 208 then
            table.insert(MyName, string.char((64-182)+i)..ThatName(8))
        end
    end

    BotList = {}
    BotPassword = {}
    for q = 1, #ListGuest do
        table.insert(BotList, MyName[q])
        table.insert(BotPassword, MyName[q])
    end
    
end

if LoginWithRange then
    SplitLogin = {}
    for c in LoginWithRange:gmatch("([^-]+)") do 
        table.insert(SplitLogin, c) 
    end

    SlotLogin = {}
    for i = SplitLogin[1], SplitLogin[2] do
        table.insert(SlotLogin, i)
    end
end

function AlreadyLog(UserBot)
    for _, bot in pairs(getBots()) do
        if bot.name:upper() == UserBot:upper() then
            return false
        end
    end
    return true
end

function AturGuest(MyGuest)
    local SplitSocks = {}
    for w in MyGuest:gmatch("([^|]+)") do
        table.insert(SplitSocks, w) 
    end
    sleep(1000)
    setMac(SplitSocks[2])
    setRid(SplitSocks[1])
    connect()
end

for i,bot in pairs(getBots()) do
    if getBot().name:upper() == bot.name:upper() then
        Urutan = i
    end
end
