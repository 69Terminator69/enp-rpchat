
----------------- CREATE BY termidev#9944 ----------------- 
----------------- EDIT BY ᴀʀɪᴜᴋʏ®#3449 --------------------

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- OOC LOCAL (PROXIMIDAD)
AddEventHandler('chatMessage', function(source, name, message)
    if string.sub(message, 1, string.len("/")) ~= "/" then
        local name = GetPlayerName(source)
        --TriggerClientEvent('enp-rpchat:sendProximity', -1, source, name, message, "ooc")
    end
    CancelEvent()
end)

RegisterCommand('oop', function(source, args)
    if source > 0 then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        if args then
            TriggerClientEvent('enp-rpchat:sendProximity', -1, source, name, args, "ooc")
        end
    end
end, false)

RegisterCommand('me', function(source, args)
    if source > 0 then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        if args then
            TriggerClientEvent('enp-rpchat:sendProximity', -1, source, name, args, "me")
        end
    end
end, false)

RegisterCommand('do', function(source, args)
    if source > 0 then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        if args then
            TriggerClientEvent('enp-rpchat:sendProximity', -1, source, name, args, "do")
        end
    end
end, false)

RegisterCommand('ayuda', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end

	args = table.concat(args, ' ')
	local name = GetPlayerName(source)

	TriggerClientEvent('chat:addMessage', -1, { args = { 'Ayuda ', '['..source..'] '.. args }, color = { 255, 153, 51 } })
end, false)

RegisterCommand('tw', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end

	args = table.concat(args, ' ')
	local name = GetPlayerName(source)
    local namepj = GetCharacterName(source)
	TriggerClientEvent('chat:addMessage', -1, { args = { '[Twitter] ', ' ^4 ['..source..'] ['..namepj..'] ^7 '.. args }, color = { 0, 153, 204 } })
end, false)

RegisterCommand('pol', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end
	local target = ESX.GetPlayerFromId(source)

	if target.job ~= nil and target.job.name == "police" then
		args = table.concat(args, ' ')
		local name = GetPlayerName(source)

		TriggerClientEvent('chat:addMessage', -1, { args = { '🚔| Policía: ^7 '.. args }, color = { 0, 153, 255 } })
	end
end, false)

RegisterCommand('meca', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end
	local target = ESX.GetPlayerFromId(source)

	if target.job ~= nil and target.job.name == "mechanic" then
		args = table.concat(args, ' ')
		local name = GetPlayerName(source)
		if Config.EnableESXIdentity then name = GetCharacterName(source) end

		TriggerClientEvent('chat:addMessage', -1, { args = { '🔧| Mecanico: ^7 '.. args }, color = { 235, 235, 224 } })
	end
end, false)

RegisterCommand('ems', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end
	local target = ESX.GetPlayerFromId(source)

	if target.job ~= nil and target.job.name == "ambulance" then
		args = table.concat(args, ' ')
		local name = GetPlayerName(source)
		if Config.EnableESXIdentity then name = GetCharacterName(source) end

		TriggerClientEvent('chat:addMessage', -1, { args = { '🚑| Cruz Roja: ^7 '.. args }, color = { 255, 0, 0 } })
	end
end, false)

RegisterCommand('badu', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end
	local target = ESX.GetPlayerFromId(source)

	if target.job ~= nil and target.job.name == "badulake" then
		args = table.concat(args, ' ')
		local name = GetPlayerName(source)
		if Config.EnableESXIdentity then name = GetCharacterName(source) end

		TriggerClientEvent('chat:addMessage', -1, { args = { '🛒| Badulake: ^7 '.. args }, color = { 0, 255, 153 } })
	end
end, false)

RegisterCommand('taxi', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end
	local target = ESX.GetPlayerFromId(source)

	if target.job ~= nil and target.job.name == "taxi" then
		args = table.concat(args, ' ')
		local name = GetPlayerName(source)
		if Config.EnableESXIdentity then name = GetCharacterName(source) end

		TriggerClientEvent('chat:addMessage', -1, { args = { '🚕| Taxi: ^7 '.. args }, color = { 255, 255, 102 } })
	end
end, false)

RegisterCommand('weed', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end
	local target = ESX.GetPlayerFromId(source)

	if target.job ~= nil and target.job.name == "weedshop" then
		args = table.concat(args, ' ')
		local name = GetPlayerName(source)
		if Config.EnableESXIdentity then name = GetCharacterName(source) end

		TriggerClientEvent('chat:addMessage', -1, { args = { '🍁| WeedShop: ^2 '.. args }, color = { 235, 235, 224 } })
	end
end, false)

RegisterCommand('fbi', function(source, args, rawCommand)
	if source == 0 then
		print('enp-rpchat: you can\'t use this command from rcon!')
		return
	end
	local target = ESX.GetPlayerFromId(source)

	if target.job ~= nil and target.job.name == "fbi" then
		args = table.concat(args, ' ')
		local name = GetPlayerName(source)
		if Config.EnableESXIdentity then name = GetCharacterName(source) end

		TriggerClientEvent('chat:addMessage', -1, { args = { '🕵️‍♂️| Cni: ^3 '.. args }, color = { 235, 235, 224 } })
	end
end, false)

