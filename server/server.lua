ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('radio', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('ls-radio:use', source)

end)

ESX.RegisterUsableItem('karaborsaradio', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('ls-radio:use', source)

end)


ESX.RegisterServerCallback('bz:itemkontrol', function(source, cb)
local src = source
local xPlayer = ESX.GetPlayerFromId(src)
local xRadyo = xPlayer.getInventoryItem('radio').count
local xRadyo2 = xPlayer.getInventoryItem('karaborsaradio').count
cb(xRadyo, xRadyo2)
end)