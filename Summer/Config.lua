ListPembeli = {
    "422670528483033088"
}

IP_Server_OD = "139.177.185.39"
function notice(logger, editz)
	
    if getBot().status == "online" then
        statzBot = ":green_circle:"
        Warna = 7405312
    else
        statzBot = ":red_circle:"
        Warna = 16711680
    end

    URLWeb = hookURL.."/messages/"..hookID

    Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/SSS.png"

    local script = [[
        $w = "]]..URLWeb..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[['
        $color       = ']]..Warna..[['

        $footerObject = [PSCustomObject]@{
            text = 'Summer Fest by Ohdear_'
            icon_url = ']].. Thumbs ..[['
        }

        $thumbnailObject = [PSCustomObject]@{
            url = ']].. Thumbs ..[['
        }

        $fieldArray = @(
            @{
                name = "]]..emojiSS..[[ Summer Surpise"
                value = "x]]..ScanReward()..[[ (Olympus Not Auto Update ScanTile for this items!)"
                inline = "true"
            }
            @{
                name = "FireWork Floating"
                value = "x]]..scanPetasan()..[["
                inline = "true"
            }
        )

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
            thumbnail   = $thumbnailObject
            footer      = $footerObject
            fields      = $fieldArray
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{
            embeds = $embedArray
            'username' = ']]..getBot().name..[[ | OD2320'
        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Patch -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end
