ESX 						   = nil
local SuperAdminsConnected       	   = 0
local ModeratorsConnected       	   = 0
local FinalAdminMode = false
local SecondFinalAdminMode = false
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_adminmode:AdminsInMode')
AddEventHandler('esx_adminmode:AdminsInMode', function(FinalAdminMode)
local _source = source
SecondFinalAdminMode = FinalAdminMode
end)


RegisterCommand('Admins', function(source, args, rawCommand)
	local xPlayers = ESX.GetPlayers()
	TriggerClientEvent('chat:addMessage', source, { args = { '^1^*|____________💂STAFF💂____________|'} })
    for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])   
		local name = xPlayer.getName()
		local Group = xPlayer.getGroup()
        if Group == 'superadmin' and SecondFinalAdminMode then
            	TriggerClientEvent('chat:addMessage', source, { args = { '^1^*[ADMIN]^0 ^4^*' ..name.. '^0, is in ^1^*STAFF^0 Mode. 🛡️'} })
			elseif Group == 'admin' and SecondFinalAdminMode then
				TriggerClientEvent('chat:addMessage', source, { args = { '^5^*[MOD]^0 ^4^*' ..name.. '^0, is in ^1^*STAFF^0 Mode. 🛡️'} })
			elseif Group == 'superadmin' and not SecondFinalAdminMode then
				TriggerClientEvent('chat:addMessage', source, { args = { '^1^*[ADMIN]^0 ^4^*' ..name.. '^0, is in ^2^*Player^0 Mode. 🚶'} })
			elseif Group == 'admin' and not SecondFinalAdminMode then
				TriggerClientEvent('chat:addMessage', source, { args = { '^5^*[MOD]^0 ^4^*' ..name.. 'is in ^2^*Player^0 Mode. 🚶'} })
        end
    end
end)

