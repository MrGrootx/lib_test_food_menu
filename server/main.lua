ESX = exports["es_extended"]:getSharedObject()


RegisterNetEvent('food_shop_buy_apple')
AddEventHandler('food_shop_buy_apple', function()
   print("Apple event Triggerd")
   local _source = source
   local xPlayer = ESX.GetPlayerFromId(_source)
   local pMoney = xPlayer.getMoney()
   local xPlayerName = xPlayer.getName()
   print(xPlayerName)

   if pMoney >= 10 then
      print("player has money")
      if xPlayer ~= nil then
         print("Player is online")
         xPlayer.addInventoryItem('water', 1)
         xPlayer.removeMoney(10)
      end
   else
      print("no on no money")
      TriggerClientEvent('esx:showNotification', _source,
         "oops " .. " " .. xPlayerName .. " " .. "you don't have enough to buy Foods", 'info', 5000)
   end
end)
