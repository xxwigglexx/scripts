local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Gui-store scripts | Minere um Planeta",
   LoadingTitle = "Carregando Gui-store...",
   LoadingSubtitle = "by Antigravity",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "GuiStoreHub"
   },
   Discord = {
      Enabled = false,
      Invite = "",
      RememberJoins = true
   },
   KeySystem = false
})

-- Variáveis de Controle
local getgenv = getgenv or function() return _G end
getgenv().Config = {
    AutoRollDrones = false,
    SelectedTiers = {},
    AutoCollectOres = false,
    BeamAura = false,
    BeamAuraRange = 50,
    
    AutoUpgradePlanet = false,
    AutoUnlockFloor = false,
    AutoUpgradeCargo = false,
    AutoUpgradeMiningSpeed = false,
    AutoUpgradeDockStorage = false,
    AutoUpgradeDockPlatforms = false,
    AutoUpgradeLuck = false,
    AutoUpgradeDroneRolls = false,
    AutoUpgradeDrones = false,
    AutoUpgradePets = false,

    AutoCollectShards = false,
    ShardMoveSpeed = 50,
    AutoRollUFO = false,
    AutoRollJellyfish = false,

    WalkSpeed = 16,
    JumpPower = 50,
    InfinityJump = false,
    Fly = false,
    AntiAFK = false
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local Net = ReplicatedStorage:WaitForChild("Net")

-- Função utilitária para chamar remotes
local function fireRemote(remoteName, ...)
    -- Os remotes reais são filhos diretos da pasta "Net", não do ModuleScript "Remotes"
    local remote = Net:FindFirstChild(remoteName)
    if remote then
        if remote:IsA("RemoteEvent") then
            remote:FireServer(...)
        elseif remote:IsA("RemoteFunction") then
            return remote:InvokeServer(...)
        end
    else
        warn("Remote não encontrado: " .. tostring(remoteName))
    end
end

-- ==================== ABAS ====================
local TabMain = Window:CreateTab("Main", "home")
local TabStatUpgrade = Window:CreateTab("Stat / Upgrade", "trending-up")
local TabMisc = Window:CreateTab("Misc", "settings")

-- ==================== MAIN ====================
TabMain:CreateSection("Drone Management")

TabMain:CreateDropdown({
    Name = "Stop Rolling At Selected Tiers",
    Options = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Divine", "Exotic", "Prismatic", "Transcendent", "Void", "Genesis"},
    CurrentOption = {"Genesis"},
    MultipleOptions = true,
    Flag = "Dropdown_Tiers",
    Callback = function(Options)
        getgenv().Config.SelectedTiers = Options
        if getgenv().Config.AutoRollDrones then
            local activeTargets = {}
            for k, v in pairs(Options) do
                if type(k) == "string" and v == true then
                    table.insert(activeTargets, k)
                elseif type(k) == "number" and type(v) == "string" then
                    table.insert(activeTargets, v)
                end
            end
            fireRemote("SetAutoRollTargets", { targets = activeTargets })
        end
    end,
})

local AutoRollToggle
AutoRollToggle = TabMain:CreateToggle({
    Name = "Auto Roll Drones",
    CurrentValue = false,
    Flag = "Toggle_AutoRollDrones",
    Callback = function(Value)
        getgenv().Config.AutoRollDrones = Value
        if Value then
            -- Converte para array
            local activeTargets = {}
            local selectedTiers = getgenv().Config.SelectedTiers or {}
            for k, v in pairs(selectedTiers) do
                if type(k) == "string" and v == true then
                    table.insert(activeTargets, k)
                elseif type(k) == "number" and type(v) == "string" then
                    table.insert(activeTargets, v)
                end
            end
            
            -- Tenta ativar o nativo
            fireRemote("SetAutoRollTargets", { targets = activeTargets })
            fireRemote("SetAutoRollActive", { active = true })
            
            -- Fallback manual (ignora gamepass)
            task.spawn(function()
                while getgenv().Config.AutoRollDrones do
                    fireRemote("RequestRollDrones", {})
                    task.wait(2) -- Reduzido o spam agressivo, pois RNGSync vai ajudar
                end
            end)
        else
            fireRemote("SetAutoRollActive", { active = false })
        end
    end,
})

-- Escutar resultados do Roll para parar nos selecionados (Fallback)
-- Escutar resultados do Roll para parar nos selecionados (Fallback)
local Net = game:GetService("ReplicatedStorage"):FindFirstChild("Net")

local DroneRarities = {
    ["RainbowReginald"] = "Divine", ["CaptainNemo"] = "Divine", ["AquanautAl"] = "Divine", ["KingMidas"] = "Divine",
    ["TheDrillfather"] = "Prismatic", ["Tankenstein"] = "Prismatic", ["PharaohFunk"] = "Prismatic", ["LordRingo"] = "Prismatic",
    ["MobyDrill"] = "Prismatic", ["SirSparklesalot"] = "Prismatic", ["DoubleDigDoug"] = "Prismatic",
    ["SecretMidnight"] = "Secret", ["SecretCipher"] = "Secret", ["SecretShade"] = "Secret", ["SecretCovert"] = "Secret",
    ["MagmaMilo"] = "Secret", ["PirateSmall1"] = "Secret", ["EventQuarryDozer"] = "Secret", ["RescueSquadPolicePatrol"] = "Secret",
    ["GamerBuddy"] = "Secret",
    ["ExoticNebula"] = "Exotic", ["ExoticZephyr"] = "Exotic", ["ExoticOrbit"] = "Exotic", ["ExoticComet"] = "Exotic",
    ["BulwarkBarry"] = "Exotic", ["RescueSquadAirRescue"] = "Exotic",
    ["TranscendentAstral"] = "Transcendent", ["TranscendentCosmo"] = "Transcendent", ["TranscendentRadiant"] = "Transcendent",
    ["TranscendentEternal"] = "Transcendent", ["VoidBeacon"] = "Transcendent", ["TranscendentVerdant"] = "Transcendent",
    ["TranscendentPyramid"] = "Transcendent", ["PirateMothership"] = "Transcendent", ["EventTitanHauler"] = "Transcendent",
    ["EclipseEdgar"] = "Void", ["VoidOrbit"] = "Void", ["VoidObsidian"] = "Void", ["VoidVanta"] = "Void", ["VoidManta"] = "Void",
    ["VoidHalo"] = "Void",
    ["GenesisCitadel"] = "Genesis", ["GenesisTrinity"] = "Genesis", ["GenesisAegis"] = "Genesis", ["GenesisVanguard"] = "Genesis",
    ["EventJellySovereign"] = "Divine", ["EventUfoMother"] = "Prismatic", ["PirateSmall2"] = "Prismatic", ["EventTunnelBorer"] = "Prismatic",
    ["RescueSquadFireRescue"] = "Divine", ["BlazingBenny"] = "Divine"
}

if Net and Net:FindFirstChild("RNGSync") then
    Net.RNGSync.OnClientEvent:Connect(function(data)
        if getgenv().Config.AutoRollDrones and type(data) == "table" and type(data.slots) == "table" then
            local selectedTiers = getgenv().Config.SelectedTiers or {}
            local shouldStop = false
            
            for _, droneName in pairs(data.slots) do
                if type(droneName) == "string" then
                    -- Busca a raridade real do drone no catálogo do jogo
                    local actualRarity = DroneRarities[droneName] or droneName
                    
                    for key, value in pairs(selectedTiers) do
                        if type(key) == "number" then
                            if type(value) == "string" and string.find(actualRarity:lower(), value:lower()) then
                                shouldStop = true
                                break
                            end
                        elseif type(key) == "string" and value == true then
                            if string.find(actualRarity:lower(), key:lower()) then
                                shouldStop = true
                                break
                            end
                        end
                    end
                end
                if shouldStop then break end
            end
            
            if shouldStop then
                getgenv().Config.AutoRollDrones = false
                if AutoRollToggle then
                    AutoRollToggle:Set(false)
                end
                Rayfield:Notify({
                    Title = "Auto Roll Parou!",
                    Content = "Um drone selecionado pousou na base!",
                    Duration = 5
                })
            else
                -- Auto-Delete (Override) os drones indesejados que travaram a esteira
                if getgenv().Config.AutoRollDrones then
                    task.wait(0.5)
                    fireRemote("RequestRollDrones", {})
                end
            end
        end
    end)
end

TabMain:CreateSection("Ore & Money")

TabMain:CreateToggle({
    Name = "Auto Collect & Sell Ores",
    CurrentValue = false,
    Flag = "Toggle_AutoSell",
    Callback = function(Value)
        getgenv().Config.AutoCollectSell = Value
        if Value then
            task.spawn(function()
                while getgenv().Config.AutoCollectSell do
                    if not getgenv().Config.PauseSellForEvent then
                        for i = 1, 55 do
                            fireRemote("RequestCollectDockOre", { dockIndex = i })
                        end
                        
                        -- Find SellPrompt in local player's base
                        local myUserId = tostring(game.Players.LocalPlayer.UserId)
                        local mySellPrompt = nil
                        for _, prompt in pairs(workspace:GetDescendants()) do
                            if prompt:IsA("ProximityPrompt") and prompt.Name == "FS_SellPrompt" then
                                mySellPrompt = prompt
                                if prompt:FindFirstAncestor(myUserId) or prompt:FindFirstAncestor("SellShop") then
                                    break
                                end
                            end
                        end
                        
                        if mySellPrompt and mySellPrompt.Parent and mySellPrompt.Parent:IsA("BasePart") then
                            local root = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                            if root then
                                if (root.Position - mySellPrompt.Parent.Position).Magnitude > 12 then
                                    root.CFrame = mySellPrompt.Parent.CFrame + Vector3.new(0, 3, 0)
                                    task.wait(0.3)
                                end
                                fireproximityprompt(mySellPrompt)
                            end
                        end
                    end
                    task.wait(1)
                end
            end)
        end
    end,
})

local TabEvent = Window:CreateTab("🎉 Eventos", 4483362458)
TabEvent:CreateSection("Piratas")

TabEvent:CreateToggle({
    Name = "Aimbot + Auto Shoot Piratas",
    CurrentValue = false,
    Flag = "Toggle_PirateEvent",
    Callback = function(Value)
        getgenv().Config.PirateEvent = Value
        
        if Value then
            task.spawn(function()
                local RunService = game:GetService("RunService")
                local VirtualInputManager = game:GetService("VirtualInputManager")
                
                while getgenv().Config.PirateEvent do
                    local char = game.Players.LocalPlayer.Character
                    local root = char and char:FindFirstChild("HumanoidRootPart")
                    local humanoid = char and char:FindFirstChild("Humanoid")
                    
                    if root and humanoid then
                        local nearestShip = nil
                        local dist = math.huge
                        
                        for _, v in pairs(workspace:GetDescendants()) do
                            if v:IsA("Model") and (string.find(v.Name:lower(), "pirate") or string.find(v.Name:lower(), "mothership")) then
                                local part = v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Core") or v:FindFirstChildWhichIsA("BasePart")
                                if part and part.Transparency < 1 then
                                    local d = (root.Position - part.Position).Magnitude
                                    if d < dist then
                                        dist = d
                                        nearestShip = part
                                    end
                                end
                            end
                        end
                        
                        if nearestShip then
                            -- Pausa o Sell Ore enquanto tem nave
                            getgenv().Config.PauseSellForEvent = true
                            
                            -- Voo básico até a nave
                            if dist > 40 then
                                root.CFrame = nearestShip.CFrame + Vector3.new(0, 0, 30)
                                root.Velocity = Vector3.new(0,0,0)
                            end
                            
                            -- Aimbot: Trava a câmera na nave
                            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, nearestShip.Position)
                            
                            -- Pega a pistola se não estiver na mão
                            local pistol = game.Players.LocalPlayer.Backpack:FindFirstChild("Pistola a laser")
                            if pistol then
                                humanoid:EquipTool(pistol)
                            end
                            
                            -- Atira
                            local equippedTool = char:FindFirstChildWhichIsA("Tool")
                            if equippedTool then
                                equippedTool:Activate()
                            else
                                VirtualInputManager:SendMouseButtonEvent(workspace.CurrentCamera.ViewportSize.X/2, workspace.CurrentCamera.ViewportSize.Y/2, 0, true, game, 1)
                                task.wait(0.05)
                                VirtualInputManager:SendMouseButtonEvent(workspace.CurrentCamera.ViewportSize.X/2, workspace.CurrentCamera.ViewportSize.Y/2, 0, false, game, 1)
                            end
                        else
                            -- Libera o Sell Ore voltar ao normal
                            getgenv().Config.PauseSellForEvent = false
                        end
                    end
                    task.wait(0.1)
                end
                
                getgenv().Config.PauseSellForEvent = false
            end)
        else
            getgenv().Config.PauseSellForEvent = false
        end
    end,
})

