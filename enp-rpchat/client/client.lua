----------------- CREATE BY termidev#9944 ----------------- 
----------------- EDIT BY ᴀʀɪᴜᴋʏ®#3449 --------------------


ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(100)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)    

RegisterNetEvent('enp-rpchat:sendProximity')
AddEventHandler('enp-rpchat:sendProximity', function(playerId, name, message, type)
    local player = PlayerId()
    local target = GetPlayerFromServerId(playerId)

    local playerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
    local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)

    if NetworkIsPlayerActive(player) and (target == player or #(playerCoords - targetCoords) < 15) then
        if type == "ooc" then
            TriggerEvent('chat:addMessage', {
                template = '<div style="font-size: 0.8vw;"> <b>{0}: {1}</b><div>',
                 color = { 204, 102, 255},
                args = { "[OOP] ["..playerId.."] "..name, message}
            })
        elseif type == "me" then
            TriggerEvent('chat:addMessage', {
                template = '<div style="font-size: 0.8vw;"> <b>{0}: {1}</b><div>',
                color = { 255, 0, 0},
                args = { "[ME] ["..playerId.."] "..name, message}
            })  
        elseif type == "do" then
            TriggerEvent('chat:addMessage', {
                template = '<div style="font-size: 0.8vw;"> <b>{0}: {1}</b><div>',
                color = { 0, 0, 255},
                args = { "[DO] ["..playerId.."] "..name, message}
            })
        end
    end
end)

local group

RegisterNetEvent('es_admin:setGroup')
AddEventHandler('es_admin:setGroup', function(g)
	print('group setted ' .. g)
	group = g
end)

RegisterNetEvent('sendMessageAdmin')
AddEventHandler('sendMessageAdmin', function(id, name, message)
  TriggerServerEvent('getadmin')
  local myId = PlayerId()
  local pid = GetPlayerFromServerId(id)
  if pid == myId then
    TriggerEvent('chatMessage', "", {0, 255, 204}, " [𝐒𝐓𝐀𝐅𝐅] | " .. name .."  "..": ^7  " .. message)
 	elseif group ~= 'user' and pid ~= myId then
    TriggerEvent('chatMessage', "", {0, 255, 204}, " [𝐒𝐓𝐀𝐅𝐅] | " .. name .."  "..": ^7  " .. message)
  end
end)