RegisterCommand('rpol', function(source, args, rawCommand)
    if source == 0 then
        print('enp-rpchat: you can\'t use this command from rcon!')
        return
    end

    local target = ESX.GetPlayerFromId(source)

    if target.job ~= nil and target.job.name == "police" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        TriggerClientEvent('chat:addMessage', -1, { args = { '👮‍♂️| POLICÍA PRIVADO: ^1' ..name..' ^1 '..xPlayer.job.grade_label.. ' ^7 '..args }, color = { 0, 153, 255 } })
    else
        TriggerClientEvent('esx:showNotification',source,"No eres policia.")
    end
end, false)

RegisterCommand('rems', function(source, args, rawCommand)
    if source == 0 then
        print('enp-rpchat: you can\'t use this command from rcon!')
        return
    end

    local target = ESX.GetPlayerFromId(source)

    if target.job ~= nil and target.job.name == "ambulance" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        TriggerClientEvent('chat:addMessage', -1, { args = { ' 👨‍⚕️| EMS PRIVADO: ^4' ..name..' ^1 '..xPlayer.job.grade_label.. ' ^7 '..args }, color = { 255, 128, 128 } })
    else
        TriggerClientEvent('esx:showNotification',source,"No eres médico.")
    end
end, false)

RegisterCommand('rmeca', function(source, args, rawCommand)
    if source == 0 then
        print('enp-rpchat: you can\'t use this command from rcon!')
        return
    end

    local target = ESX.GetPlayerFromId(source)

    if target.job ~= nil and target.job.name == "mechanic" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        TriggerClientEvent('chat:addMessage', -1, { args = { ' 🔨| MECÁNICO PRIVADO: ^4' ..name..' ^1 '..xPlayer.job.grade_label.. ' ^7 '..args }, color = { 179, 179, 179 } })
    else
        TriggerClientEvent('esx:showNotification',source,"No eres mecánico.")
    end
end, false)

RegisterCommand('rtaxi', function(source, args, rawCommand)
    if source == 0 then
        print('enp-rpchat: you can\'t use this command from rcon!')
        return
    end

    local target = ESX.GetPlayerFromId(source)

    if target.job ~= nil and target.job.name == "taxi" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        TriggerClientEvent('chat:addMessage', -1, { args = { ' 🚖| TAXI PRIVADO: ^4' ..name..' ^1 '..xPlayer.job.grade_label.. ' ^7 '..args }, color = { 255, 204, 0 } })
    else
        TriggerClientEvent('esx:showNotification',source,"No eres taxista.")
    end
end, false)

RegisterCommand('rpp', function(source, args, rawCommand)
    if source == 0 then
        print('enp-rpchat: you can\'t use this command from rcon!')
        return
    end

    local target = ESX.GetPlayerFromId(source)

    if target.job ~= nil and target.job.name == "ambulance" or target.job.name == "police" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        TriggerClientEvent('chat:addMessage', -1, { args = { ' 🚔🚑 | POLICÍA & EMS PRIVADO: ^4' ..name..' ^1 '..xPlayer.job.grade_label.. ' ^7 '..args }, color = { 179, 255, 217 } })
    else
        TriggerClientEvent('esx:showNotification',source,"No eres ni polcia ni ems.")
    end
end, false)

RegisterCommand('rff', function(source, args, rawCommand)
    if source == 0 then
        print('enp-rpchat: you can\'t use this command from rcon!')
        return
    end

    local target = ESX.GetPlayerFromId(source)

    if target.job ~= nil and target.job.name == "fbi" or target.job.name == "police" then
        local xPlayer = ESX.GetPlayerFromId(source)
        local name = xPlayer.getName()
        args = table.concat(args, " ")
        TriggerClientEvent('chat:addMessage', -1, { args = { ' 👮‍🕵️‍♂️| POLICÍA & FBI PRIVADO: ^4' ..name..' ^1 '..xPlayer.job.grade_label.. ' ^7 '..args }, color = { 218, 179, 255 } })
    else
        TriggerClientEvent('esx:showNotification',source,"No eres ni polcia ni fbi.")
    end
end, false)

TriggerEvent('es:addCommand', 'sf', function(source, args, user)
    local grupos = getIdentity(source)
    local nome = getIdentity(source)
    if grupos.group == 'admin' or grupos.group == 'superadmin' then
        TriggerClientEvent("sendMessageAdmin", -1, source, nome.name, table.concat(args, " "))
    end    
end, {help = 'Chat Admins.'})


function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			name = identity['name'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height'],
			job = identity['job'],
			group = identity['group']
		}
	else
		return nil
	end
end

function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end
  
function GetCharacterName(source)
	local result = MySQL.Sync.fetchAll('SELECT firstname, lastname FROM users WHERE identifier = @identifier', {
		['@identifier'] = GetPlayerIdentifiers(source)[1]
	})

	if result[1] and result[1].firstname and result[1].lastname then
		if Config.OnlyFirstname then
			return result[1].firstname
		else
			return ('%s %s'):format(result[1].firstname, result[1].lastname)
		end
	else
		return GetPlayerName(source)
	end
end