TabMain:CreateSection("⚔️ Combat Assistance")

TabMain:CreateToggle({
    Name = "Beam Aura",
    CurrentValue = false,
    Flag = "Toggle_BeamAura",
    Callback = function(Value)
        getgenv().Config.BeamAura = Value
        if Value then
            task.spawn(function()
                while getgenv().Config.BeamAura do
                    -- Implementação básica da Aura
                    -- Busca ores próximos e atira
                    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                        local hrp = LocalPlayer.Character.HumanoidRootPart
                        -- Adapte para onde ficam os ores no jogo (ex: workspace.Ores)
                    end
                    task.wait(0.1)
                end
            end)
        end
    end,
})

TabMain:CreateSlider({
    Name = "Beam Aura Range",
    Range = {10, 200},
    Increment = 1,
    Suffix = "Studs",
    CurrentValue = 50,
    Flag = "Slider_BeamAuraRange",
    Callback = function(Value)
        getgenv().Config.BeamAuraRange = Value
    end,
})

-- ==================== STAT / UPGRADE ====================
TabStatUpgrade:CreateSection("🌍 Planet")

TabStatUpgrade:CreateToggle({
    Name = "Auto Upgrade Planet",
    CurrentValue = false,
    Flag = "Toggle_AutoUpgradePlanet",
    Callback = function(Value)
        getgenv().Config.AutoUpgradePlanet = Value
        if Value then
            task.spawn(function()
                while getgenv().Config.AutoUpgradePlanet do
                    fireRemote("RequestUpgradePlanet")
                    task.wait(1)
                end
            end)
        end
    end,
})

