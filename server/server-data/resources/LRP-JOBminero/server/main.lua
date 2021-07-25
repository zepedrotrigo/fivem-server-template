ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("esxLRP:darpiedra")
AddEventHandler("esxLRP:darpiedra", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
  --local picoitem = xPlayer.getInventoryItem('pico').count 

    if xPlayer ~= nil then
            if xPlayer.getInventoryItem('stone').count < 20 then
            
            xPlayer.addInventoryItem('stone', 3)

            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaverde', text = ' Encontraste pedras',length = 7000})
                -- TriggerClientEvent('esx:showNotification', source, 'You received ~b~stones.')
            else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Não podes transportar mais pedras ',length = 7000})

            end
    end
    end)

    
RegisterNetEvent("esxLRP:lavarpiedra")
AddEventHandler("esxLRP:lavarpiedra", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
  local washstonecantidad = xPlayer.getInventoryItem('washed_stone').count    
  --local picoitem = xPlayer.getInventoryItem('pico').count    
        if xPlayer ~= nil then
if washstonecantidad  > 19 then   
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = 'Não podes transportar mais pedras lavadas',length = 5500})
        else    
           
      if xPlayer.getInventoryItem('stone').count > 0 then
                TriggerClientEvent("esxLRP:lavarpiedra", source)
                Citizen.Wait(15900)
                xPlayer.addInventoryItem('washed_stone', 1)
                xPlayer.removeInventoryItem("stone", 1)
           
               elseif xPlayer.getInventoryItem('stone').count < 1 then

                TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Não tens pedras para lavar.',length = 7000})
             
              else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Não tens pedras suficientes para lavar. ',length = 7000})

                --TriggerClientEvent('esx:showNotification', source, 'You do not have ~b~stones.')
       end
 end     

        end
    
end)

RegisterNetEvent("esxLRP:fundirpiedra")
AddEventHandler("esxLRP:fundirpiedra", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local randomChance = math.random(1, 100)
    --local picoitem = xPlayer.getInventoryItem('pico').count    
   
    local limitediamante =  xPlayer.getInventoryItem('diamond').count 
    local limiteoro =       xPlayer.getInventoryItem('gold').count 
    local limitehierro =    xPlayer.getInventoryItem('iron').count 
    local limitecobre =     xPlayer.getInventoryItem('copper').count 

    if xPlayer ~= nil then
        if xPlayer.getInventoryItem('washed_stone').count > 0 then
            TriggerClientEvent("esxLRP:fundirpiedra", source)
            Citizen.Wait(15900)
            if randomChance < 10 then

            if limitediamante > 9 then
                TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaroja', text = ' Não podes transportar mais diamantes ',length = 7000})
            else

                xPlayer.addInventoryItem("diamond", 2)
                xPlayer.removeInventoryItem("washed_stone", 1)
                --TriggerClientEvent('esx:showNotification', _source, 'You get ~b~1 diamond ~w~for 10 washed stones.')
                    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajanegra', text = ' Obtiveste',length = 5000})
                    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaazul', text = ' Diamante x2 ',length = 5000})
            end
            
            elseif randomChance > 9 and randomChance < 25 then

                if limiteoro > 9 then
                TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaroja', text = ' Não podes transportar mais ouro',length = 7000})
            else
                xPlayer.addInventoryItem("gold", 2)
                xPlayer.removeInventoryItem("washed_stone", 1)
                --  TriggerClientEvent('esx:showNotification', _source, 'You get ~y~5 gold ~w~for 10 washed stones.')
                    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajanegra', text = ' Obtiveste',length = 5000})
                    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaazul', text = ' Ouro x2 ',length = 5000})
            end

            elseif randomChance > 24 and randomChance < 50 then
            

            if limitehierro > 9 then
                TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaroja', text = ' Não podes transportar mais ferro',length = 7000})
            else

                xPlayer.addInventoryItem("iron", 2)
                xPlayer.removeInventoryItem("washed_stone", 1)
                --TriggerClientEvent('esx:showNotification', _source, 'You got ~w~10 iron for 10 washed stones.')
                    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajanegra', text = ' Obtiveste',length = 5000})
                    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaazul', text = ' Ferro x2 ',length = 5000})
            end
            
            elseif randomChance > 49 then

        
                if limitecobre > 14 then
                TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaroja', text = ' Não podes transportar mais cobre ',length = 7000})
                else
                xPlayer.addInventoryItem("copper", 2)
                xPlayer.removeInventoryItem("washed_stone", 1)
                -- TriggerClientEvent('esx:showNotification', _source, 'You got ~o~20 copper ~w~for 10 washed stones.')
                    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajanegra', text = ' Obtiveste ',length = 5000})
                    TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'cajaazul', text = ' Cobre x2 ',length = 5000})

                    end
            
            end
        
        elseif xPlayer.getInventoryItem('washed_stone').count < 1 then
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Não tens pedra lavada suficiente para fundir. ',length = 7000})


        end
    

    end

