local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/KimWoramet/KrukoiHubx1/main/KrukoiHubLibSteamSpoof.Lua"))()

game.StarterGui:SetCore("SendNotification", {
    Title = "KrukoiHub"; 
    Text = "Stream Spoof Work For SynapseX Only"; 
    Icon = "rbxassetid://12983051832";
    Duration = 10;
})

game.NetworkClient.ChildRemoved:Connect(function()
    game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end)

local watermark = library:Watermark("KrukoiHub | SCRATCH SERIES | StreamSpoof SynapseX Only")
-- watermark:Set("Watermark Set")
-- watermark:Hide() -- toggles watermark

local main = library:Load{
    Name = "KrukoiHub x SCRATCH SERIES",
    SizeX = 600,
    SizeY = 650,
    Theme = "Midnight",
    Extension = "json", -- config file extension
    Folder = "KrukoiHub" -- config folder name
}

-- library.Extension = "txt" (config file extension)
-- library.Folder = "config folder name"

local tab = main:Tab("Main")

local section = tab:Section{
    Name = "Main",
    Side = "Left"
}
local section2 = tab:Section{
    Name = "Other",
    Side = "Left"
}

local section3 = tab:Section{
    Name = "Players&Teleport",
    Side = "Right"
}

local section4 = tab:Section{
    Name = "SetnamePlayer To Kill",
    Side = "Right"
}

local label = section:Label("Speed Interact")
local label2 = section3:Label("Players")
local label3 = section4:Label("Input Username wait 7seconds to kill")

--label:Set("Label Set")



section:Button{
    Name = "Click to SpeedInteract",
    Callback  = function()
        game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            fireproximityprompt(prompt)
            
        end)
        game.StarterGui:SetCore("SendNotification", {
            Title = "KrukoiHub"; 
            Text = "Starting Fast Interact"; 
            Icon = "rbxassetid://12983051832";
            Duration = 5;
        })
    end
}



local virtualUser = game:GetService('VirtualUser')

local toggleautoe = section:Toggle{
    Name = "AutoInteract",
    Flag = "Teleport To Stone",
    --Default = true,
    Callback  = function(autoe)
        _G.AutoInteract = autoe
        
end,
}
spawn(function()
    while wait() do
        if _G.AutoInteract then
            virtualUser:CaptureController()
			virtualUser:SetKeyDown('0x65')
			wait(0.2)
            virtualUser:SetKeyUp('0x65')
        end
    end
end)



local togglesecerity = section:Toggle{
    Name = "SecerityKick",
    Flag = "If Player More 1 Player = Kick",
    --Default = true,
    Callback  = function(secerity)
        _G.SecerityKick = secerity
        
end,
}

spawn(function()
    pcall(function()
        while true do
            local playermore = #game.Players:GetPlayers() > 1
            if _G.SecerityKick then
                local args = {
                        [1] = "*"
                    }
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.MutePlayerRequest:InvokeServer(unpack(args))
                if playermore then
                    game.Players.LocalPlayer:Kick("SecurityKick.")
                end
            end
            wait(1)
        end
    end)
end)


local seperator = section:Separator("AutoFarm(TELEPORT)")
--separator:Set("Separator Set")
--togglepicker1:Set(Color3.fromRGB(255, 255, 255))


--togglepicker2:Set(Color3.fromRGB(255, 255, 255))


local toggle = section:Toggle{
    Name = "AutoFarmStone",
    Flag = "Teleport To Stone",
    --Default = true,
    Callback  = function(stone)
        _G.FarmStone = stone
end,
}

