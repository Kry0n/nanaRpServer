--------------------------------------------------------------------------------------
----------  Have any problem can send message to Discord:Azusakawa *#8628   ----------
----------                          Have fun !                              ----------
--------------------------------------------------------------------------------------

saved = false

ESX = nil
--[[    ESX Base    ]]
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

--[[    Light   ]]
Citizen.CreateThread(function()
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, false)
    local vehspeed = GetEntitySpeed(vehicle)
    local right = false
    local left = false
    while true do
        Citizen.Wait(0)
        if (IsPedSittingInAnyVehicle(player)) then
            if IsControlJustPressed(0, Config.Turnpass) then
                right = not right
                left = not left
                SetVehicleIndicatorLights(vehicle, 0, right)
                SetVehicleIndicatorLights(vehicle, 1, left)
            elseif IsControlJustPressed(0, Config.Turnleft) then
                left = not left
                SetVehicleIndicatorLights(vehicle, 0, right)
                SetVehicleIndicatorLights(vehicle, 1, left)
            elseif IsControlJustPressed(0, Config.Turnright) then
                right = not right
                SetVehicleIndicatorLights(vehicle, 0, right)
                SetVehicleIndicatorLights(vehicle, 1, left)
            end
        end
    end
end)

--[[    Open Menu   ]]
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0,Config.PressKey) then
            OpenVehicleMenu()
        end
    end
end)

function OpenVehicleMenu()
    local elements = {}
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'vehicle_info',
        {
        title    = '車輛控制系統',
        align    = 'bottom-right',
        elements = {
                {label = '保存', value = 'vehicle_save' },
                {label = '引擎', value = 'vehicle_engine' },
                {label = '車輛', value = 'vehicle_lock' },
                {label = '車門', value = 'vehicle_door' },
                {label = '車窗', value = 'vehicle_window'},
            },
        }, 
        function(data, menu)

        if data.current.value == 'vehicle_save' then
            local player = GetPlayerPed(-1)
            if (IsPedSittingInAnyVehicle(player)) then 
                if  saved == true then
                    saveVehicle = nil
                    RemoveBlip(targetBlip)
                    Notify("已刪除保存的車輛")
                    saved = false
                else
                    RemoveBlip(targetBlip)
                    saveVehicle = GetVehiclePedIsIn(player,true)
                    local vehicle = saveVehicle
                    targetBlip = AddBlipForEntity(vehicle)
                    SetBlipSprite(targetBlip,225)
                    Notify("車輛 ~y~" .. GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))) .. "~w~ 以保存")
                    saved = true
                end
            else
                Notify('你必須~g~在車內~w~才可以執行此~r~動作')
            end
        elseif data.current.value == 'vehicle_engine' then
            ESX.UI.Menu.CloseAll()
            ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'vehicle_engine_info',
                {
                title    = '車輛控制系統 - 引擎',
                align    = 'bottom-right',
                elements = {
                        {label = '引擎(開)', value = 'engine_on' },
                        {label = '引擎(關)', value = 'engine_off'},
                        {label = '關閉', value = 'close'},
                    },
                },
                function(data, menu)
                
                if data.current.value == 'engine_on' then
                    TriggerEvent('engine', true)
                elseif data.current.value == 'engine_off' then
                    TriggerEvent('engine', false)
                end
                ESX.UI.Menu.CloseAll()
            end)
        elseif data.current.value == 'vehicle_lock' then
            ESX.UI.Menu.CloseAll()
            ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'vehicle_lock_info',
                {
                title    = '車輛控制系統 - 車輛',
                align    = 'bottom-right',
                elements = {
                        {label = '車輛上鎖', value = 'vehicle_lock' },
                        {label = '車輛解鎖', value = 'vehicle_unlock'},
                        {label = '關閉', value = 'close'},
                    },
                },
                function(data, menu)
                if data.current.value == 'vehicle_lock' then
                    TriggerEvent('vehicle_lock', true)
                elseif data.current.value == 'vehicle_unlock' then
                    TriggerEvent('vehicle_lock', false)
                end
                ESX.UI.Menu.CloseAll()
            end)
        elseif data.current.value == 'vehicle_door' then
            ESX.UI.Menu.CloseAll()
            ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'vehicle_door_info',
                {
                title    = '車輛控制系統 - 車門',
                align    = 'bottom-right',
                elements = {
                        {label = '前門', value = 'door_font' },
                        {label = '後門', value = 'door_back' },
                        {label = '左邊的門', value = 'door_lift' },
                        {label = '右邊的門', value = 'door_right' },
                        {label = '引擎蓋', value = 'door_hood' },
                        {label = '後車箱', value = 'door_trunk' },
                        {label = '所有車門', value = 'door_all_open' },
                        {label = '關閉', value = 'close'},
                    },
                },
                function(data, menu)
                
                if data.current.value == 'door_font' then
                    TriggerEvent('door_open', 1)
                elseif data.current.value == 'door_back' then
                    TriggerEvent('door_open', 2)
                elseif data.current.value == 'door_lift' then
                    TriggerEvent('door_open', 3)
                elseif data.current.value == 'door_right' then
                    TriggerEvent('door_open', 4)
                elseif data.current.value == 'door_hood' then
                    TriggerEvent('door_open', 5)
                elseif data.current.value == 'door_trunk' then
                    TriggerEvent('door_open', 6)
                elseif data.current.value == 'door_all_open' then
                    TriggerEvent('door_open', 7)
                end
                ESX.UI.Menu.CloseAll()
            end)
        elseif data.current.value == 'vehicle_window' then
            ESX.UI.Menu.CloseAll()
            ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'vehicle_window_info',
                {
                title    = '車輛控制系統 - 車窗',
                align    = 'bottom-right',
                elements = {
                        {label = '右前車窗', value = 'window_frontL' },
                        {label = '左前車窗', value = 'window_frontR' },
                        {label = '右後車窗', value = 'window_backL' },
                        {label = '左後車窗', value = 'window_backR' },
                        {label = '所有車窗', value = 'window_all' },
                        {label = '關閉', value = 'close'},
                    },
                },
                function(data, menu)
                
                if data.current.value == 'window_frontL' then
                    TriggerEvent('window_open', 1)
                elseif data.current.value == 'window_frontR' then
                    TriggerEvent('window_open', 2)
                elseif data.current.value == 'window_backL' then
                    TriggerEvent('window_open', 3)
                elseif data.current.value == 'window_backR' then
                    TriggerEvent('window_open', 4)
                elseif data.current.value == 'window_all' then
                    TriggerEvent('window_open', 5)
                end
                ESX.UI.Menu.CloseAll()
            end)
        end
    end)
