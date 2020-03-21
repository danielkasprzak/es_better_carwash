RegisterServerEvent('es_better_carwash:checkmoney')
AddEventHandler('es_better_carwash:checkmoney', function ()
		TriggerEvent('es:getPlayerFromId', source, function (user)
			userMoney = user.getMoney()
			if userMoney >= 25 then
				user.removeMoney(25)
				TriggerClientEvent('es_better_carwash:success', source, 25)
			else
				moneyleft = 25 - userMoney
				TriggerClientEvent('es_better_carwash:notenoughmoney', source, moneyleft)
			end
		end)
	
end)