TabStatUpgrade:CreateToggle({
    Name = "Auto Unlock Next Floor",
    CurrentValue = false,
    Flag = "Toggle_AutoUnlockFloor",
    Callback = function(Value)
        getgenv().Config.AutoUnlockFloor = Value
        -- Adicionar lógica
    end,
})

TabStatUpgrade:CreateSection("⚡ Upgrades")

local upgrades = {
    {"Cargo", "RequestUpgradeCargo", "AutoUpgradeCargo"},
    {"Mining Speed", "RequestUpgradeMiningSpeed", "AutoUpgradeMiningSpeed"},
    {"Dock Storage", "RequestUpgradeDockStorage", "AutoUpgradeDockStorage"},
    {"Dock Platforms", "RequestUpgradeDockPlatforms", "AutoUpgradeDockPlatforms"},
    {"Luck", "RequestUpgradeLuck", "AutoUpgradeLuck"},
    {"Drone Rolls", "RequestUpgradeDroneRolls", "AutoUpgradeDroneRolls"},
    {"Drones", "RequestUpgradeDrone", "AutoUpgradeDrones"},
    {"Pets", "RequestUpgradePet", "AutoUpgradePets"},
}

for _, upg in ipairs(upgrades) do
    TabStatUpgrade:CreateToggle({
        Name = "Auto Upgrade " .. upg[1],
        CurrentValue = false,
        Flag = "Toggle_" .. upg[3],
        Callback = function(Value)
            getgenv().Config[upg[3]] = Value
            if Value then
                task.spawn(function()
                    while getgenv().Config[upg[3]] do
                        fireRemote(upg[2])
                        task.wait(1)
                    end
                end)
            end
        end,
    })
