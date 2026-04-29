--[[ 
    MYLO'S HUB V14 - ÉDITION ABYSSAL
    Ce code est ton script principal (tes 700 lignes à terme)
]]

local AbyssalLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bocaj111004/Abysall/refs/heads/main/Library.luau"))()

local Window = AbyssalLib:CreateWindow({
    Name = "Mylo's Hub | V14",
    LoadingTitle = "Initialisation...",
    LoadingSubtitle = "By Mylooooo1",
    Theme = "Dark"
})

-- VARIABLES DE MOUVEMENT
local p = game.Players.LocalPlayer
local walkSpeed = 16
local speedEnabled = false

-- ONGLET MOUVEMENT
local MoveTab = Window:CreateTab("Mouvement")

MoveTab:CreateToggle({
    Name = "Speed Hack",
    CurrentValue = false,
    Callback = function(v)
        speedEnabled = v
    end
})

MoveTab:CreateSlider({
    Name = "Vitesse",
    Range = {16, 300},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(v) walkSpeed = v end
})

-- BOUCLE DE MISE À JOUR (Pour que le Speed Hack reste actif)
game:GetService("RunService").Stepped:Connect(function()
    if speedEnabled and p.Character and p.Character:FindFirstChild("Humanoid") then
        p.Character.Humanoid.WalkSpeed = walkSpeed
    end
end)

AbyssalLib:Notify("Connecté", "Bienvenue dans ton propre Hub !", 3)
