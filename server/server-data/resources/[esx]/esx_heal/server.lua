--  Made By Zeaqy --

ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_heal:pay')
AddEventHandler('esx_heal:pay', function()
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeMoney(1)
end)

ESX.RegisterServerCallback('esx_heal:money', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money    = xPlayer.getMoney(source)
    if money >= 0 then
     cb(true)
    else
     cb(false)
     TriggerClientEvent("pNotify:SetQueueMax", -1, hej, 4)
            TriggerClientEvent("pNotify:SendNotification", source, {
                        text = "Você não tem dinheiro para consulta!",
                        type = "warning",
                        progressBar = false,
                        queue = "zeaq",
                        timeout = 2000,
                        layout = "bottomCenter"
                })
    end
end)
                
function sendNotification(xSource, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", xSource, {
        text = message,
        type = messageType,
        queue = "zeaq",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end

RegisterServerEvent('esx_heal:check')
AddEventHandler('esx_heal:check', function()
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()

    local ambulance = 0
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
            if xPlayer.job.name == 'ambulance' then
                    ambulance = ambulance + 1
            end
        end
        if ambulance == 0 then
            TriggerClientEvent('esx_heal:Last', _source)
    else
        sendNotification(_source, 'Existem socorristas em serviço!', 'error', 2500)
    end
end)
