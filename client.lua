ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(30)-- Saniye Bekletme
  end
end)

local exit = {vector3(-313.84, -1010.8, 4.59488)}
local giris = {vector3(-232.21, -914.82, 32.3107)}
local cikis = {vector3(-313.84, -1010.8, 4.59488)}
local pedhash = {vector3(-308.14, -1003.3, 3.60232)}

Citizen.CreateThread(function()
exports['kibra-base']:PedOlustur("a_m_y_smartcaspat_01", -308.14, -1003.3, 3.60232, 96.49)
end)

Citizen.CreateThread(function()
    blip = AddBlipForCoord(-232.21, -914.82, 32.3107)
    SetBlipSprite(blip, 162)
    SetBlipScale(blip, 0.6)
    SetBlipColour(blip, 5)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Nüfus Müdürlüğü")
    EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
    while true do 
    Wait(0)
    local ped = PlayerPedId()
    local pkordinat = GetEntityCoords(ped)
    for k,v in pairs(giris) do 
    local dist = #(pkordinat - v)
    if dist < 1 then 
        exports['kibra-base']:drwText(-232.36, -915.07, 32.3107 + 0.5, "[E] - Nüfus Müdürlügü")
        if IsControlJustPressed(0, 38) then 
            SetEntityCoords(ped, -313.852, -1010.84, 4.6023)
        end
    end
end 
end
end)

Citizen.CreateThread(function()
    while true do 
    Wait(0)
    local ped = PlayerPedId()
    local pkordinat = GetEntityCoords(ped)
    for k,v in pairs(exit) do 
    local dist = #(pkordinat - v)
    if dist < 1 then 
        exports['kibra-base']:drwText(-313.84, -1010.8, 4.59488 + 0.5, "[E] - Cikis")
        if IsControlJustPressed(0, 38) then 
            SetEntityCoords(ped, -232.21, -914.82, 32.3107)
        end
    end
end 
end
end)

Citizen.CreateThread(function(para)
    while true do 
    Wait(0)
    local para = 1000
    local ped = PlayerPedId()
    local pkordinat = GetEntityCoords(ped)
    for k,v in pairs(pedhash) do 
    local dist = #(pkordinat - v)
    if dist < 2 then 
        ESX.ShowHelpNotification('~INPUT_CONTEXT~ Basarak Kimlik Çıkart - $50')
        if IsControlJustPressed(0, 38) then 
            TriggerEvent("mythic_progbar:client:progress", {
                name = "unique_action_name",
                duration = 5000,
                label = "Size Özel Kimliğiniz Hazırlanıyor",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                },
            }, function(status)
                if not status then
                    -- Do Something If Event Wasn't Cancelled
                end
                TriggerServerEvent("kibra-idcard:KimlikVer")
            end)
        end
    end
end 
end
end)

RegisterNetEvent("idcarduse")
AddEventHandler("idcarduse", function()
ESX.ShowNotification("Selamke")
end)