end

--[[    Function    ]]
function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, false)
end

--[[    Engine    ]]
AddEventHandler('engine', function(data)
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player,false)
    if data == true then
        Notify('引擎~g~開啟')
        if (IsPedSittingInAnyVehicle(player)) then
            engine = false
            SetVehicleUndriveable(vehicle,false)
            SetVehicleEngineOn(vehicle,true,false,false)
        end
    elseif data == false then
        Notify('引擎~r~關閉')
        if (IsPedSittingInAnyVehicle(player)) then 
            engine = true
            while engine do 
                SetVehicleUndriveable(vehicle,true)
                SetVehicleEngineOn(vehicle,false,false,false)
                Citizen.Wait(0)
            end
        end
    end
end)

--[[    lock    ]]
RegisterNetEvent('vehicle_lock')
AddEventHandler('vehicle_lock', function(data)
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, true)
    if saved == true then
        if data == true then
            if (IsPedSittingInAnyVehicle(player)) then
                SetVehicleDoorsLocked(vehicle, 4)
            else
                SetVehicleDoorsLocked(vehicle, 2)
            end
            PlayVehicleDoorCloseSound(vehicle, 1)
            Notify('車輛~g~已上鎖')
        elseif data == false then
            SetVehicleDoorsLocked(vehicle, 1)
            PlayVehicleDoorOpenSound(vehicle, 0)
            Notify('車輛~r~已解鎖')
        end
    else
        Notify('這不是你的車輛')
    end
end)

