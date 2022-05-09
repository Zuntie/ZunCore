if Config.checkForUpdates then
    AddEventHandler('onResourceStart', function(resourceName)
        updatePath = "/Zuntie/ZunCore"
        resourceName = "ZunCore ("..GetCurrentResourceName()..")"
        PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."/main/version", checkVersion, "GET")
        if resourceName == 'zuncore' then
            curVersion = LoadResourceFile(GetCurrentResourcename(), "version.txt")

            if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
                print('[ZunCore] A new update is available!')
                print('[ZunCore] Current version: ' .. curVersion)
                print('[ZunCore] New version: ' .. responseText)
                print('[ZunCore] Download it here: ' .. responseLink)
            elseif tonumber(curVersion) > tonumber(responseText) then
                print("[ZunCore] git version is: ^2"..responseText.."^7, installed version: ^1"..curVersion.."^7!")
            end
        end
    end)
end