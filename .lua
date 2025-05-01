-- Tải thư viện UI
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local Window = OrionLib:MakeWindow({
    Name = "Blox Fruit Script Menu",
    HidePremium = false,
    SaveConfig = false,
    ConfigFolder = "BloxScript"
})

-- TAB Auto Farm
local AutoFarmTab = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

AutoFarmTab:AddToggle({
    Name = "Tự động farm level",
    Default = false,
    Callback = function(Value)
        _G.AutoFarm = Value
        while _G.AutoFarm do
            wait(1)
            print("Đang farm... (giả lập)")
            -- Code farm ở đây
        end
    end
})

-- TAB Chọn Vũ Khí
local WeaponTab = Window:MakeTab({
    Name = "Melee",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

WeaponTab:AddDropdown({
    Name = "Sword",
    Default = "Katana",
    Options = {"Katana", "Gun", "Blox Fruit"},
    Callback = function(Value)
        print("Đã chọn vũ khí: " .. Value)
        _G.Weapon = Value
    end
})

-- TAB Teleport
local TeleportTab = Window:MakeTab({
    Name = "Porttown",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

TeleportTab:AddButton({
    Name = "Tới đảo Bandit",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(100, 20, 100)
    end
})