end

-- ==================== MISC ====================
TabMisc:CreateSection("🏃 Movement")

TabMisc:CreateSlider({
    Name = "Walk Speed",
    Range = {16, 200},
    Increment = 1,
    Suffix = "WS",
    CurrentValue = 16,
    Flag = "Slider_WalkSpeed",
    Callback = function(Value)
        getgenv().Config.WalkSpeed = Value
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    end,
})

TabMisc:CreateSlider({
    Name = "Jump Power",
    Range = {50, 300},
    Increment = 1,
    Suffix = "JP",
    CurrentValue = 50,
    Flag = "Slider_JumpPower",
    Callback = function(Value)
        getgenv().Config.JumpPower = Value
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            LocalPlayer.Character.Humanoid.UseJumpPower = true
            LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    end,
})

TabMisc:CreateToggle({
    Name = "Infinity Jump",
    CurrentValue = false,
    Flag = "Toggle_InfinityJump",
    Callback = function(Value)
        getgenv().Config.InfinityJump = Value
    end,
})

UserInputService.JumpRequest:Connect(function()
    if getgenv().Config.InfinityJump and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
        LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

TabMisc:CreateSection("Utility")

TabMisc:CreateToggle({
    Name = "Anti-AFK",
    CurrentValue = false,
    Flag = "Toggle_AntiAFK",
    Callback = function(Value)
        getgenv().Config.AntiAFK = Value
    end,
})

-- Conectar Anti-AFK
local VirtualUser = game:GetService("VirtualUser")
LocalPlayer.Idled:Connect(function()
    if getgenv().Config.AntiAFK then
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end
end)

Rayfield:LoadConfiguration()
