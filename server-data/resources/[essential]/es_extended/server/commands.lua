TriggerEvent('es:addGroupCommand', 'tp', 'admin', function(source, args, user)
	local x = tonumber(args[1])
	local y = tonumber(args[2])
	local z = tonumber(args[3])

	if x and y and z then
		TriggerClientEvent('esx:teleport', source, {
			x = x,
			y = y,
			z = z
		})
	else
		TriggerClientEvent('chatMessage', source, 'SYSTEM', {255, 0, 0}, 'Invalid coordinates!')
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Teleport to coordinates', params = {
	{name = 'x', help = 'X coords'},
	{name = 'y', help = 'Y coords'},
	{name = 'z', help = 'Z coords'}
}})

TriggerEvent('es:addGroupCommand', 'tpptop', 'admin', function(source, args, user)
	local playerId_go = ESX.GetPlayerFromId(args[1])
	local playerId_to = ESX.GetPlayerFromId(args[2])
	if playerId_go and playerId_to then
		print(playerId_go.getCoords(true))
		print(playerId_to.getCoords(true))
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Teleport player to player', params = {
	{name = 'playerId(go)', help = _U('id_param')},
	{name = 'playerId(to)', help = _U('id_param')}
}})

TriggerEvent('es:addGroupCommand', 'tpto', 'admin', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(args[1])
	if xPlayer then
		local coords = xPlayer.getCoords(true)
		TriggerClientEvent('esx:teleport', source, {
			x = coords.x,
			y = coords.y,
			z = coords.z
		})
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Teleport to player', params = {
	{name = 'playerId', help = _U('id_param')}
}})

TriggerEvent('es:addGroupCommand', 'setjob', 'jobmaster', function(source, args, user)
	if tonumber(args[1]) and args[2] and tonumber(args[3]) then
		local xPlayer = ESX.GetPlayerFromId(args[1])

		if xPlayer then
			if ESX.DoesJobExist(args[2], args[3]) then
				xPlayer.setJob(args[2], args[3])
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'That job does not exist.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid usage.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('setjob'), params = {
	{name = 'playerId', help = _U('id_param')},
	{name = 'job', help = _U('setjob_param2')},
	{name = 'grade_id', help = _U('setjob_param3')}
}})

TriggerEvent('es:addGroupCommand', 'car', 'admin', function(source, args, user)
	TriggerClientEvent('esx:spawnVehicle', source, args[1])
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('spawn_car'), params = {{name = 'car', help = _U('spawn_car_param')}}})

TriggerEvent('es:addGroupCommand', 'cardel', 'admin', function(source, args, user)
	TriggerClientEvent('esx:deleteVehicle', source, args[1])
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('delete_vehicle'), params = {
	{name = 'radius', help = 'Optional, delete every vehicle within the specified radius'}
}})

TriggerEvent('es:addGroupCommand', 'dv', 'admin', function(source, args, user)
	TriggerClientEvent('esx:deleteVehicle', source, args[1])
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('delete_vehicle'), params = {
	{name = 'radius', help = 'Optional, delete every vehicle within the specified radius'}
}})

TriggerEvent('es:addGroupCommand', 'givemoney', 'admin', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(args[1])

	if xPlayer then
		local amount = tonumber(args[2])

		if amount then
			xPlayer.addMoney(amount)
		else
			TriggerClientEvent('esx:showNotification', source, _U('amount_invalid'))
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('givemoney'), params = {
	{name = 'playerId', help = _U('id_param')},
	{name = 'amount', help = _U('money_amount')}
}})

TriggerEvent('es:addGroupCommand', 'givebankmoney', 'admin', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(args[1])

	if xPlayer then
		local amount = tonumber(args[2])

		if amount then
			xPlayer.addBank(amount)
		else
			TriggerClientEvent('esx:showNotification', source, _U('amount_invalid'))
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('givebankmoney'), params = {
	{name = 'playerId', help = _U('id_param')},
	{name = 'amount', help = _U('money_amount')}
}})

TriggerEvent('es:addGroupCommand', 'giveaccountmoney', 'admin', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(args[1])

	if xPlayer then
		local account = args[2]
		local amount = tonumber(args[3])

		if amount then
			if xPlayer.getAccount(account) then
				xPlayer.addAccountMoney(account, amount)
			else
				TriggerClientEvent('esx:showNotification', source, _U('invalid_account'))
			end
		else
			TriggerClientEvent('esx:showNotification', source, _U('amount_invalid'))
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('giveaccountmoney'), params = {
	{name = 'playerId', help = _U('id_param')},
	{name = 'account', help = _U('account')},
	{name = 'amount', help = _U('money_amount')}
}})