local stonepos = {
    Vector3.new(1970.057861328125, -16.370990753173828, 2884.843505859375),
    Vector3.new(1957.3826904296875, -16.433162689208984, 2875.933349609375),
    Vector3.new(1919.0018310546875, -2.7058470249176025, 2896.81884765625),
    Vector3.new(1920.1553955078125, -13.040755271911621, 2917.8583984375),
    Vector3.new(1915.413330078125, -12.646774291992188, 2960.232421875),
    Vector3.new(1954.7315673828125, -12.729333877563477, 2927.422119140625),
    Vector3.new(1946.7071533203125, -12.569412231445312, 2965.358642578125),
    Vector3.new(1988.1492919921875, -12.65184211730957, 2968.45458984375),
    Vector3.new(1985.5595703125, -11.255232810974121, 2933.075927734375),
    Vector3.new(2014.9935302734375, -16.312274932861328, 2959.463134765625),
    Vector3.new(2027.3636474609375, -16.318069458007812, 2951.775634765625),
    Vector3.new(2046.090087890625, -16.104248046875, 2952.012939453125),
    Vector3.new(2054.733642578125, -16.81932830810547, 2969.3291015625),
    Vector3.new(2063.632080078125, -17.093067169189453, 2939.56982421875),
    Vector3.new(1971.2010498046875, -14.09189510345459, 2989.4140625),
    Vector3.new(1953.0653076171875, -17.474292755126953, 3014.031982421875),
    Vector3.new(1987.3001708984375, -16.391529083251953, 3011.09033203125),
    Vector3.new(1969.133544921875, -18.1710205078125, 3055.651123046875),
    Vector3.new(1999.0867919921875, -17.21217918395996, 3053.701904296875),
    Vector3.new(2019.6634521484375, -13.090447425842285, 3043.8408203125),
    Vector3.new(2016.2652587890625, -12.701101303100586, 3019.374267578125),
    Vector3.new(2021.4649658203125, -13.333125114440918, 3043.03369140625),
    Vector3.new(2032.6007080078125, -16.687931060791016, 3025.4287109375),
    Vector3.new(2036.09326171875, -12.77490234375, 3000.85888671875),
    Vector3.new(2057.44775390625, -12.83250617980957, 3007.630615234375),
    Vector3.new(2060.77685546875, -13.423094749450684, 3029.388916015625),
    Vector3.new(2046.0743408203125, -13.964789390563965, 3050.848876953125),
    Vector3.new(2042.145263671875, -12.64745044708252, 3073.21728515625),
}

spawn(function()
    while wait() do
        pcall(function()
            local rootPart = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
            local tool1 = game.Players.LocalPlayer.Backpack:FindFirstChild("Pickaxe")
            if _G.FarmStone then
                for i, posstone in ipairs(stonepos) do
                    if tool1 then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(tool1)
                    end
                    rootPart.CFrame = CFrame.new(posstone)
                    wait(0.3)
                end
            end
        end)
    end
end)

local toggle = section:Toggle{
    Name = "AutoFarmWoods",
    Flag = "Teleport To Wood",
    --Default = true,
    Callback  = function(Woods)
        _G.FarmWood = Woods
end,
}
local Woodpos = {
    Vector3.new(1751.5565185546875, 132.9999542236328, 2479.318115234375),
    Vector3.new(1741.63720703125, 132.9999542236328, 2535.47900390625),
    Vector3.new(1714.1171875, 133.23504638671875, 2514.439697265625),
    Vector3.new(1696.838623046875, 132.9999542236328, 2467.98095703125),
    Vector3.new(1655.83056640625, 133.44140625, 2532.244873046875),
    Vector3.new(1646.456298828125, 132.9999542236328, 2486.098876953125),
    Vector3.new(1606.74853515625, 132.9999542236328, 2459.139404296875),
    Vector3.new(1606.9188232421875, 132.9999542236328, 2508.781982421875)
}

spawn(function()
    while wait() do
    pcall(function()
        local rootPartWoods = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local toolwood = game.Players.LocalPlayer.Backpack:FindFirstChild("Pib")
            if _G.FarmWood then
                for i, poswood in ipairs(Woodpos) do
                    if toolwood then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(toolwood)
                    end
                        rootPartWoods.CFrame = CFrame.new(poswood)
                    wait(0.3)
                end
            end
        end)
    end
end)

local toggle = section:Toggle{
    Name = "Cow & Pig",
    Flag = "Teleport To Cow&Pig",
    --Default = true,
    Callback  = function(meet)
        _G.FarmMeet = meet
end,
}

