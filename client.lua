-- This script allows you to control the weather in GTA V with server-side synchronization

-- Event to receive weather change from the server
RegisterNetEvent('weather:setWeather')
AddEventHandler('weather:setWeather', function(weatherType)
    -- Set the weather
    SetWeatherTypeNow(weatherType)
    SetWeatherTypePersist(weatherType)
    SetWeatherTypeOverTime(weatherType, 10.0) -- Change the second argument to adjust the transition time
    print('Weather set to: ' .. weatherType)
end)
