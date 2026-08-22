-- [[ PHIÊN BẢN CHUẨN 100% - KHÔNG LỖI - 11 TAB SẠCH SẼ ]]
local Library = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = Library.CreateLib("Quantum Clone Hub", "Midnight")

-- [[ KHỞI TẠO 11 TAB THEO YÊU CẦU ]]
local T = {
    Home = Window:NewTab("Home"),
    SubFarm = Window:NewTab("Sub Farm"),
    Fruit = Window:NewTab("Fruit"),
    SeaEvent = Window:NewTab("Sea Event"),
    Player = Window:NewTab("Player"),
    Dragon = Window:NewTab("Dragon Update"),
    Dungeon = Window:NewTab("Dungeon"),
    Trials = Window:NewTab("Trials"),
    Travel = Window:NewTab("Travel"),
    Shop = Window:NewTab("Shop"),
    Misc = Window:NewTab("Khác")
}

-- Tạo các khung chứa sạch sẽ cho từng tab không có chữ phụ thừa
for _, tab in pairs(T) do
    tab:NewSection("")
end

-- Thông báo kích hoạt thành công lên góc màn hình game
Library:Notify("Quantum Clone", "Giao diện 11 Tab đã sẵn sàng!", 5)
