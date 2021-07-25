local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PID           			= 0
local GUI           			= {}
ESX 			    			= nil
GUI.Time            			= 0
local PlayerData                = {}
local IsInAdminMode = false
local CanShow = false
local ServerAdminMode = false
local LastAdminMode = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

RegisterNetEvent('es_admin:setGroup')
AddEventHandler('es_admin:setGroup', function(g)
	print('GROUP: ' .. g)
	group = g
end)

RegisterCommand('adminmode', function(source, args, rawCommand)
    if group ~= 'user' then
        if not IsInAdminMode then
            IsInAdminMode = true
            AdminInMode = true
            ESX.ShowNotification('You have entered STAFF mode!')
            local Name = GetPlayerName(source)
            TriggerEvent('esx_adminmode:AdminMode',IsInAdminMode)
            CheckAdminsOnline(AdminInMode)
            SetEntityInvincible(GetPlayerPed(-1), true)
			SetPlayerInvincible(PlayerId(), true)
			SetPedCanRagdoll(GetPlayerPed(-1), false)
			ClearPedBloodDamage(GetPlayerPed(-1))
			ResetPedVisibleDamage(GetPlayerPed(-1))
			ClearPedLastWeaponDamage(GetPlayerPed(-1))
			SetEntityProofs(GetPlayerPed(-1), true, true, true, true, true, true, true, true)
			SetEntityOnlyDamagedByPlayer(GetPlayerPed(-1), false)
            SetEntityCanBeDamaged(GetPlayerPed(-1), false)
            TriggerEvent('chatMessage', "", {204, 204, 0}, "^*^3INFO^0 - "..Name.. " is now in ^1STAFF^0 mode! 🛡️")
            
        else
            IsInAdminMode = false
            AdminInMode = false
            ESX.ShowNotification('You left STAFF mode!')
            TriggerEvent('esx_adminmode:AdminMode',IsInAdminMode)
            local Name = GetPlayerName(source)
            CheckAdminsOnline(AdminInMode)
            SetEntityInvincible(GetPlayerPed(-1), false)
			SetPlayerInvincible(PlayerId(), false)
			SetPedCanRagdoll(GetPlayerPed(-1), true)
			ClearPedLastWeaponDamage(GetPlayerPed(-1))
			SetEntityProofs(GetPlayerPed(-1), false, false, false, false, false, false, false, false)
			SetEntityOnlyDamagedByPlayer(GetPlayerPed(-1), true)
            SetEntityCanBeDamaged(GetPlayerPed(-1), true)
            TriggerEvent('chatMessage', "", {204, 204, 0}, "^*^3INFO^0 - "..Name.. " is now in ^2PLAYER^0 mode! 🚶")
        end
    else
        ESX.ShowNotification('You have to be STAFF')
    end
end)


RegisterNetEvent('esx_adminmode:AdminMode')
AddEventHandler('esx_adminmode:AdminMode', function(IsInAdminMode)

    if IsInAdminMode then
    CanShow = true
    else
    CanShow = false
    end
end)

--ADMIN FUNCTIONS 
Citizen.CreateThread(function()
    while true do
    Citizen.Wait(1)
            if CanShow then
                local coordsMe = GetEntityCoords(GetPlayerPed(Ped), false)
                local coords = GetEntityCoords(PlayerPedId(), false)
                local dist = GetDistanceBetweenCoords(coordsMe['x'], coordsMe['y'], coordsMe['z'], coords['x'], coords['y'], coords['z'], true)
                local Ped = GetPlayerPed(-1)
                local x, y, z = table.unpack(GetEntityCoords(Ped))
                local Health = GetEntityHealth(Ped)
                local Armor = GetPedArmour(Ped)
                roundx = tonumber(string.format("%.2f", x))
                roundy = tonumber(string.format("%.2f", y))
                roundz = tonumber(string.format("%.2f", z))
                local h = GetEntityHeading(Ped)
                roundh =  tonumber(string.format("%.2f", h))
                --Draw2DText(0.5, 0.5,"Coordinates | ~g~X: "..roundx.. "~s~ | ~r~ Y: "..roundy.." ~s~ | ~b~ Z: ".. roundz.." ~s~| ~p~h: ".. roundh.. " ~s~|", 0.4) -- DRAW ON SCREEN
                DrawText3D(coordsMe['x'], coordsMe['y'], coordsMe['z']," Coordinates | ~g~X: "..roundx.. "~s~ | ~o~ Y: "..roundy.." ~s~ | ~b~ Z: ".. roundz.." ~s~| ~p~h: ".. roundh.. " ~s~|")
                DrawText3D(coordsMe['x'], coordsMe['y'], coordsMe['z']-0.15," ❤️ ~r~Health | "..Health)
                DrawText3D(coordsMe['x'], coordsMe['y'], coordsMe['z']-0.295," 🛡️ ~b~Armor | "..Armor)
            else
                CanShow = false
                Citizen.Wait(1000)
            end
    end
end)

function CheckAdminsOnline(AdminInMode)

    if AdminInMode then
    ServerAdminMode = true
    else
    ServerAdminMode = false
    end
    TriggerServerEvent('esx_adminmode:AdminsInMode', ServerAdminMode)
end

function Draw2DText(x, y, text, scale)
    SetTextFont(4)
    SetTextProportional(7)
    SetTextScale(scale, scale)
    SetTextColour(255, 255, 255, 255)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextDropShadow()
    SetTextEdge(4, 0, 0, 0, 255)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)
    local px,py,pz = table.unpack(GetGameplayCamCoord())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    if onScreen then
    SetTextScale(0.40, 0.40)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextOutline()
    AddTextComponentString(text)
    DrawText(_x,_y)
    end
end

