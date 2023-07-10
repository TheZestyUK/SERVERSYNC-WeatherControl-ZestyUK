-- This script allows you to control the weather in GTA V with server-side synchronization

-- Event to handle client requests for weather change
RegisterServerEvent('weather:changeWeather')
AddEventHandler('weather:changeWeather', function(weatherType)
    -- Set the weather for all clients
    TriggerClientEvent('weather:setWeather', -1, weatherType)
end)
