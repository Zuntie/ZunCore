if Config.CheckForUpdates then
    AddEventHandler('onResourceStart', function(resourceName)
        local url = 'https://raw.githubusercontent.com/Zuntie/ZunCore/main/resources/%5Bzuncore%5D/zuncore/version'
        if resourceName == GetCurrentResourceName() then
            PerformHttpRequest(url, function (errorCode, resultData, resultHeaders)
                local version = tonumber(resultData)
                local curVersion = LoadResourceFile(GetCurrentResourceName(), "version")
                local curVersion_ = tonumber(curVersion)
                if version > curVersion_ then
                    print("^5[ZunCore]^0 There is a new version of ZunCore available! Current version: ^1" .. curVersion_ .. "^0 | New version: ^2" .. version)
                elseif version == curVersion_ then
                    print("^5[ZunCore]^0 You are using the latest version of ^5ZunCore ^0(^5"..curVersion_.."^0)!")
                else
                    print("^5[ZunCore]^0 Something has gone wrong, while updating. Current version: ^1" .. tonumber(curVersion) .. "^0 | Github version: ^2" .. version)
                end
            end)
        end
    end)
end