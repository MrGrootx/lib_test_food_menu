ESX = exports["es_extended"]:getSharedObject()


RegisterNetEvent('food_shop_buy')
AddEventHandler('food_shop_buy', function(item, itemQuant)
   BuyFood(item, itemQuant, 1)
end)


function BuyFood(itemName, itemPrice, itemQuantity)
   print("Apple event Triggerd")
   local _source = source
   local xPlayer = ESX.GetPlayerFromId(_source)
   local pMoney = xPlayer.getMoney()
   local xPlayerName = xPlayer.getName()


   if pMoney >= 10 then
      print("player has money")
      if xPlayer ~= nil then
         print("Player is online")
         xPlayer.addInventoryItem(itemName, itemQuantity)
         xPlayer.removeMoney(itemPrice)
      end
   else
      print("no on no money")
      TriggerClientEvent('esx:showNotification', _source,
         "oops " .. " " .. xPlayerName .. " " .. "you don't have enough to buy Foods", 'info', 5000)
   end
end
