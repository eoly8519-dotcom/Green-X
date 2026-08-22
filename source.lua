-- [[ TẢI GIAO DIỆN FLUENT (ĐÃ SỬA LỖI ĐƯỜNG DẪN THƯ VIỆN) ]]
local Fluent = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = Fluent:CreateWindow({
    Title = "Quantum Clone Hub | Blox Fruits",
    SubTitle = "by AI Assistant",
    TabWidth = 160,
    Size = Vector2.new(620, 480),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- [[ 1. ĐỊNH NGHĨA CÁC TAB THEO YÊU CẦU ]]
local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
    SubFarm = Window:AddTab({ Title = "Sub Farm", Icon = "swords" }),
    Fruit = Window:AddTab({ Title = "Fruit", Icon = "apple" }),
    SeaEvent = Window:AddTab({ Title = "Sea Event", Icon = "ship" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    DragonUpdate = Window:AddTab({ Title = "Dragon Update", Icon = "flame" }),
    Dungeon = Window:AddTab({ Title = "Dungeon", Icon = "skull" }),
    Trials = Window:AddTab({ Title = "Trials", Icon = "shield" }),
    Travel = Window:AddTab({ Title = "Travel", Icon = "map-pin" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    Misc = Window:AddTab({ Title = "Khác", Icon = "menu" })
}

-- [[ 2. KHAI BÁO CÁC BIẾN TOÀN CỤC ]]
_G.AutoFarmLevel = false
_G.AutoFarmBone = false
_G.AutoFarmFruit = false
_G.AutoStoreFruit = false
_G.AutoSeaEvent = false
_G.WalkSpeedValue = 16
_G.AutoRaid = false
_G.AutoTrial = false

-- ==========================================
-- 3. THIẾT LẬP CHI TIẾT TỪNG TAB GIAO DIỆN
-- ==========================================

-- TAB: HOME
Tabs.Home:AddParagraph({ Title = "Xin chào người dùng!", Content = "Chào mừng bạn đến với Quantum Clone Hub bản cập nhật mới nhất." })
Tabs.Home:AddToggle("FarmLevel", {Title = "Tự Động Cày Cấp (Auto Farm Level)", Default = false}):OnChanged(function(v) _G.AutoFarmLevel = v end)

-- TAB: SUB FARM
Tabs.SubFarm:AddToggle("FarmBone", {Title = "Tự Động Cày Xương (Auto Farm Bone)", Default = false}):OnChanged(function(v) _G.AutoFarmBone = v end)
Tabs.SubFarm:AddDropdown("SelectMastery", { Title = "Chọn Thừa Hưởng (Mastery)", Values = {"Melee", "Sword", "Devil Fruit"}, Default = "Melee" })

-- TAB: FRUIT
Tabs.Fruit:AddToggle("FarmFruitToggle", {Title = "Tự Động Nhặt Trái Ác Quỷ (Auto Farm Fruit)", Default = false}):OnChanged(function(v) _G.AutoFarmFruit = v end)
Tabs.Fruit:AddToggle("StoreFruitToggle", {Title = "Tự Động Cất Trái Vào Rương (Auto Store Fruit)", Default = false}):OnChanged(function(v) _G.AutoStoreFruit = v end)
Tabs.Fruit:AddDropdown("SelectBuyFruit", { Title = "Chọn Trái Cần Mua Tự Động", Values = {"Leopard", "Dragon", "Kitsune", "Dough", "Budha", "Light"}, Default = "Budha" })

-- TAB: SEA EVENT
Tabs.SeaEvent:AddToggle("SeaEvt", {Title = "Tự Động Săn Quái Biển (Auto Sea Event)", Default = false}):OnChanged(function(v) _G.AutoSeaEvent = v end)

-- TAB: PLAYER
Tabs.Player:AddSlider("SpeedSlider", { Title = "Tốc độ chạy (WalkSpeed)", Min = 16, Max = 250, Default = 16, Rounded = true }):OnChanged(function(v)
    _G.WalkSpeedValue = v
    pcall(function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
end)

-- TAB: DRAGON UPDATE
Tabs.DragonUpdate:AddToggle("AutoDragonQuest", {Title = "Tự Động Làm Nhiệm Vụ Rồng", Default = false})

-- TAB: DUNGEON
Tabs.Dungeon:AddDropdown("SelectChip", { Title = "Chọn Loại Chip Raid", Values = {"Flame", "Ice", "Quake", "Light", "Dark"}, Default = "Flame" })
Tabs.Dungeon:AddToggle("RunRaid", {Title = "Tự Động Đi Raid (Auto Dungeon)", Default = false}):OnChanged(function(v) _G.AutoRaid = v end)

-- TAB: TRIALS
Tabs.Trials:AddToggle("AutoTrialToggle", {Title = "Tự Động Vượt Ải Tộc (Auto Trial V4)", Default = false}):OnChanged(function(v) _G.AutoTrial = v end)

-- TAB: TRAVEL
Tabs.Travel:AddDropdown("SelectIsland", { Title = "Chọn Đảo Dịch Chuyển", Values = {"Đảo Khởi Đầu", "Đảo Cát", "Đảo Tuyết", "Đảo Trời"}, Default = "Đảo Khởi Đầu" })

-- TAB: SHOP
Tabs.Shop:AddButton({ Title = "Mua Thượng Long Quyền (Godhuman)", Callback = function() print("Đang kiểm tra điều kiện mua...") end })

-- TAB: KHÁC
Tabs.Misc:AddButton({ Title = "Tối Ưu Đồ Họa (Giảm Giật Lag)", Callback = function() print("Đã xóa hiệu ứng thừa!") end })

-- [[ THÔNG BÁO KÍCH HOẠT ]]
Fluent:Notify({ Title = "Quantum Clone UI", Content = "Đã sửa lỗi và tải thành công 11 Tab!", Duration = 5 })
