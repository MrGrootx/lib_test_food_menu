ESX = exports["es_extended"]:getSharedObject()


lib.registerContext({
   id = "open_food_shop",
   title = "Foodie Food",
   options = {
      {
         title = "Fruit Store",
         description = "you can find fresh fruits here buddys!",
         menu = "open_food_shop_buy_app",
      }
   }
})


-- Buy Store
lib.registerContext({
   id = "open_food_shop_buy_app",
   title = "Foodie Food Shop",
   menu = "open_food_shop",
   options = {
      {
         title = "Burger",
         description = "grab a couple of burger",
         image =
         "https://th.bing.com/th/id/OIP.Xpa7p1XJIYLs4HX5jjkHmwHaGJ?rs=1&pid=ImgDetMain",
         metadata = {
            { label = 'Name',  value = 'Burger' },
            { label = 'Price', value = '$' .. 20 }
         },
         onSelect = function()
            -- print("You just bought some Apples")
            TriggerServerEvent("food_shop_buy", 'burger', 20)
         end,
      },
      {
         title = "Water",
         description = "Buy a Water",
         image =
         "https://th.bing.com/th/id/OIP.wgyA-fuaaRIyqVR9Zv3jcgHaK3?rs=1&pid=ImgDetMain",
         metadata = {
            { label = 'Name',  value = 'Water' },
            { label = 'Price', value = '$' .. 5 }
         },
         onSelect = function()
            TriggerServerEvent("food_shop_buy", 'water', 10)
            print("You just bought some Waters")
         end,
      },

   }
})



RegisterCommand('buyfood', function()
   lib.showContext('open_food_shop')
end, false)
