if Config.CheckForUpdates then
    Citizen.CreateThread(
        function()
            updatePath = "/Zuntie/ZunCore"
            resourceName = "ZunCore ("..GetCurrentResourceName()..")"
            PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."/main/version", checkVersion, "GET")
    end)
end

function checkVersion(err, responseText, headers)
    curVersion = LoadResourceFile(GetCurrentResourceName(), "version")
    
    if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
        updateavail = true
        print("\n^1----------------------------------------------------------------------------------^7")
        print(resourceName.." is outdated, latest version is: ^2"..responseText.."^7, installed version: ^1"..curVersion.."^7!\nupdate from https://github.com"..updatePath.."")
        print("^1----------------------------------------------------------------------------------^7")
    elseif tonumber(curVersion) > tonumber(responseText) then
        print("\n^3----------------------------------------------------------------------------------^7")
        print(resourceName.." git version is: ^2"..responseText.."^7, installed version: ^1"..curVersion.."^7!")
        print("^3----------------------------------------------------------------------------------^7")
    else
        return
    end
end