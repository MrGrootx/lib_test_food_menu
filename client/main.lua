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
         title = "Apple",
         description = "grab a couple of apple",
         image =
         "https://th.bing.com/th/id/R.fa020e00e8fa2eafac81b41f561fc2da?rik=H1ijCVvvptkPqw&riu=http%3a%2f%2fpurepng.com%2fpublic%2fuploads%2flarge%2fpurepng.com-red-appleapplemalus-domesticafruitdeliciousred-apple-170152716492043huf.png&ehk=WrG97S3qgK%2fSTkz0HfXM33dWeuAe92PbLwCo%2fh0Ow7A%3d&risl=1&pid=ImgRaw&r=0",
         metadata = {
            { label = 'Name',  value = 'Apple' },
            { label = 'Price', value = '$' .. 20 }
         },
         onSelect = function()
            -- print("You just bought some Apples")
            TriggerServerEvent("food_shop_buy_apple")
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
            print("You just bought some Waters")
         end,
      },

   }
})



RegisterCommand('buyfood', function()
   lib.showContext('open_food_shop')
end, false)
