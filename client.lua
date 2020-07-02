ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)


RMenu.Add('shopillgal', 'main', RageUI.CreateMenu("Vendeur Illégal", "Vendeur Illégal"))
RMenu.Add('shopillgal', 'drogue', RageUI.CreateSubMenu(RMenu:Get('shopillgal', 'main'), "Drogue", "Achète Ta Drogue"))
RMenu.Add('shopillgal', 'arme', RageUI.CreateSubMenu(RMenu:Get('shopillgal', 'main'), "Arme", "Achète Ton Arme"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('shopillgal', 'main'), true, true, true, function()

            RageUI.Button("🚬 Drogue", "Achète De La Drogue !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shopillgal', 'drogue'))

            RageUI.Button("🔫 Arme", "Achète Des Armes", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shopillgal', 'arme'))

        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shopillgal', 'drogue'), true, true, true, function()

            RageUI.Button("Weed", "Achète De La Weed", {RightLabel = "~r~150$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('jl_theo:BuyWeed')
                end
            end)
            RageUI.Button("Coke", "Achète De La Coke", {RightLabel = "~r~350$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('jl_theo:BuyCoke')
                end
            end)
        end, function()
    end)

            RageUI.IsVisible(RMenu:Get('shopillgal', 'arme'), true, true, true, function()

                RageUI.Button("Pistolet", "Achète Un Pistolet", {RightLabel = "~r~5000$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('jl_theo:BuyPistolet')
                    end
                end)
                RageUI.Button("Munition De Pistolet", "Achète 25 Munition De Pistolet", {RightLabel = "~r~40$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('jl_theo:BuyAmmoPistolet')
                    end
                end)
                RageUI.Button("Poing Américain", "Achète Un Poing Américain", {RightLabel = "~r~100$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('jl_theo:BuyPoing')
                    end
                end)
                    
            end, function()
                
    

            end, 1)

    
            Citizen.Wait(0)
        end
    
    end)




    local position = {
        {x = 1249.66 , y = -2578.1, z = 42.88, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                       message = "Appuyez sur [~r~E~w~] pour parler au dealeur",
                        time_display = 1
                    })
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('shopillgal', 'main'), not RageUI.Visible(RMenu:Get('shopillgal', 'main')))
                    end
                end
            end
        end
    end)


    Citizen.CreateThread(function()
        local hash = GetHashKey("csb_g")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "csb_g", 1249.66, -2578.1, 42.0, 283.30, true, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
    end)