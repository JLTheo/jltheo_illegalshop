ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('jl_theo:BuyPistolet')
AddEventHandler('jl_theo:BuyPistolet', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_pistol')
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('jl_theo:BuyPoing')
AddEventHandler('jl_theo:BuyPoing', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('weapon_knuckle')
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)

RegisterNetEvent('jl_theo:BuyAmmoPistolet')
AddEventHandler('jl_theo:BuyAmmoPistolet', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 40
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('clip', '1')
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
    end
end)



RegisterNetEvent('jl_theo:BuyWeed')
AddEventHandler('jl_theo:BuyWeed', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('weed', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Tu n'a pas assez ~r~d\'argent")
    end
end)


RegisterNetEvent('jl_theo:BuyCoke')
AddEventHandler('jl_theo:BuyCoke', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 350
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('coke', 1)
        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
    else
         TriggerClientEvent('esx:showNotification', source, "Tu n'a pas assez ~r~d\'argent")
    end
end)