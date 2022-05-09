if Config.checkForUpdates then
    Citizen.CreateThread(
        function()
            updatePath = "/Zuntie/ZunCore"
            resourceName = "ZunCore (" .. GetCurrentResourceName() .. ")"
            PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."/main/version", checkVersion, "GET")
    end)
end

function checkVersion(err, responseText, headers)
    curVersion = LoadResourceFile(GetCurrentResourceName(), "version")

    if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
        updateavail = true
        print("[ZunCore] " .. resourceName .. " is outdated. Current version: " .. curVersion .. ", latest version: " .. responseText)
    elseif tunumber(curVersion) > tonumber(responseText) then
        updateavail = false
        print("[ZunCore] " .. resourceName .. " git version is: "..responseText..", installed version: " .. curVersion)
    else
        print("[ZunCore] " .. resourceName .. " is up to date. Current version: " .. curVersion)
        return
    end
end
