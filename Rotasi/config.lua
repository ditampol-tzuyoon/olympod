if ShowIP then
    Lihatin = "Lihatin"
else
    Lihatin = "Gak"
end

if Jastip then
    Gajian = true
end

LogoPartai = {
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/demokrat.png",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/gerindra.png",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/golkar.png",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/nasdem.png",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/pdip.jpeg",
    "https://raw.githubusercontent.com/ditampol-tzuyoon/jnck/main/partai/perindo.png"
}

RandomChat = {
    "`cOhdear Store `2Awalnya hanya tersedia di Facebook!",
    "`2Awalnya dikenal dengan sebutan `cPabrik Lgrid",
    "`2Ketika masih v1 harganya hanya `c50 DLs `2aja",
    "`2Buyer Pertama? `cOwner`2pun Lupa Orangnya",
    "`2700K `4Drop to `2320K! `cFeb 23",
    "`2Scr1pt ini telah ada semenjak jaman `cATOM! `2User Teo juga",
    "`2Benwep muncul ketika boomingnya `cRotasi Farm",
    "`224Jam? `cJaman Teo cuman dikenal Pabrik Basic Seed.",
    "`2Hamem3k dan Seth4n `cJika Kenal Nick tsb, berarti anda player lama."
}

Lopar = math.random(1, #LogoPartai)

function ohdtag(logger)

    if not HideWebhook then
    
        if bot.state ~= 5 then
            if Jastip then
                Ment = "<@".. userdc .."> <@&".. UserID_Role ..">"
            else
                Ment = "<@".. userdc ..">"
            end
        else
            Ment = ""
        end
            
        if bot.state == 5 then
            statzBot = ":green_circle:"
            Warna = 7405312
        else
            statzBot = ":red_circle:"
            Warna = 16711680
        end
        
        kalimatku = "\n~\nLINK INFO: "
        chinfo = "\nCHANNEL:"
        local script = [[
            $gethook = "]]..MainHook..[["
            $w = "]]..PingHook..[["

            [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
            $ambilhook = Invoke-RestMethod -Uri $gethook -Method GET
            $chid = $ambilhook.channel_id
            $guid = $ambilhook.guild_id
            $hukid = "]]..HookID..[["
            $Morez = "https://discord.com/channels/" + $guid + "/" + $chid + "/" + $hukid

            [System.Collections.ArrayList]$embedArray = @()
            $descriptions = ']].. logger ..[[ ]].. kalimatku ..[[' + $Morez + ']].. chinfo ..[[ <#' + $chid + '>'
            $color       = ']]..Warna..[['

            $embedObject = [PSCustomObject]@{
                description = $descriptions
                color       = $color
            }

            $embedArray.Add($embedObject) | Out-Null

            $Body = [PSCustomObject]@{
                embeds = $embedArray
                'username' = ']]..bot.name..[[|OD2320'
                'content' = ']]..Ment..[['
            }

            Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
        ]]

        local pipe = io.popen("powershell -command -", "w")
        pipe:write(script)
        pipe:close()
    end
end

function ohdmod(logger)

    InfoBy = "\nInfo By <@" .. userdc .. ">"
    TagRole = "<@&1057182557185257522>"
    Warna = 16711680
        
    local script = [[
        $w = "]]..modpek..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[[ ]]..InfoBy..[['
        $color       = ']]..Warna..[['

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{
            embeds = $embedArray
            'username' = 'ModsMmk | Od2320'
            'content' = ']]..TagRole..[['
        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

function odnotice(logger)

    if not HideWebhook then
    
        if bot.state == 5 then
            statzBot = ":green_circle:"
            Warna = 7405312
        else
            statzBot = ":red_circle:"
            Warna = 16711680
        end

        if Jastip then
            if userdc then
                Mention = "<@".. userdc .."> <@&".. UserID_Role ..">"
            else
                Mention = ""
            end
        else
            if userdc then
                Mention = "<@"..userdc..">"
            else
                Mention = ""
            end
        end

        local script = [[
            $w = "]]..PingHook..[["

            [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

            [System.Collections.ArrayList]$embedArray = @()
            $descriptions = ']].. logger ..[['
            $color       = ']]..Warna..[['

            $embedObject = [PSCustomObject]@{
                description = $descriptions
                color       = $color
            }

            $embedArray.Add($embedObject) | Out-Null

            $Body = [PSCustomObject]@{
                embeds = $embedArray
                'username' = ']]..bot.name..[[ | OD2320'
                'content' = ']]..Mention..[['
            }

            Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
        ]]

        local pipe = io.popen("powershell -command -", "w")
        pipe:write(script)
        pipe:close()
    end
end

function odplant(logger)

if not HideWebhook then

    MenitRdp = (os.date("*t", os.time()).min) + 0
    JamRdp = (os.date("*t", os.time()).hour) + Selisih

    if MenitRdp < 10 then
        myMenit = "0"..MenitRdp
    else
        myMenit = MenitRdp
    end

    if JamRdp >= 24 then
        JamRdp = JamRdp - 24
    end

    if JamRdp < 10 then
        myJam = "0"..JamRdp
    else
        myJam = JamRdp
    end

    if block == 4584 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/pepper.webp"
    elseif block == 5666 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/LaserGrid.webp"
    elseif block == 3004 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/ftank.webp"
    elseif block == 340 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/chand.webp"
    elseif block == 8640 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/sambalado.webp"
    else
        Thumbs = ""
    end

    TanamWorld = "Planting ("..nPlant.." of "..#WorldPlant.." Worlds)"
    Warna = 7405312
    Banteng = math.random(1, #LogoPartai)

    SendPlant = PlantHook.."/messages/"..PlantMsg

    local script = [[
        $w = "]]..SendPlant..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[['
        $color       = ']]..Warna..[['

        $footerObject = [PSCustomObject]@{
            text = 'Bonus Planting' + "`n" + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }

        $authorObject = [PSCustomObject]@{
            name = "Continue Plant || Author : Ohdear#2320"
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "]]..LogoPartai[Banteng]..[["
        }

        $fieldArray = @(

            @{
                name = "]]..TanamWorld..[["
                value = "]]..IngfoPlant()..[["
                inline = "false"
            }
        )

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
            footer      = $footerObject
            thumbnail   = $thumbnailObject
            author      = $authorObject
            fields      = $fieldArray
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{
            embeds = $embedArray
            'username' = ']]..bot.name..[[ | OD2320'
        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Patch -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
    end
end

function ciduklu(logger, maUrlz)

    AllDelay = "\n~\n"..emot_bot.." "..bot.name.." (Lv "
    ..bot.level..")\nBreak / Place / HT / Plant / World : **("
    ..delaypnb.." / "..delayplace.." / "..delayht.." / "
    ..delayplant.." / "..delayworld..")**"
    
    MenitRdp = (os.date("*t", os.time()).min) + 0
    JamRdp = (os.date("*t", os.time()).hour) + Selisih

    if MenitRdp < 10 then
        myMenit = "0"..MenitRdp
    else
        myMenit = MenitRdp
    end

    if JamRdp >= 24 then
        JamRdp = JamRdp - 24
    end

    if JamRdp < 10 then
        myJam = "0"..JamRdp
    else
        myJam = JamRdp
    end

    if block == 4584 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/pepper.webp"
    elseif block == 5666 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/LaserGrid.webp"
    elseif block == 3004 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/ftank.webp"
    elseif block == 340 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/chand.webp"
    elseif block == 8640 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/sambalado.webp"
    else
        Thumbs = ""
    end

    local script = [[

    $w = "]]..maUrlz..[["

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $interface = Get-NetConnectionProfile
    $ip = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4 | ForEach-Object IPAddress
    $CompObject = Get-WmiObject -Class WIN32_OperatingSystem
    $Rams = ((($CompObject.TotalVisibleMemorySize - $CompObject.FreePhysicalMemory)*100)/ $CompObject.TotalVisibleMemorySize)
    $Ram = [Math]::Floor($Rams)
    $CPUs = (Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select Average).Average
    $CPU = [Math]::Floor($CPUs)

    [System.Collections.ArrayList]$embedArray = @()
    $descriptions = ']].. logger ..[[ ]]..AllDelay..[['
    $color       = ']]..math.random(1000000,9999999)..[['

    $footerObject = [PSCustomObject]@{
        text = 'IP : ' + $ip + "`n" + $Tanggal + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
        icon_url = ']].. Thumbs ..[['
    }

    $thumbnailObject = [PSCustomObject]@{
        url = ']].. Thumbs ..[['
    }

    $authorObject = [PSCustomObject]@{
        name = ']].. Tizy ..[[' + " || CPU : " + $CPU + "%" + " || RAM : " + $Ram + "%"
        url = "https://discord.gg/TjVwdgma74"
        icon_url = "]]..LogoPartai[Lopar]..[["
    }


    $embedObject = [PSCustomObject]@{
        description = $descriptions
        color       = $color
        footer      = $footerObject
        thumbnail   = $thumbnailObject
        author      = $authorObject
    }

    $embedArray.Add($embedObject) | Out-Null

    $Body = [PSCustomObject]@{

        embeds = $embedArray

        'username' = ']]..Tizy..[['

    }

    Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

function ohdsay(logger, hookURL, Pings)

if not HideWebhook then

if namapack == "crackers" then
    Winter = "\n~\n>> Happy Christmas! Crackers Bought **("..EventBuy.." of 20)**"
else
    Winter = ""
end
    
if LinkImage then
    imagez = LinkImage
else
    imagez = ""
end

    if Soil then
        Judulz = "Rotasi Soil ("..versi..") || "..#ListPembeli.." Users."
    else
        Judulz = "Rotasi Farm ("..versi..") || "..#ListPembeli.." Users."
    end

    if Pings then
        ingfo = "<@" .. userdc .. ">"
    else
        ingfo = ""
    end

    MenitRdp = (os.date("*t", os.time()).min) + 0
    JamRdp = (os.date("*t", os.time()).hour) + Selisih

    if MenitRdp < 10 then
        myMenit = "0"..MenitRdp
    else
        myMenit = MenitRdp
    end

    if JamRdp >= 24 then
        JamRdp = JamRdp - 24
    end

    if JamRdp < 10 then
        myJam = "0"..JamRdp
    else
        myJam = JamRdp
    end

    if Istirahat then
        TempOff = "\n~\n**Bot akan Off Tiap Jam (_" ..InfoTidur().. "_) Selama " .. DelayTidur .. " Menit.**\n~\n"
    else
        TempOff = ""
    end 

    if block == 4584 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/pepper.webp"
    elseif block == 5666 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/LaserGrid.webp"
    elseif block == 3004 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/ftank.webp"
    elseif block == 340 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/chand.webp"
    elseif block == 8640 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/sambalado.webp"
    else
        Thumbs = ""
    end

    if bot.state == 5 then
        statzBot = ":green_circle:"
        Warna = 7405312
        MyStatus = "Online"
    else
        statzBot = ":red_circle:"
        Warna = 16711680
        MyStatus = "Offline"
    end


    if bot:IsWearing(98) then
        PickBotz = ":green_circle: **Pickaxe** (x"..TotItem(98)..")"
    else
        PickBotz = ":red_circle: **Pickaxe** (x"..TotItem(98)..")"
    end

    if ChangeBot then
        targetlv = "("..bot.level.."/"..targetlevel..")"
    else
        targetlv = bot.level
    end

AllDelay = "\n~\nBreak / Place / HT / Plant / World : **("
..delaypnb.." / "..delayplace.." / "..delayht.." / "
..delayplant.." / "..delayworld..")**"

    WorldSkrg = (bot.world):upper()
    if RingkasWorldName then
        Muncul = false
        for _, v in pairs(World) do
            if v:upper() == WorldSkrg then
                Muncul = true
            end
        end
        for _, v in pairs(WorldSeed) do
            if v:upper() == WorldSkrg then
                Muncul = true
            end
        end
        for _, v in pairs(WorldPack) do
            if v:upper() == WorldSkrg then
                Muncul = true
            end
        end
        if WorldAxe:upper() == WorldSkrg then
            Muncul = true
        end
        if Jastip then
            if WorldGaji:upper() == WorldSkrg then
                Muncul = true
            end
        end
        if Muncul then
            WorldSkrg = WorldSkrg:gsub(string.sub(WorldSkrg, 1, string.len(WorldSkrg) - 3), "")
        end
    end

    if hookURL == MainHook then
        if HookID ~= "XXX" then
            URLWeb = hookURL.."/messages/"..HookID
            methodz = "Patch"
        else
            URLWeb = hookURL
            methodz = "Post"
        end
        local script = [[

        $w = "]]..URLWeb..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $interface = Get-NetConnectionProfile
        $ip = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4 | ForEach-Object IPAddress
        $CompObject = Get-WmiObject -Class WIN32_OperatingSystem
        $Rams = ((($CompObject.TotalVisibleMemorySize - $CompObject.FreePhysicalMemory)*100)/ $CompObject.TotalVisibleMemorySize)
        $Ram = [Math]::Floor($Rams)
        $CPUs = (Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select Average).Average
        $CPU = [Math]::Floor($CPUs)
        $LimitCPUz = ']].. LimitCPU ..[['
        $LihatIP = ']].. Lihatin ..[['

        if($CPU -le $LimitCPUz){
            $Mention = ']]..ingfo..[['
        }else{
            $Mention = 'Cek CPU Ngab <@]].. userdc ..[[> !'
        }

        if($LihatIP -match "Lihatin"){
            $YourIP = $ip
        }else{
            $YourIP = 'IP Disembunyikan'
        }

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[[ ]]..TempOff..[[ ]]..AllDelay..[['
        $color       = ']]..Warna..[['


        $footerObject = [PSCustomObject]@{
            text = 'Rotation Farm by Ohdear#2320' + "`n" + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }
        

        $authorObject = [PSCustomObject]@{
            name = "]]..Judulz..[[ || Author : Ohdear#2320"
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "]]..LogoPartai[Lopar]..[["
        }

        $fieldArray = @(

            @{
                name = "]]..emot_bot..[[ Bot Name"
                value = "]]..bot.name..[["
                inline = "false"
            }

            @{
                name = ":earth_asia: Current World"
                value = "]]..WorldSkrg..[["
                inline = "true"
            }
            @{
                name = "]]..emot_pickaxe..[[ Tools"
                value = "]]..PickBotz..[["
                inline = "true"
            }
            @{
                name = "]]..emot_rank..[[ Bot Level"
                value = "]]..targetlv..[["
                inline = "true"
            }

            @{
                name = "]]..statzBot..[[ Bot Status"
                value = "**]]..(MyStatus):upper()..[[**"
                inline = "true"
            }
            @{
                name = "]]..emot_gems..[[ Gems in Backpack"
                value = "]]..bot.gems..[[/]]..hargapack..[["
                inline = "true"
            }

            @{
                name = "]]..emot_computer..[[ RDP Info"
                value = "$YourIP`nCPU USAGE $CPU%`nRAM USAGE $RAM%"
                inline = "true"
            }
            @{
                name = ":gem: ]]..GetNameID(FavItem)..[[ in Backpack"
                value = "]]..(TotItem(FavItem))..[[ Items"
                inline = "true"
            }
            @{
                name = "]]..emot_gems..[[ All Gems and Timers"
                value = "]]..AllGems..[[ Gems`n]]..BotRun..[["
                inline = "true"
            }

            @{
                name = "]]..emot_world..[[ World Info"
                value = "]]..ShowWorld..[[]]..Winter..[["
                inline = "false"
            }
        )

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
            footer      = $footerObject
            thumbnail   = $thumbnailObject
            author      = $authorObject
            fields      = $fieldArray
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{

            embeds = $embedArray

            'username' = ']]..bot.name..[[|OD2320'
            'content' = $Mention

        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method ]]..methodz..[[ -ContentType 'application/json'
        ]]
        local pipe = io.popen("powershell -command -", "w")
        pipe:write(script)
        pipe:close()

    elseif hookURL == WebhookSeed then
        if HookIDSeed ~= "XXX" then
            URLWeb = hookURL.."/messages/"..HookIDSeed
            methodz = "Patch"
        else
            URLWeb = hookURL
            methodz = "Post"
        end
        local script = [[

        $w = "]]..URLWeb..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $interface = Get-NetConnectionProfile
        $ip = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4 | ForEach-Object IPAddress
        $CompObject = Get-WmiObject -Class WIN32_OperatingSystem
        $Rams = ((($CompObject.TotalVisibleMemorySize - $CompObject.FreePhysicalMemory)*100)/ $CompObject.TotalVisibleMemorySize)
        $Ram = [Math]::Floor($Rams)
        $CPUs = (Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select Average).Average
        $CPU = [Math]::Floor($CPUs)
        $LimitCPUz = ']].. LimitCPU ..[['
        $LihatIP = ']].. Lihatin ..[['

        if($CPU -le $LimitCPUz){
            $Mention = ']]..ingfo..[['
        }else{
            $Mention = 'Cek CPU Ngab <@]].. userdc ..[[> !'
        }

        if($LihatIP -match "Lihatin"){
            $YourIP = $ip
        }else{
            $YourIP = 'IP Disembunyikan'
        }

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[['
        $color       = ']]..Warna..[['


        $footerObject = [PSCustomObject]@{
            text = 'Rotation Farm by Ohdear#2320' + "`n" + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }

        $authorObject = [PSCustomObject]@{
            name = "]]..Judulz..[[ || Author : Ohdear#2320 "
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "]]..LogoPartai[Lopar]..[["
        }

        $fieldArray = @(
            @{
                name = "]]..emot_bot..[[ Bot Name"
                value = "]]..bot.name..[["
                inline = "false"
            }
            @{
                name = "]]..emot_world..[[ ]]..GetNameID(seed)..[["
                value = "]]..ShowSeed..[["
                inline = "true"
            }
            @{
                name = "]]..emot_tas..[[ Backpack (Seed)"
                value = "]]..TotItem(seed)..[[ ]]..GetNameID(seed)..[["
                inline = "true"
            }
            @{
                name = "]]..emot_world..[[ Detail Kordinat"
                value = "]]..InfoDrop()..[["
                inline = "false"
            }
        )

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
            footer      = $footerObject
            thumbnail   = $thumbnailObject
            author      = $authorObject
            fields      = $fieldArray
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{

            embeds = $embedArray

            'username' = ']]..bot.name..[[|OD2320'
            'content' = $Mention

        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method ]]..methodz..[[ -ContentType 'application/json'
        ]]
        local pipe = io.popen("powershell -command -", "w")
        pipe:write(script)
        pipe:close()

    elseif hookURL == WebhookPack then
        if HookIDPack ~= "XXX" then
            URLWeb = hookURL.."/messages/"..HookIDPack
            methodz = "Patch"
        else
            URLWeb = hookURL
            methodz = "Post"
        end
        local script = [[

        $w = "]]..URLWeb..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $interface = Get-NetConnectionProfile
        $ip = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4 | ForEach-Object IPAddress
        $CompObject = Get-WmiObject -Class WIN32_OperatingSystem
        $Rams = ((($CompObject.TotalVisibleMemorySize - $CompObject.FreePhysicalMemory)*100)/ $CompObject.TotalVisibleMemorySize)
        $Ram = [Math]::Floor($Rams)
        $CPUs = (Get-WmiObject Win32_Processor | Measure-Object -Property LoadPercentage -Average | Select Average).Average
        $CPU = [Math]::Floor($CPUs)
        $LimitCPUz = ']].. LimitCPU ..[['
        $LihatIP = ']].. Lihatin ..[['

        if($CPU -le $LimitCPUz){
            $Mention = ']]..ingfo..[['
        }else{
            $Mention = 'Cek CPU Ngab <@]].. userdc ..[[> !'
        }

        if($LihatIP -match "Lihatin"){
            $YourIP = $ip
        }else{
            $YourIP = 'IP Disembunyikan'
        }

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[['
        $color       = ']]..Warna..[['


        $footerObject = [PSCustomObject]@{
            text = 'Rotation Farm by Ohdear#2320' + "`n" + '(Time : ]]..myJam..[[:]]..myMenit..[[)'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }

        $authorObject = [PSCustomObject]@{
            name = "]]..Judulz..[[ || Author : Ohdear#2320 "
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "]]..LogoPartai[Lopar]..[["
        }

        $fieldArray = @(
            @{
                name = "]]..emot_bot..[[ Bot Name"
                value = "]]..bot.name..[["
                inline = "false"
            }
            @{
                name = "]]..emot_pack..[[ ]]..namapack:upper()..[["
                value = "]]..ShowPack..[["
                inline = "true"
            }
        )

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
            footer      = $footerObject
            thumbnail   = $thumbnailObject
            author      = $authorObject
            fields      = $fieldArray
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{

            embeds = $embedArray

            'username' = ']]..bot.name..[[|OD2320'
            'content' = $Mention

        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method ]]..methodz..[[ -ContentType 'application/json'
        ]]
        local pipe = io.popen("powershell -command -", "w")
        pipe:write(script)
        pipe:close()
        end
    end
end

Mods = {
    {id = 41539504, name = "Hufflewitz"},
    {id = 41538133, name = "Pharaohboi"},
    {id = 36709249, name = "vvCephei"},
    {id = 36559671, name = "GadnokBOW"},
    {id = 25374, name = "Anulot"},
    {id = 553625, name = "Jenuine"},
    {id = 73346, name = "Aimster"},
    {id = 629331, name = "BlueDwarf"},
    {id = 536707, name = "Misthios"},
    {id = 35869182, name = "Ottowo"},
    {id = 29160268, name = "Sabaei"},
    {id = 15006163, name = "Bleulabel"},
    {id = 16966321, name = "Fournos"},
    {id = 32036726, name = "Kailyx"},
    {id = 41208310, name = "Akrinator"},
    {id = 80174189, name = "Ohdear"}
}
