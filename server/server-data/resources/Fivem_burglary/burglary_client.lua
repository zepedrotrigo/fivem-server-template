local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

local GUI = {} -- don't touch
ESX = nil -- don't touch
GUI.Time = 0 -- don't touch
local PlayerData = {} -- don't touch
local showPro = false -- don't touch
local stealing = false -- don't touch
local peeking = false -- don't touch
local CurrentAction		= nil
local timer = false
local secsRemaining = nil
local savedDoor = nil
local doorTime = {}
peds = {}
local houseIn = nil
------------------------------------------------------
------------------------------------------------------
local useQalleCameraSystem = false --( https://github.com/qalle-fivem/esx-qalle-camerasystem )
local chancePoliceNoti = 25 -- the procent police get notified (only numbers like 30, 10, 40. You get it.)
local useBlip = true -- if u want blip
local useInteractSound = true -- if you wanna use InteractSound (when u lockpick the door)
------------------------------------------------------
------------------------------------------------------

------ l o c a l e s ------
local noCar = "Nenhum veículo nas proximidades"
local text = "~r~gazuar~w~ porta?" -- lockpick the door
local textUnlock = "~g~[E]~w~ Entrar" -- enter the house
local insideText = "~g~[E]~w~ Sair" -- exit the door
local abortConfirm = "Cancelado"
local searchText = "~g~[E]~w~ Procurar" -- search the spot
local emptyMessage = "Não encontraste nada!" -- if you press E where it is empty
local emptyMessage3D = "~r~Vazio" -- if the spot is empty
local closetText = "~g~[E]~w~ Ver armário" -- text at closet
local abortLock = "~g~[E]~w~ para cancelar"
local noLockpickText = "Não tens nenhuma gazua!" -- if you don't have a lockpick and you try to do the burglary
local carUnlocked = "Destrancaste o veículo!"
local youFound = "do" -- when you steal something
local burglaryDetected = "Assalto detetado" -- text 1 cops gets sent
local sentPhoto = "Fotografia do criminoso" -- if you use qalle's camerasystem this will be in the message too
local item = {'ring', 'goldNecklace', 'samsungS10', 'rolex', 'camera', 'laptop'}
local exitPos = {pos = {x = 0, y = 0, z = 0, h = 0 }}
local lastDoor = 0
local noiseXYZ = { x = 346.53 , y = -1003.44 , z = -99.2}
---------------------------


local PlayerData = {}

Citizen.CreateThread(function ()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(1)
  end
while ESX.GetPlayerData() == nil do
  Citizen.Wait(10)
end
PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)



RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)
--[[
RegisterNetEvent('99kr-burglary:onUse')
AddEventHandler('99kr-burglary:onUse', function()
	local playerPed		= GetPlayerPed(-1)
  local coords		= GetEntityCoords(playerPed)
	if IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
		local vehicle = nil

		if IsPedInAnyVehicle(playerPed, false) then
			vehicle = GetVehiclePedIsIn(playerPed, false)
		else
			vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 5.0, 0, 71)
		end

    if DoesEntityExist(vehicle) then
      lockpicking = false
      ---print(lockpicking)
      randi = math.random(1, 2)
      if randi == 1 then
      TriggerServerEvent('99kr-burglary:removeKit')
      end
			TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
			  if useInteractSound then
			    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'lockpick', 0.7)
			  end

			Citizen.CreateThread(function()
				ThreadID = GetIdOfThisThread()
				CurrentAction = 'lockpick'

				Citizen.Wait(22 * 1000)

        if CurrentAction ~= nil then
          procent(100)
					SetVehicleDoorsLocked(vehicle, 1)
					SetVehicleDoorsLockedForAllPlayers(vehicle, false)
					ClearPedTasksImmediately(playerPed)

					ESX.ShowNotification(carUnlocked)
				end
				
				CurrentAction = nil
				--TerminateThisThread()
			end)
		end

		Citizen.CreateThread(function()
			Citizen.Wait(0)

			if CurrentAction ~= nil then
				SetTextComponentFormat('STRING')
				AddTextComponentString(abortLock)
				DisplayHelpTextFromStringLabel(0, 0, 1, -1)

				if IsControlJustReleased(0, Keys["X"]) then
					TerminateThread(ThreadID)
					ESX.ShowNotification(abortConfirm)
					CurrentAction = nil
				end
			end

		end)
	end
end)
--]]



