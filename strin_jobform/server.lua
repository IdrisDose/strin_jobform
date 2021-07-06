

function getPlayersIdentifier(id)
	if USING_QBUS == true then
		local identifier = GetPlayerIdentifiers(id)[2]
		local cutIdentifier = string.gsub(identifier, "license:", "")
		return cutIdentifier
	else
		local identifier = GetPlayerIdentifiers(id)[1]
		return identifier
	end
end




RegisterServerEvent('strin_jobform:sendWebhook')
AddEventHandler('strin_jobform:sendWebhook', function(data)
	local Player = QBCore.Functions.GetPlayer(source)
	local job = data.job
	local label = data.label
    local firstname = Player.PlayerData.charinfo.firstname
    local lastname = Player.PlayerData.charinfo.lastname
    local phone = Player.PlayerData.charinfo.phone
	local dob = Player.PlayerData.charinfo.birthdate
	local citizenid = Player.PlayerData.citizenid 
	local headers = {
		['Content-Type'] = 'application/json'

	}
	local data = {
		["username"] = label,
		["embeds"] = {{
		  	["color"] = 3447003,
		  	['description'] = '🧍**Personal Information**\n\n • Firstname: '..firstname..'\n\n • Lastname: '..lastname..'\n\n • Date of Birth: '..dob..'\n\n • Phone Number: '..phone..'\n \nWhy are you interested joining our Company?\n'..data.wayjoc..'\n \nTell us why we should pick you over someone else?\n'..data.tuaby,
		  	["footer"] = {

			  	["text"] = '📝Applicants Citizen ID- '..citizenid
			
		  	}
		}}
	}
	PerformHttpRequest(WEBHOOKS[job], function(err, text, headers) end, 'POST', json.encode(data), headers)
end)

