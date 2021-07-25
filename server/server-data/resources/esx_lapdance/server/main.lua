ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local RegisteredSocieties = {}

function GetSociety(name)
	for i=1, #RegisteredSocieties, 1 do
		if RegisteredSocieties[i].name == name then
			return RegisteredSocieties[i]
		end
	end
end

RegisterServerEvent('esx_lapdance:Buy')
AddEventHandler('esx_lapdance:Buy', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 500) then
        xPlayer.removeMoney(500)
        TriggerClientEvent('esx_lapdance:lapdance', _source)
        sendNotification(_source, 'Compraste uma lapdance privada por 500$', 'success', 500)
	else
	sendNotification(_source, 'Não tens dinheiro suficiente para comprar a lapdance privada!', 'error', 500)
	end

end)

--notification
function sendNotification(xSource, message, messageType, messageTimeout)
    TriggerClientEvent("pNotify:SendNotification", xSource, {
        text = message,
        type = messageType,
        queue = "lmao",
        timeout = messageTimeout,
        layout = "bottomCenter"
    })
end