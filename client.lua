Citizen.CreateThread(function()
    while true do
        -- Initialisation de l'App ID
        SetDiscordAppId(Config.AppID)

        -- Configuration des images et textes
        SetDiscordRichPresenceAsset(Config.LargeImage)
        SetDiscordRichPresenceAssetText(Config.LargeImageText)
        
        if Config.SmallImage then
            SetDiscordRichPresenceAssetSmall(Config.SmallImage)
            SetDiscordRichPresenceAssetSmallText(Config.SmallImageText)
        end

        -- Mise à jour du message de statut
        SetRichPresence(Config.StatusText)

        Citizen.Wait(Config.UpdateDelay)
    end
end)