RegisterNetEvent('99kr-burglary:Lockpick')
AddEventHandler('99kr-burglary:Lockpick', function(xPlayer)
  lockpicking = true
  Citizen.Wait(100)
  lockpicking = false
end)

local burglaryPlaces = {
  
  ["Código Postal 144"] = {
    door = 1,
    locked = true,
    pos = { x = 339.95, y = -1856.59, y = 27.76 },  -- door coords
    inside = { x = 346.52 , y = -1013.19 , z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 339.95, y = -1856.59, y = 27.76 }, -- The animation position
    doorTime = {}
  }, 
  ["Código Postal 139"] = {
    door = 2,
    locked = true,
    pos = { x = 329.84, y = -2095.05, z = 18.24 },  -- door coords
    inside = { x = 346.52 , y = -1013.19 , z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 329.84, y = -2095.05, z = 18.24 }, -- The animation position
    doorTime = {}
  },
  ["Código Postal 418"] = {
    door = 3,
     locked = true,
    pos = { x = 850.69, y = -588.69, z = 58.15 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 850.69, y = -588.69, z = 58.15 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 412"] = {
    door = 4,
     locked = true,
    pos = { x = 1112.96, y = -325.84, z = 67.08 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 1112.96, y = -325.84, z = 67.08 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 359"] = {
    door = 5,
     locked = true,
    pos = { x = -805.87, y = -959.3, z = 18.22 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -805.87, y = -959.3, z = 18.22 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 344"] = {
    door = 6,
     locked = true,
    pos = { x = -1024.89, y = -919.77, z = 5.04 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -1024.89, y = -919.77, z = 5.04 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 310"] = {
    door = 7,
     locked = true,
    pos = { x = -1075.21, y = -1645.11, z = 4.5 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -1075.21, y = -1645.11, z = 4.5 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 624"] = {
    door = 8,
     locked = true,
    pos = { x = -1676.55, y = -444.61, z = 39.97 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -1676.55, y = -444.61, z = 39.97 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 183"] = {
    door = 9,
     locked = true,
    pos = { x = 1286.64, y = -1604.49, z = 54.82 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 1286.64, y = -1604.49, z = 54.82 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 188"] = {
    door = 10,
     locked = true,
    pos = { x = 1440.1, y = -1480.31, z = 63.62 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 1440.1, y = -1480.31, z = 63.62 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 126"] = {
    door = 11,
     locked = true,
    pos = { x = -14.03, y = -1426.39, z = 30.9 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -14.03, y = -1426.39, z = 30.9 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 106"] = {
    door = 12,
     locked = true,
    pos = { x = -180.18, y = -1534.43, z = 34.36 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -180.18, y = -1534.43, z = 34.36 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 152"] = {
    door = 13,
     locked = true,
    pos = { x = 465.3, y = -1748.72, z = 29.09 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 465.3, y = -1748.72, z = 29.09 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 132"] = {
    door = 14,
     locked = true,
    pos = { x = 234.2, y = -2037.83, z = 18.19 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 234.2, y = -2037.83, z = 18.19 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 123"] = {
    door = 15,
     locked = true,
    pos = { x = 138.34, y = -1912.84, z = 23.41 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 138.34, y = -1912.84, z = 23.41 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 137"] = {
    door = 16,
     locked = true,
    pos = { x = 255.2, y = -1742.49, z = 29.66 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = 255.2, y = -1742.49, z = 29.66 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 628"] = {
    door = 17,
     locked = true,
    pos = { x = -1422.37, y = -640.68, z = 28.67 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -1422.37, y = -640.68, z = 28.67 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 636"] = {
    door = 18,
     locked = true,
    pos = { x = -1387.43, y = -437.13, z = 36.36 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -1387.43, y = -437.13, z = 36.36 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 366"] = {
    door = 19,
     locked = true,
    pos = { x = -719.07, y = -897.86, z = 20.42 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -719.07, y = -897.86, z = 20.42 }, -- The animation position
    doorTime = {}
   },
   ["Código Postal 362"] = {
    door = 20,
     locked = true,
    pos = { x = -684.26, y = -1166.97, z = 14.6 },  -- door coords
    inside = { x = 346.52, y = -1013.19, z = -99.2, h = 357.81 },  -- Inside the house coords
    animPos = { x = -684.26, y = -1166.97, z = 14.6 }, -- The animation position
    doorTime = {}
   }
}

residents = {
	{
		coord = vec3(349.8, -996.141, -98.7399),
		rotation = 90.0,
		animation = { dict = "amb@lo_res_idles@", anim = "lying_face_up_lo_res_base" }, -- sleeping animation
		model = "a_f_y_hipster_01",
		aggressive = true -- if they should attack after waking up
	}
}




local burglaryInside = {
[" na mesa da cozinha encontraste "] = { x = 342.23, y = -1003.29, z = -99.0,  amount = 0},
[" no armário da tv encontraste "] = { x = 338.14, y = -997.69,  z = -99.2,  amount = 0},
[" na mesinha de cabeceira encontraste "] = { x = 350.91, y = -999.26,  z = -99.2,  amount = 0},
[" na mesa encontraste "] = { x = 349.19, y = -994.83,  z = -99.2,  amount = 0},
[" na estante de livros encontraste "] = { x = 345.3,  y = -995.76,  z = -99.2,  amount = 0},
[" na mesa do corredor encontraste "] = { x = 346.14, y = -1001.55, z = -99.2,  amount = 0},
[" no armário da casa de banho encontraste "] = { x = 347.23, y = -994.09,  z = -99.2,  amount = 0},
[" na mesa de jantar encontraste "] = { x = 339.23, y = -1003.35, z = -99.2,  amount = 0},
[" no guarda roupas encontraste "] = { x = 351.24, y = -993.53,  z = -99.2,  amount = 0}

}

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(5)
    for k,v in pairs(burglaryPlaces) do
      local playerPed = PlayerPedId()
      local house = k
      local coords = GetEntityCoords(playerPed)
      local dist   = GetDistanceBetweenCoords(v.pos.x, v.pos.y, v.pos.z, coords.x, coords.y, coords.z, false)
    if GetClockHours() > 23  or GetClockHours() <= 22 then
      if dist <= 1.2 and v.locked == true then
          DrawText3D(v.pos.x, v.pos.y, v.pos.z, text, 0.4)                  
          if lockpicking == true then
            RemoveResidents()
            savedDoor = v.door
            houseIn = house
            v.doorTime = GetGameTimer() + 3600*3 * 1000
            confMenu(house)
            for k, v in pairs(burglaryInside) do
              if v.amount < 1 then
              v.amount = v.amount + 1
              lockpicking = false
              end
            end
          end  
      else
        if dist <= 1.2 and timer == true then
         local secsRemaining = math.ceil((v.doorTime - GetGameTimer()) / 1000)
          secsRemaining = secsRemaining - 1
          if secsRemaining > 0 then
                DrawText3D(v.pos.x, v.pos.y, v.pos.z,'Espera ~r~'..secsRemaining..'~w~ para assaltares novamente', 0.4)
          else
            timer = false
            v.locked = true 
            doorTime = {}      
          end
          
        end
      end
    else 
      if dist <= 1.2 then
        breakTime = 23 - GetClockHours() 
      DrawText3D(v.pos.x, v.pos.y, v.pos.z, 'Podes assaltar a casa em ~r~' ..breakTime.. ' ~w~horas', 0.4) 
      end
    end
    end
  end
end)

Citizen.CreateThread(function()
  while stealing == false do
    Citizen.Wait(5)
    for k, v in pairs(burglaryInside) do
      local playerPed = PlayerPedId()
      local coords = GetEntityCoords(playerPed)
      local dist = GetDistanceBetweenCoords(v.x, v.y, v.z, coords.x, coords.y, coords.z, false)
      if dist <= 1.2 and v.amount > 0 then
        DrawText3D(v.x, v.y, v.z, searchText, 0.4)
        if dist <= 0.5 and IsControlJustPressed(0, Keys["E"]) then
          steal(k)
        end
      elseif v.amount < 1 and dist <= 1.2 then
        DrawText3D(v.x, v.y, v.z, emptyMessage3D, 0.4)
        if IsControlJustPressed(0, Keys["E"]) and dist <= 0.5 then
          ESX.ShowNotification(emptyMessage)
        end
      end
    end
  end
end)


Citizen.CreateThread(function()
  while true do
    Citizen.Wait(5)
    for k, v in pairs(burglaryPlaces) do
      local playerPed = PlayerPedId()
      local coords = GetEntityCoords(playerPed)
      local house = k
      if GetDistanceBetweenCoords(noiseXYZ.x, noiseXYZ.y, noiseXYZ.z, coords.x, coords.y, coords.z, false) <= 14.0 then
        DrawNoiseBar(GetPlayerCurrentStealthNoise(PlayerId()), 3)
      end
      if GetDistanceBetweenCoords(v.inside.x, v.inside.y, v.inside.z, coords.x, coords.y, coords.z, false) <= 3.0 then
        DrawText3D(v.inside.x, v.inside.y, v.inside.z, insideText, 0.4)
        if GetDistanceBetweenCoords(v.inside.x, v.inside.y, v.inside.z, coords.x, coords.y, coords.z, false) <= 1.2 and IsControlJustPressed(0, Keys["E"]) then
          RemoveResidents()
          fade()
          teleport(exitPos)
          lastDoor = 0
          timer = true
          
        end
      end
    end
  end
end)


Citizen.CreateThread(function()
	while true do
    Citizen.Wait(6)
    if showPro == true then
      local playerPed = PlayerPedId()
		  local coords = GetEntityCoords(playerPed)
      DrawText3D(coords.x, coords.y, coords.z, TimeLeft .. '~g~%', 0.4)
    end
	end
end)

function confMenu(house)
  Citizen.Wait(6)
  RemoveResidents()
  local v = GetHouseValues(house, burglaryPlaces)
  exitPos = {pos ={x = v.pos.x, y = v.pos.y, z = v.pos.z, h = v.pos.h }}
  Citizen.CreateThread(function()
    local inventory = ESX.GetPlayerData().inventory
    local LockpickAmount = nil
      for i=1, #inventory, 1 do                          
        if inventory[i].name == 'lockpick' then
          LockpickAmount = inventory[i].count
        end
      end
        if LockpickAmount > 0 then
          SpawnResidents(home)
          HouseBreak(house)
          v.locked = false
          Citizen.Wait(math.random(15000,30000))
          local random = math.random(0, 100)
          if random <= chancePoliceNoti then 
            TriggerServerEvent('esx_addons_gcphone:startCall', 'police', burglaryDetected .. '\n ' .. houseIn, { x = exitPos.pos.x, y = exitPos.pos.y, z = exitPos.pos.z })
          end
        else 
          ESX.ShowNotification(noLockpickText)
        end
	end)
end
                        
function steal(k)
  local goods = item[math.random(#item)] 
  local values = GetHouseValues(k, burglaryInside)
  local playerPed = PlayerPedId()
  stealing = true
  FreezeEntityPosition(playerPed, true)
  TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BUM_BIN", 0, true)
  Citizen.Wait(2000)
  procent(50)
  TriggerServerEvent('99kr-burglary:Add', goods, 1)
  --ESX.ShowNotification(youFound .. k ..' '.. goods)
  values.amount = values.amount - 1
  ClearPedTasks(playerPed)
  FreezeEntityPosition(playerPed, false)
  stealing = false
end

function HouseBreak(house)
  local v = GetHouseValues(house, burglaryPlaces)
  local playerPed = PlayerPedId()
  fade()
  FreezeEntityPosition(playerPed, true)
  SetEntityCoords(playerPed, v.animPos.x, v.animPos.y, v.animPos.z - 0.98)
  SetEntityHeading(playerPed, v.animPos.h)
  loaddict("mini@safe_cracking")
  TaskPlayAnim(playerPed, "mini@safe_cracking", "idle_base", 3.5, - 8, - 1, 2, 0, 0, 0, 0, 0)
  if useInteractSound then
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 3.0, 'lockpick', 0.7)
  end
  procent(70)
  rand = math.random(1, 10)
  if rand == 1 then
    TriggerServerEvent('99kr-burglary:Remove', 'lockpick', 1)
  end  
  fade()
  ClearPedTasks(playerPed)
  FreezeEntityPosition(playerPed, false)
  SetCoords(playerPed, v.inside.x, v.inside.y, v.inside.z - 0.98)
  SetEntityHeading(playerPed, v.inside.h)
end 

function ShowSubtitle(text)
  BeginTextCommandPrint("STRING")
  AddTextComponentSubstringPlayerName(text)
  EndTextCommandPrint(3500, 1)
end

function SetCoords(playerPed, x, y, z)
  SetEntityCoords(playerPed, x, y, z)
  Citizen.Wait(100)
  SetEntityCoords(playerPed, x, y, z)
end

function DrawTimerBar(title, text, barIndex)
	local width = 0.13
	local hTextMargin = 0.003
	local rectHeight = 0.038
	local textMargin = 0.008
	
	local rectX = GetSafeZoneSize() - width + width / 2
	local rectY = GetSafeZoneSize() - rectHeight + rectHeight / 2 - (barIndex - 1) * (rectHeight + 0.005)
	
	DrawSprite("timerbars", "all_black_bg", rectX, rectY, width, 0.038, 0, 0, 0, 0, 128)
	
	DrawText2d(title, GetSafeZoneSize() - width + hTextMargin, rectY - textMargin, 0.32)
	DrawText2d(string.upper(text), GetSafeZoneSize() - hTextMargin, rectY - 0.0175, 0.5, true, width / 2)
end

function DrawNoiseBar(noise, barIndex)
	DrawTimerBar("Barulho", math.floor(noise), barIndex)
end

function DrawText2d(text, x, y, scale, right, width)
	SetTextFont(0)
	SetTextScale(scale, scale)
	SetTextColour(254, 254, 254, 255)

	if right then
		SetTextWrap(x - width, x)
		SetTextRightJustify(true)
	end
	
	BeginTextCommandDisplayText("STRING")	
	AddTextComponentSubstringPlayerName(text)
	EndTextCommandDisplayText(x, y)
end

function callCops(house)
    if  savedDoor ~= lastDoor then
    TriggerServerEvent('esx_addons_gcphone:startCall', 'police', burglaryDetected .. '\n ' .. houseIn, { x = exitPos.pos.x, y = exitPos.pos.y, z = exitPos.pos.z })
    lastDoor = savedDoor
    end
end

function fade()
  DoScreenFadeOut(1000)
  Citizen.Wait(1000)
  DoScreenFadeIn(1000)
end

function loaddict(dict)
  while not HasAnimDictLoaded(dict) do
    RequestAnimDict(dict)
    Wait(10)
  end
end

Citizen.CreateThread(function(house)
	while true do
    Citizen.Wait(6)
    if GetPlayerCurrentStealthNoise(PlayerId()) > 5 then
      if CanPedHearPlayer(PlayerId(), peds[1]) then
        callCops(house)
        ClearPedTasks(peds[1])
        Citizen.Wait(5)
        PlayPain(peds[1], 7, 0)
        if HasPedGotWeapon(peds[1], GetHashKey("WEAPON_PISTOL"), true) then
          SetCurrentPedWeapon(peds[1], GetHashKey("WEAPON_PISTOL"), false)
          Citizen.Wait(5)
        end
      end
    end
  end
end)

function SpawnResidents(home)
 
		RequestModel("a_f_y_hipster_01")
		while not HasModelLoaded("a_f_y_hipster_01") do 
		  Wait(0)
    end
    for _,resident in pairs(residents) do
		 ped = CreatePed(4, resident.model, resident.coord, resident.rotation, false, false)
			table.insert(peds, ped)
			-- animation
      RequestAnimDict(resident.animation.dict)
      while not HasAnimDictLoaded(resident.animation.dict) do 
        Wait(0) 
      end
      
      TaskPlayAnimAdvanced(ped, resident.animation.dict, resident.animation.anim, resident.coord, 0.0, 0.0, resident.rotation, 8.0, 1.0, -1, 1, 1.0, true, true)
      SetFacialIdleAnimOverride(ped, "mood_sleeping_1", 0)

      SetPedHearingRange(ped, 3.0)
			SetPedSeeingRange(ped, 3.0)
      SetPedAlertness(ped, 1)

      if resident.aggressive then
        GiveWeaponToPed(ped, GetHashKey("WEAPON_DAGGER"), 255, true, false)
      end

      
  end
      
  
end

function RemoveResidents()
	for _,ped in pairs(peds) do
		SetPedAsNoLongerNeeded(ped)
    DeletePed(ped)
   
	end
	
  peds = {}
end


function DrawText3D(x, y, z, text, scale)
  local onScreen, _x, _y = World3dToScreen2d(x, y, z)
  local pX, pY, pZ = table.unpack(GetGameplayCamCoords())
  SetTextScale(scale, scale)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextEntry("STRING")
  SetTextCentre(1)
  SetTextColour(255, 255, 255, 255)
  SetTextOutline()
  AddTextComponentString(text)
  DrawText(_x, _y)
  local factor = (string.len(text)) / 270
  DrawRect(_x, _y + 0.015, 0.005 + factor, 0.03, 31, 31, 31, 155)
end

function procent(time)
  showPro = true
  TimeLeft = 0
  repeat
  TimeLeft = TimeLeft + 1 -- thank you (github.com/Loffes)
  Citizen.Wait(time)
  until(TimeLeft == 100)
  showPro = false
end

function teleport(confMenu)
  local values = GetHouseValues(house, burglaryPlaces)
  local playerPed = PlayerPedId()
  SetCoords(playerPed, confMenu.pos.x, confMenu.pos.y, confMenu.pos.z - 0.98)
  SetEntityHeading(playerPed, confMenu.pos.h)
  DoingBreak = false
end

function GetHouseValues(house, pair)
  for k, v in pairs(pair) do
    if k == house then
      return v
    end
  end
end
--[[
if useBlip then
  Citizen.CreateThread(function()
    for k, v in pairs(burglaryPlaces) do
       local blip = AddBlipForCoord(v.pos.x, v.pos.y, v.pos.z)
       SetBlipSprite (blip, 40)
       SetBlipDisplay(blip, 4)
       SetBlipScale (blip, 0.8)
       SetBlipColour (blip, 39)
       SetBlipAsShortRange(blip, true)
       BeginTextCommandSetBlipName("STRING")
       AddTextComponentString('Burglary')
       EndTextCommandSetBlipName(blip)
    end
  end)
end
--]]
RegisterNetEvent('99kr-burglary:Sound')
AddEventHandler('99kr-burglary:Sound', function(sound1, sound2)
PlaySoundFrontend(-1, sound1, sound2)
end)

--------------  Pawn Shop ---------------------------
function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

local blips = {
  {title="Pawnshop", colour=4, id=133, x = 412.31, y = 314.11, z = 103.02}
}

Citizen.CreateThread(function()
  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 1.0)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
  end
end)

local gym = {
  {x = 412.31, y = 314.11, z = 103.02}
}

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      for k in pairs(gym) do
          DrawMarker(21, gym[k].x, gym[k].y, gym[k].z, 0, 0, 0, 0, 0, 0, 0.301, 0.301, 0.3001, 0, 153, 255, 255, 0, 0, 0, 0)
      end
  end
end)

Citizen.CreateThread(function()
  while true do
      Citizen.Wait(0)
      for k in pairs(gym) do
        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, gym[k].x, gym[k].y, gym[k].z)
        if dist <= 0.5 then
          DrawText3D(plyCoords.x, plyCoords.y, plyCoords.z, "~w~Pressiona ~r~[H] ~w~ para vender!", 0.4)
          if IsControlJustPressed(0, Keys['H'])then
            OpenSellMenu()
          end
        end		
      end
  end
end)

function OpenSellMenu()
  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'pawn_sell_menu',
      {
          title    = 'Itens que a loja compra',
          elements = {
              {label = 'Anel ($150)', value = 'ring'},
              {label = 'Relógio ($100)', value = 'rolex'},
              {label = 'Camera ($135)', value = 'camera'},
              {label = 'Colar de ouro ($160)', value = 'goldNecklace'},
              {label = 'Portátil ($450)', value = 'laptop'},
              {label = 'Samsung ($150)', value = 'samsungS10'},
          }
      },
      function(data, menu)
          if data.current.value == 'ring' then
              TriggerServerEvent('99kr-burglary:sellring')
          elseif data.current.value == 'rolex' then
              TriggerServerEvent('99kr-burglary:sellrolex')
          elseif data.current.value == 'camera' then
              TriggerServerEvent('99kr-burglary:sellcamera')
          elseif data.current.value == 'goldNecklace' then
              TriggerServerEvent('99kr-burglary:sellgoldNecklace')
          elseif data.current.value == 'laptop' then
              TriggerServerEvent('99kr-burglary:selllaptop')
          elseif data.current.value == 'samsungS10' then
              TriggerServerEvent('99kr-burglary:sellsamsungS10')
          end
      end,
      function(data, menu)
          menu.close()
      end
  )
end