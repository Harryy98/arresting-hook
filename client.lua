function Noti(text, type)
    lib.notify({
        title = 'Notification',
        description = text,
        position = "center-right",
        type = type or 'inform'
    })
end

function GraduallyReduceSpeed(vehicle, speeds, delays)
    Noti("~g~Hooked on!", 'success') 
    for i = 1, #speeds do
        SetVehicleForwardSpeed(vehicle, speeds[i])
        Citizen.Wait(delays[i])
    end
end

Citizen.CreateThread(function()
    local hookCoords = vector3(3087.96, -4784.29, 15.26)
    local hookRadius = 8.0
    local minSpeed = 35.76
    local reduceSpeeds = {53.2, 32.0, 21.0, 15.0, 11.0, 0.0}
    local reduceDelays = {500, 1100, 1100, 1100, 800}

    while true do
        Citizen.Wait(0)
        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)
        local veh = GetVehiclePedIsIn(ped, false)

        if veh and GetEntitySpeed(veh) >= minSpeed and #(pedCoords - hookCoords) <= hookRadius then
            GraduallyReduceSpeed(veh, reduceSpeeds, reduceDelays)
        end
    end
end)
