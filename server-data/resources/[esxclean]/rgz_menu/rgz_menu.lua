local menuOn = false

local keybindControls = {
	["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166
}

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local keybindControl = keybindControls["F1"]
        if IsControlPressed(0, keybindControl) then
            menuOn = true
            SendNUIMessage({
                type = 'init',
                resourceName = GetCurrentResourceName()
            })
            SetCursorLocation(0.5, 0.5)
            SetNuiFocus(true, true)
            PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
            while menuOn == true do Citizen.Wait(100) end
            Citizen.Wait(100)
            while IsControlPressed(0, keybindControl) do Citizen.Wait(100) end
        end
    end
end)

RegisterNUICallback('closemenu', function(data, cb)
    menuOn = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = 'destroy'
    })
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    cb('ok')
end)


RegisterNUICallback('openmenu', function(data)
    menuOn = false
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = 'destroy'
    })
    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    if data.id == 'inventory' then
        print(exports['esx_inventoryhud'])
        exports['esx_inventoryhud']:openInventory()
    elseif data.id == 'billing' then
            exports['esx_billing']:ShowBillsMenu()
    elseif data.id == 'dance' then
        local xPlayer = ESX.GetPlayerData()
        TriggerEvent("pNotify:SendNotification", {
            text = xPlayer.job.label .. " - " .. xPlayer.job.grade_label,
            type = "error",
            queue = "global",
            timeout = 3000,
            layout = "bottomRight"
          })
    elseif data.id == 'id' then
        --exports.idcard:open_idcard()
        print(GetPlayerServerId(PlayerId()))
        print(TriggerEvent("idcard:opM"))
        TriggerEvent("idcard:opM")
        --print(exports['idcard'])
        --exports['idcard']:openMenu()
    elseif data.id == 'work' then
        --local xPlayer = ESX.GetPlayerFromId(GetPlayerServerId(PlayerId()))
        --local xPlayer   = ESX.GetPlayerFromId(GetPlayerServerId(PlayerId()))
        local xPlayer = ESX.GetPlayerData()
        local has_radio = 0
        print(PlayerId())
        print(GetPlayerServerId(PlayerId()))
        --local xPlayer = ESX.GetPlayerFromId(1)
        --print(xPlayer.getMoney())
        --print("id")
        for k,v in pairs(ESX.PlayerData.inventory) do
            print(v.name)
            print(v.count)
            if v.name == 'radio' and v.count>0 then
                has_radio = 1
            end
        end
        --print(xPlayer.getInventoryItem('radio'))
        --if ESX.PlayerData.inventory then
        if has_radio then
            TriggerEvent("ls-radio:use")
        end
        --exports['gcphone']:TooglePhone()
        --exports['idcard']:openMenu()
        -- info notif 
        --[[TriggerEvent("esx_animations:OpenAnimationsMenu")
            print(exports['esx_animations'])
            exports['esx_animations']:OpenAnimationsMenu()
            print('dance!')
        ]]--
          
    elseif data.id == 'phone' then
        --exports.gcPhone:open_phone()
        --print(TriggerEvent("gcPhone:OpenPhone"))
        --TriggerEvent("gcPhone:OpenPhone")
        --print(exports['gcphone'])
        exports['gcphone']:TooglePhone()
    end

--[[
    PATTERN FOR CLIENT
    RegisterNetEvent("esx_billing:openBillings")
    AddEventHandler("esx_billing:openBillings", function()
            ShowBillsMenu()
    end)
]]--

end)
-- Callback function for testing
RegisterNUICallback('testprint', function(data, cb)
    -- Print message
    TriggerEvent('chatMessage', "[test]", {255,0,0}, data.message)

    -- Send ACK to callback function
    cb('ok')
end)
