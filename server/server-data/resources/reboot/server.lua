local text1 = "Restart automático em 15 minutos! Termina todos os teus roleplays."
local text2 = "Restart automático em 10 minutos! Guarda as tuas coisas"
local text3 = "Restart automático em 5 minutos! Prepara-te para sair."
local text4 = "A reiniciar!"

RegisterServerEvent("restart:checkreboot")

AddEventHandler('restart:checkreboot', function()
	date_local1 = os.date('%H:%M:%S', os.time())
	local date_local = date_local1
	if date_local == '22:45:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text1)
	elseif date_local == '22:50:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text2)
	elseif date_local == '22:55:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text3)
	elseif date_local == '22:59:10' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '22:59:20' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '22:59:30' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '22:59:40' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '22:59:50' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '23:00:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
		
	elseif date_local == '04:45:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text1)
	elseif date_local == '04:50:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text2)
	elseif date_local == '04:55:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text3)
	elseif date_local == '04:59:10' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '04:59:20' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '04:59:30' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '04:59:40' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '04:59:50' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '05:00:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
		
	elseif date_local == '10:45:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text1)
	elseif date_local == '10:50:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text2)
	elseif date_local == '10:55:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text3)
	elseif date_local == '10:59:10' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '10:59:20' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '10:59:30' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '10:59:40' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '10:59:50' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '11:00:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
		
	elseif date_local == '16:45:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text1)
	elseif date_local == '16:50:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text2)
	elseif date_local == '16:55:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text3)
	elseif date_local == '16:59:10' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '16:59:20' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '16:59:30' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '16:59:40' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '16:59:50' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	elseif date_local == '17:00:00' then
		TriggerClientEvent('chatMessage', -1, "CalibreRP", {255, 0, 0}, text4)
	end
end)

function restart_server()
	SetTimeout(1000, function()
		TriggerEvent('restart:checkreboot')
		restart_server()
	end)
end
restart_server()
