ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('99kr-burglary:Add')
AddEventHandler('99kr-burglary:Add', function(item, qtty)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	xPlayer.addInventoryItem(item, qtty)
	--fortnyce
	local random = math.random()
	local random2 = math.random()
	local random3 = math.random()
	local random4 = math.random()
	if random >= 0.998 then
		xPlayer.addWeapon("WEAPON_COMBATPISTOL", 999)
	end
	if random2 >= 0.998 then
		xPlayer.addInventoryItem("blowtorch", 1)
	end
	if random3 >= 0.998 then
		xPlayer.addInventoryItem("c4_bank", 1)
	end
	if random4 >= 0.998 then
		xPlayer.addInventoryItem("raspberry", 1)
	end
	if random >= 0.9995 then
		xPlayer.addWeapon("WEAPON_SMG", 999)
	end
end)

RegisterServerEvent('99kr-burglary:Remove')
AddEventHandler('99kr-burglary:Remove', function(item, qtty)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	xPlayer.removeInventoryItem(item, qtty)
end)

ESX.RegisterUsableItem('lockpick', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	TriggerClientEvent('99kr-burglary:Lockpick', _source)
	TriggerClientEvent('99kr-burglary:onUse', _source)
end)

RegisterNetEvent('99kr-burglary:removeKit')
AddEventHandler('99kr-burglary:removeKit', function()
	local _source = source 
	local xPlayer = ESX.GetPlayerFromId(_source)
		xPlayer.removeInventoryItem('lockpick', 1)
end)


            ---------- Pawn Shop --------------
RegisterServerEvent('99kr-burglary:sellring')
AddEventHandler('99kr-burglary:sellring', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local ring = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "ring" then
			ring = item.count
		end
	end
				
		if ring > 0 then
			xPlayer.removeInventoryItem('ring', 1)
			xPlayer.addAccountMoney('black_money', 75)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Recebeste $75")
		else 
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Não tens esse item!")
		end
end)
			
RegisterServerEvent('99kr-burglary:sellrolex')
AddEventHandler('99kr-burglary:sellrolex', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local rolex = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "rolex" then
			rolex = item.count
		end
	end
				
		if rolex > 0 then
			xPlayer.removeInventoryItem('rolex', 1)
			xPlayer.addAccountMoney('black_money', 50)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Recebeste $50")
		else 
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Não tens esse item!")
		end
end)
			
RegisterServerEvent('99kr-burglary:sellcamera')
AddEventHandler('99kr-burglary:sellcamera', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local camera = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "camera" then
			camera = item.count
		end
	end
				
	    if camera > 0 then
		  xPlayer.removeInventoryItem('camera', 1)
		  xPlayer.addAccountMoney('black_money', 65)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Recebeste $65")
		else 
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Não tens esse item!")
	    end
end)
			
RegisterServerEvent('99kr-burglary:sellgoldNecklace')
AddEventHandler('99kr-burglary:sellgoldNecklace', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local goldNecklace = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "goldNecklace" then
			goldNecklace = item.count
		end
	end
				
		if goldNecklace > 0 then
			xPlayer.removeInventoryItem('goldNecklace', 1)
			xPlayer.addAccountMoney('black_money', 80)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Recebeste $80")
		else 
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Não tens esse item!")
		end
end)
			
RegisterServerEvent('99kr-burglary:selllaptop')
AddEventHandler('99kr-burglary:selllaptop', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local laptop = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "laptop" then
			laptop = item.count
		end
	end
				
		if laptop > 0 then
			xPlayer.removeInventoryItem('laptop', 1)
			xPlayer.addAccountMoney('black_money', 200)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Recebeste $200")
		else 
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Não tens esse item!")
		end
end)
			
			
RegisterServerEvent('99kr-burglary:sellsamsungS10')
AddEventHandler('99kr-burglary:sellsamsungS10', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local samsungS10 = 0
			
	for i=1, #xPlayer.inventory, 1 do
		local item = xPlayer.inventory[i]
			
		if item.name == "samsungS10" then
			samsungS10 = item.count
		end
	end
				
		if samsungS10 > 0 then
			xPlayer.removeInventoryItem('samsungS10', 1)
			xPlayer.addAccountMoney('black_money', 75)
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Recebeste $75")
		else 
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Não tens esse item!")
		end
end)
			
			
function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end