local Meetpos = {
    --pig
    Vector3.new(2884.398681640625, 29.16751480102539, 1497.4835205078125),
    Vector3.new(2891.30029296875, 29.867515563964844, 1503.2984619140625),
    Vector3.new(2898.13232421875, 29.173513412475586, 1509.9315185546875),
    Vector3.new(2902.99658203125, 29.16751480102539, 1516.5201416015625),
    Vector3.new(2911.24853515625, 29.16751480102539, 1522.095947265625),
    Vector3.new(2916.792236328125, 29.16751480102539, 1529.6190185546875),
    Vector3.new(2924.05029296875, 29.16751480102539, 1535.5306396484375),
    Vector3.new(2931.351318359375, 29.398761749267578, 1541.131103515625),
    Vector3.new(2938.092529296875, 29.16751480102539, 1547.1881103515625),
    Vector3.new(2943.651123046875, 29.16751480102539, 1554.4302978515625),
    --cow
    Vector3.new(2921.202880859375, 29.16751480102539, 1577.41552734375),
    Vector3.new(2912.28125, 29.16751480102539, 1568.740234375),
    Vector3.new(2904.661865234375, 29.1674861907959, 1561.394775390625),
    Vector3.new(2896.885986328125, 29.16751480102539, 1553.8424072265625),
    Vector3.new(2889.283203125, 29.16751480102539, 1546.585693359375),
    Vector3.new(2880.258056640625, 29.167470932006836, 1538.779052734375),
    Vector3.new(2874.796875, 29.167512893676758, 1532.2159423828125),
    Vector3.new(2866.94921875, 29.16751480102539, 1524.71435546875),
    Vector3.new(2861.13525390625, 29.16751480102539, 1518.0433349609375)
}

spawn(function()
    while wait() do
    pcall(function()
        local rootPartMeets = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local toolmeet = game.Players.LocalPlayer.Backpack:FindFirstChild("Knife")
            if _G.FarmMeet then
                for i, posmeet in ipairs(Meetpos) do
                    if toolmeet then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):EquipTool(toolmeet)
                    end
                        rootPartMeets.CFrame = CFrame.new(posmeet)
                        wait(0.3)
                    end
                end
            end)
        end
end)







section:Button{
    Name = "Click to RejoinServer",
    Callback  = function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end
}


local toggleautoRevive = section2:Toggle{
    Name = "ReviveAuto",
    Flag = "If LocalPlayer Die System revive",
    Default = true,
    Callback  = function(ReviveFarm)
        _G.ReviveAuto = ReviveFarm   
end,
}

local ReviveSys = "Respawn"
local PlayerN = game:GetService("Players").LocalPlayer
local EventRev = game:GetService("ReplicatedStorage").ReviveSystem.Event
local NotifyScript1 = "Success"
local NotifyTitle2 = "KrukoiHub"
local NotifyScript3 = "Auto Revive"
local Event2 = game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent

spawn(function()
    while true do
        pcall(function()
            if _G.ReviveAuto then
            wait(1)
            local character = PlayerN.Character
            if not character then
                return
            end
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid.Health == 0 then
                Event2:FireServer(NotifyScript1, NotifyTitle2, NotifyScript3)
                EventRev:FireServer(ReviveSys, PlayerN)
            end
        end
        wait(1)
        end)
    end
end)
local KillallTitle = "Respawn"
local KillAllGetEvent = game:GetService("ReplicatedStorage").ReviveSystem.Event
local NotifyTitle1 = "Success"
local NotifyTitle2 = "KrukoiHub"
local NotifyScript3 = "Kill All Players"
local Event2 = game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent

section3:Button{
    Name = "Kill All Players",
    Callback  = function()
        local KillallGetPlayer = game:GetService("Players"):GetPlayers()
        for i, player in ipairs(KillallGetPlayer) do
            KillAllGetEvent:FireServer(KillallTitle, player)
            Event2:FireServer(NotifyTitle1, NotifyTitle2, NotifyScript3)
        end
    end
}

local Teleportlebel = section3:Label("Teleport")
local Teleportlebel1 = section3:Label("Soon...")



local playerNameKill = ""

local box = section4:Box{
    Name = "Addmoney",
    --Default = "hi",
    Placeholder = "USERNAME",
    Flag = "Box 1",
    Callback = function(input)
        playerNameKill = input
    end,
}

local toggle = section4:Toggle{
    Name = "AddMoney x10000",
    Flag = "",
    --Default=true,
    Callback = function(killx10)
        _G.killx10 = killx10
    end,
}

local KillSys = "Respawn"
local EventRevkill = game:GetService("ReplicatedStorage").ReviveSystem.Event
local NotifyScript1 = "Success"
local NotifyTitle2 = "KrukoiHub"
local NotifyScript3 = "Add Money x10000"
local EventKill = game:GetService("ReplicatedStorage").pNotifyStorage.pNotifyEvent