end)

RegisterNetEvent("esxLRP:VentaDiamante")
AddEventHandler("esxLRP:VentaDiamante", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
  --local picoitem = xPlayer.getInventoryItem('pico').count 
    if xPlayer ~= nil then

        if xPlayer.getInventoryItem('diamond').count > 0 then
            local pieniadze = Config.DiamondPrice
            xPlayer.removeInventoryItem('diamond', 1)
            xPlayer.addMoney(pieniadze)

            -- TriggerClientEvent('esx:showNotification', source, 'You sell ~b~1 diamond.')
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaverde', text = 'Vendeste um diamante ',length = 2500})

        elseif xPlayer.getInventoryItem('diamond').count < 1 then
            
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Não tens diamantes para vender ',length = 3500})
            --TriggerClientEvent('esx:showNotification', source, 'You do not have ~b~diamonds.')
        
        end
    end
end)

RegisterNetEvent("esxLRP:VentaOro")
AddEventHandler("esxLRP:VentaOro", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
  --local picoitem = xPlayer.getInventoryItem('pico').count 
    if xPlayer ~= nil then
        if xPlayer.getInventoryItem('gold').count > 0 then
            local pieniadze = Config.GoldPrice
            xPlayer.removeInventoryItem('gold', 1)
            xPlayer.addMoney(pieniadze)

        --TriggerClientEvent('esx:showNotification', source, 'You sell ~y~5 gold.')
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaverde', text = 'Vendeste ouro',length = 2500})

        elseif xPlayer.getInventoryItem('gold').count < 1 then

        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Não tens ouro para vender',length = 3500})
        -- TriggerClientEvent('esx:showNotification', source, 'You do not have ~b~gold')
        
        end
    end
end)

RegisterNetEvent("esxLRP:VentaHierro")
AddEventHandler("esxLRP:VentaHierro", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
  --local picoitem = xPlayer.getInventoryItem('pico').count 
    if xPlayer ~= nil then
        if xPlayer.getInventoryItem('iron').count > 0 then
            local pieniadze = Config.IronPrice
            xPlayer.removeInventoryItem('iron', 1)              
            xPlayer.addMoney(pieniadze)

            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaverde', text = 'Vendeste Ferro ',length = 2500})
            -- TriggerClientEvent('esx:showNotification', source, 'You sell ~w~10 iron.')
        
        elseif xPlayer.getInventoryItem('iron').count < 1 then
            --TriggerClientEvent('esx:showNotification', source, 'You do not have ~b~iron.')
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Não tens ferro para vender ',length = 3500})

        end
    end
end)

RegisterNetEvent("esxLRP:VentaCobre")
AddEventHandler("esxLRP:VentaCobre", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    --local picoitem = xPlayer.getInventoryItem('pico').count 

    if xPlayer ~= nil then
        if xPlayer.getInventoryItem('copper').count > 0 then
            local pieniadze = Config.CopperPrice
            xPlayer.removeInventoryItem('copper', 1)
            xPlayer.addMoney(pieniadze)

            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaverde', text = 'Vendeste Cobre ',length = 2500})
            --TriggerClientEvent('esx:showNotification', source, 'You sell ~o~20 copper.')
        elseif xPlayer.getInventoryItem('copper').count < 1 then
            --TriggerClientEvent('esx:showNotification', source, 'You do not have ~b~copper.')
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'cajaroja', text = ' Não tens cobre para vender. ',length = 3500})

        end
    end
end)