--[[    Door    ]]
AddEventHandler('door_open', function(data)
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, false) 
    if (IsPedSittingInAnyVehicle(player)) then
        if data == 1 then
            local dooropen = GetVehicleDoorAngleRatio(vehicle, 0) and GetVehicleDoorAngleRatio(vehicle, 1)
            if (dooropen == 0) then
                SetVehicleDoorOpen(vehicle,0,0,0)
                SetVehicleDoorOpen(vehicle,1,0,0)
                Notify('前門~g~開啟')
            else
                SetVehicleDoorShut(vehicle,0,0)
                SetVehicleDoorShut(vehicle,1,0)
                Notify('前門~r~關閉')
            end
        elseif data == 2 then
            local dooropen = GetVehicleDoorAngleRatio(vehicle, 2) and GetVehicleDoorAngleRatio(vehicle, 3)
            if (dooropen == 0) then
                SetVehicleDoorOpen(vehicle,2,0,0)
                SetVehicleDoorOpen(vehicle,3,0,0)
                Notify('後門~g~開啟')
            else
                SetVehicleDoorShut(vehicle,2,0)
                SetVehicleDoorShut(vehicle,3,0)
                Notify('後門~r~關閉')
            end
        elseif data == 3 then 
            local dooropen = GetVehicleDoorAngleRatio(vehicle, 0) and GetVehicleDoorAngleRatio(vehicle, 2)
            if (dooropen == 0) then
                SetVehicleDoorOpen(vehicle,0,0,0)
                SetVehicleDoorOpen(vehicle,2,0,0)
                Notify('左側的門~g~開啟')
            else
                SetVehicleDoorShut(vehicle,0,0)
                SetVehicleDoorShut(vehicle,2,0)
                Notify('左側的門~r~關閉')
            end   
        elseif data == 4 then 
            local dooropen = GetVehicleDoorAngleRatio(vehicle, 1) and GetVehicleDoorAngleRatio(vehicle, 3)
            if (dooropen == 0) then
                SetVehicleDoorOpen(vehicle,1,0,0)
                SetVehicleDoorOpen(vehicle,3,0,0)
                Notify('右側的門~g~開啟')
            else
                SetVehicleDoorShut(vehicle,1,0)
                SetVehicleDoorShut(vehicle,3,0)
                Notify('右側的門~r~關閉')
            end
        elseif data == 5 then 
            local dooropen = GetVehicleDoorAngleRatio(vehicle, 4)
            if (dooropen == 0) then
                SetVehicleDoorOpen(vehicle,4,0,0)
                Notify('引擎蓋~g~開啟')
            else
                SetVehicleDoorShut(vehicle,4,0)
                Notify('引擎蓋~r~關閉')
            end
        elseif data == 6 then 
            local dooropen = GetVehicleDoorAngleRatio(vehicle, 5)
            if (dooropen == 0) then
                SetVehicleDoorOpen(vehicle,5,0,0)
                Notify('後車箱~g~開啟')
            else
                SetVehicleDoorShut(vehicle,5,0)
                Notify('後車箱~r~關閉')
            end
        elseif data == 7 then 
            local dooropen = GetVehicleDoorAngleRatio(vehicle, 5) and GetVehicleDoorAngleRatio(vehicle, 4) and GetVehicleDoorAngleRatio(vehicle, 3) and GetVehicleDoorAngleRatio(vehicle, 2) and GetVehicleDoorAngleRatio(vehicle, 1) and GetVehicleDoorAngleRatio(vehicle, 0)
            if (dooropen == 0) then
                SetVehicleDoorOpen(vehicle,5,0,0)
                SetVehicleDoorOpen(vehicle,4,0,0)
                SetVehicleDoorOpen(vehicle,3,0,0)
                SetVehicleDoorOpen(vehicle,2,0,0)
                SetVehicleDoorOpen(vehicle,1,0,0)
                SetVehicleDoorOpen(vehicle,0,0,0)
                Notify('所有車門~g~開啟')
            else
                SetVehicleDoorShut(vehicle,5,0)
                SetVehicleDoorShut(vehicle,4,0,0)
                SetVehicleDoorShut(vehicle,3,0,0)
                SetVehicleDoorShut(vehicle,2,0,0)
                SetVehicleDoorShut(vehicle,1,0,0)
                SetVehicleDoorShut(vehicle,0,0,0)
                Notify('所有車門~r~關閉')
            end
        end
    else
        Notify('你必須~g~在車內~w~才可以執行此~r~動作')
    end
end)

--[[    Window    ]]
AddEventHandler('window_open', function(data)
    local player = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(player, false) 
    if (IsPedSittingInAnyVehicle(player)) then
        if data == 1 then
            RollDownWindow(vehicle, 1)
        elseif data == 2 then
            RollDownWindow(vehicle, 0)
        elseif data == 3 then
            RollDownWindow(vehicle, 3)
        elseif data == 4 then
            RollDownWindow(vehicle, 2)
        elseif data == 5 then
            RollUpWindow(vehicle, 0)
            RollUpWindow(vehicle, 1)
            RollUpWindow(vehicle, 2)
            RollUpWindow(vehicle, 3)
        end
    else
        Notify('你必須~g~在車內~w~才可以執行此~r~動作')
    end
end)