spawn(function()
    while wait(7) do
        pcall(function()
            if _G.killx10 and playerNameKill ~= "" then
                local SetNamePlayers = game:GetService("Players"):FindFirstChild(playerNameKill)
                if SetNamePlayers then
                    game.StarterGui:SetCore("SendNotification", {
                        Title = "KrukoiHub"; 
                        Text = "Starting in 7seconds"; 
                        Icon = "rbxassetid://12983051832";
                        Duration = 10;
                    })
                    --[[for i=1, 10 do
                        EventRevkill:FireServer(KillSys, SetNamePlayers)
                    end]]
                    EventKill:FireServer(NotifyScript1, NotifyTitle2, NotifyScript3)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                    EventRevkill:FireServer(KillSys, SetNamePlayers)
                end
            end
        end)
    end
end)



--[[local keybind = section:Keybind{
    Name = "Keybind",
    --Default = Enum.KeyCode.A,
    --Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2},
    Flag = "Keybind 1",
    Callback = function(key, fromsetting)
        if fromsetting then
            print("Keybind 1 is now " .. tostring(key))
        else
            print("Keybind 1 was pressed")
        end
    end
}]]


--library:SaveConfig("config", true) -- universal config
--library:SaveConfig("config") -- game specific config
--library:DeleteConfig("config", true) -- universal config
--library:DeleteConfig("config") -- game specific config
--library:GetConfigs(true) -- return universal and game specific configs (table)
--library:GetConfigs() -- return game specific configs (table)
--library:LoadConfig("config", true) -- load universal config
--library:LoadConfig("config") -- load game specific config

local configs = main:Tab("Configuration")

local themes = configs:Section{Name = "Theme", Side = "Left"}

local themepickers = {}

local themelist = themes:Dropdown{
    Name = "Theme",
    Default = library.currenttheme,
    Content = library:GetThemes(),
    Flag = "Theme Dropdown",
    Callback = function(option)
        if option then
            library:SetTheme(option)

            for option, picker in next, themepickers do
                picker:Set(library.theme[option])
            end
        end
    end
}

library:ConfigIgnore("Theme Dropdown")

local namebox = themes:Box{
    Name = "Custom Theme Name",
    Placeholder = "Custom Theme",
    Flag = "Custom Theme"
}

library:ConfigIgnore("Custom Theme")

themes:Button{
    Name = "Save Custom Theme",
    Callback = function()
        if library:SaveCustomTheme(library.flags["Custom Theme"]) then
            themelist:Refresh(library:GetThemes())
            themelist:Set(library.flags["Custom Theme"])
            namebox:Set("")
        end
    end
}
--[[configs:Button{
  Name = "Destroy UI",
  Callback  = function()
      library:Unload()
  end
}]]

local customtheme = configs:Section{Name = "Custom Theme", Side = "Right"}

themepickers["Accent"] = customtheme:ColorPicker{
    Name = "Accent",
    Default = library.theme["Accent"],
    Flag = "Accent",
    Callback = function(color)
        library:ChangeThemeOption("Accent", color)
    end
}

library:ConfigIgnore("Accent")

themepickers["Window Background"] = customtheme:ColorPicker{
    Name = "Window Background",
    Default = library.theme["Window Background"],
    Flag = "Window Background",
    Callback = function(color)
        library:ChangeThemeOption("Window Background", color)
    end
}

library:ConfigIgnore("Window Background")

themepickers["Window Border"] = customtheme:ColorPicker{
    Name = "Window Border",
    Default = library.theme["Window Border"],
    Flag = "Window Border",
    Callback = function(color)
        library:ChangeThemeOption("Window Border", color)
    end
}

library:ConfigIgnore("Window Border")

themepickers["Tab Background"] = customtheme:ColorPicker{
    Name = "Tab Background",
    Default = library.theme["Tab Background"],
    Flag = "Tab Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Background", color)
    end
}

library:ConfigIgnore("Tab Background")

themepickers["Tab Border"] = customtheme:ColorPicker{
    Name = "Tab Border",
    Default = library.theme["Tab Border"],
    Flag = "Tab Border",
    Callback = function(color)
        library:ChangeThemeOption("Tab Border", color)
    end
}

library:ConfigIgnore("Tab Border")

