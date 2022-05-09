if Config.CheckForUpdates then
    AddEventHandler('onResourceStart', function(resourceName)
        if resourceName == GetCurrentResourceName() then
            PerformHttpRequest("https://raw.githubusercontent.com/Zuntie/ZunCore/main/resources/%5Bzuncore%5D/zuncore/modules/version", function (errorCode, resultData, resultHeaders)
                local version = tonumber(resultData)
                local curVersion = LoadResourceFile(GetCurrentResourceName(), "version")
                local curVersion_ = tonumber(curVersion)
                if version > curVersion_ then
                    print("[ZunCore] Attention: There is a new version of ZunCore available!\nCurrent version: " .. curVersion_ .. "\nNew version: " .. version)
                elseif version == curVersion_ then
                    print("[ZunCore] You are using the latest version of ZunCore ("..curVersion_..")!")
                else
                    print("[ZunCore] Something has gone wrong, while updating. Current version: " .. tonumber(curVersion) .. " | Github version: " .. version)
                end
            end)
        end
    end)
end