TriggerEvent('es:addGroupCommand', 'giveitem', 'admin', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(args[1])

	if xPlayer then
		local item = args[2]
		local count = tonumber(args[3])

		if count then
			if xPlayer.getInventoryItem(item) then
				xPlayer.addInventoryItem(item, count)
			else
				TriggerClientEvent('esx:showNotification', source, _U('invalid_item'))
			end
		else
			TriggerClientEvent('esx:showNotification', source, _U('invalid_amount'))
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('giveitem'), params = {
	{name = 'playerId', help = _U('id_param')},
	{name = 'item', help = _U('item')},
	{name = 'amount', help = _U('amount')}
}})

TriggerEvent('es:addGroupCommand', 'giveweapon', 'admin', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(args[1])

	if xPlayer then
		local weaponName = args[2] or 'unknown'

		if ESX.GetWeapon(weaponName) then
			if xPlayer.hasWeapon(weaponName) then
				TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player already has that weapon.' } })
			else
				xPlayer.addWeapon(weaponName, tonumber(args[3]))
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid weapon.' } })
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('giveweapon'), params = {
	{name = 'playerId', help = _U('id_param')},
	{name = 'weapon', help = _U('weapon')},
	{name = 'ammo', help = _U('amountammo')}
}})

TriggerEvent('es:addGroupCommand', 'giveweaponcomponent', 'admin', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(args[1])

	if xPlayer then
		local weapon = args[2] or 'unknown'

		if ESX.GetWeapon(weapon) then
			weapon = string.upper(weapon)

			if xPlayer.hasWeapon(weapon) then
				local component = ESX.GetWeaponComponent(weapon, args[3] or 'unknown')

				if component then
					if xPlayer.hasWeaponComponent(weapon, args[3]) then
						TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player already has that weapon component.' } })
					else
						xPlayer.addWeaponComponent(weapon, args[3])
					end
				else
					TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid weapon component.' } })
				end
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player does not have that weapon.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid weapon.' } })
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Give weapon component', params = {
	{name = 'playerId', help = _U('id_param')},
	{name = 'weapon', help = _U('weapon')},
	{name = 'component', help = 'weapon component'}
}})

TriggerEvent('es:addGroupCommand', 'disc', 'admin', function(source, args, user)
	DropPlayer(source, 'You have been disconnected')
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end)

TriggerEvent('es:addGroupCommand', 'disconnect', 'admin', function(source, args, user)
	DropPlayer(source, 'You have been disconnected')
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('disconnect')})

TriggerEvent('es:addGroupCommand', 'clear', 'user', function(source, args, user)
	TriggerClientEvent('chat:clear', source)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('chat_clear')})

TriggerEvent('es:addGroupCommand', 'cls', 'user', function(source, args, user)
	TriggerClientEvent('chat:clear', source)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end)

TriggerEvent('es:addGroupCommand', 'clsall', 'admin', function(source, args, user)
	TriggerClientEvent('chat:clear', -1)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end)

TriggerEvent('es:addGroupCommand', 'clearall', 'admin', function(source, args, user)
	TriggerClientEvent('chat:clear', -1)
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('chat_clear_all')})

TriggerEvent('es:addGroupCommand', 'clearinventory', 'admin', function(source, args, user)
	local xPlayer

	if args[1] then
		xPlayer = ESX.GetPlayerFromId(args[1])
	else
		xPlayer = ESX.GetPlayerFromId(source)
	end

	if xPlayer then
		for i=1, #xPlayer.inventory, 1 do
			if xPlayer.inventory[i].count > 0 then
				xPlayer.setInventoryItem(xPlayer.inventory[i].name, 0)
			end
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('command_clearinventory'), params = {{name = 'playerId', help = _U('command_playerid_param')}}})

TriggerEvent('es:addGroupCommand', 'clearloadout', 'admin', function(source, args, user)
	local xPlayer

	if args[1] then
		xPlayer = ESX.GetPlayerFromId(args[1])
	else
		xPlayer = ESX.GetPlayerFromId(source)
	end

	if xPlayer then
		for i=#xPlayer.loadout, 1, -1 do
			xPlayer.removeWeapon(xPlayer.loadout[i].name)
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = _U('command_clearloadout'), params = {{name = 'playerId', help = _U('command_playerid_param')}}})