themepickers["Tab Toggle Background"] = customtheme:ColorPicker{
    Name = "Tab Toggle Background",
    Default = library.theme["Tab Toggle Background"],
    Flag = "Tab Toggle Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Toggle Background", color)
    end
}

library:ConfigIgnore("Tab Toggle Background")

themepickers["Section Background"] = customtheme:ColorPicker{
    Name = "Section Background",
    Default = library.theme["Section Background"],
    Flag = "Section Background",
    Callback = function(color)
        library:ChangeThemeOption("Section Background", color)
    end
}

library:ConfigIgnore("Section Background")

themepickers["Section Border"] = customtheme:ColorPicker{
    Name = "Section Border",
    Default = library.theme["Section Border"],
    Flag = "Section Border",
    Callback = function(color)
        library:ChangeThemeOption("Section Border", color)
    end
}

library:ConfigIgnore("Section Border")

themepickers["Text"] = customtheme:ColorPicker{
    Name = "Text",
    Default = library.theme["Text"],
    Flag = "Text",
    Callback = function(color)
        library:ChangeThemeOption("Text", color)
    end
}

library:ConfigIgnore("Text")

themepickers["Disabled Text"] = customtheme:ColorPicker{
    Name = "Disabled Text",
    Default = library.theme["Disabled Text"],
    Flag = "Disabled Text",
    Callback = function(color)
        library:ChangeThemeOption("Disabled Text", color)
    end
}

library:ConfigIgnore("Disabled Text")

themepickers["Object Background"] = customtheme:ColorPicker{
    Name = "Object Background",
    Default = library.theme["Object Background"],
    Flag = "Object Background",
    Callback = function(color)
        library:ChangeThemeOption("Object Background", color)
    end
}

library:ConfigIgnore("Object Background")

themepickers["Object Border"] = customtheme:ColorPicker{
    Name = "Object Border",
    Default = library.theme["Object Border"],
    Flag = "Object Border",
    Callback = function(color)
        library:ChangeThemeOption("Object Border", color)
    end
}

library:ConfigIgnore("Object Border")

themepickers["Dropdown Option Background"] = customtheme:ColorPicker{
    Name = "Dropdown Option Background",
    Default = library.theme["Dropdown Option Background"],
    Flag = "Dropdown Option Background",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Option Background", color)
    end
}

library:ConfigIgnore("Dropdown Option Background")

local configsection = configs:Section{Name = "Configs", Side = "Left"}

local configlist = configsection:Dropdown{
    Name = "Configs",
    Content = library:GetConfigs(), -- GetConfigs(true) if you want universal configs
    Flag = "Config Dropdown"
}

library:ConfigIgnore("Config Dropdown")

local loadconfig = configsection:Button{
    Name = "Load Config",
    Callback = function()
        library:LoadConfig(library.flags["Config Dropdown"]) -- LoadConfig(library.flags["Config Dropdown"], true)  if you want universal configs
    end
}

local delconfig = configsection:Button{
    Name = "Delete Config",
    Callback = function()
        library:DeleteConfig(library.flags["Config Dropdown"]) -- DeleteConfig(library.flags["Config Dropdown"], true)  if you want universal configs
        configlist:Refresh(library:GetConfigs())
    end
}


local configbox = configsection:Box{
    Name = "Config Name",
    Placeholder = "Config Name",
    Flag = "Config Name"
}

library:ConfigIgnore("Config Name")

local save = configsection:Button{
    Name = "Save Config",
    Callback = function()
        library:SaveConfig(library.flags["Config Dropdown"] or library.flags["Config Name"]) -- SaveConfig(library.flags["Config Name"], true) if you want universal configs
        configlist:Refresh(library:GetConfigs())
    end
}

local keybindsection = configs:Section{Name = "UI Toggle Keybind", Side = "Left"}

keybindsection:Keybind{
    Name = "UI Toggle",
    Flag = "UI Toggle",
    Default = Enum.KeyCode.RightControl,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting then
            library:Close()
        end
    end
}

keybindsection:Keybind{
    Name = "Destroy UI",
    Flag = "Unload UI",
    Default = Enum.KeyCode.End,
    Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
    Callback = function(_, fromsetting)
        if not fromsetting then
            library:Unload()
        end
    end
}
--library:Close()
--library:Unload()
