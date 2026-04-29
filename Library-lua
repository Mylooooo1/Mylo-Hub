-- 1. On charge la library (le moteur)
local AbyssalLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bocaj111004/Abysall/refs/heads/main/Library.luau"))()

-- 2. On crée la fenêtre (la carrosserie)
local Window = AbyssalLib:CreateWindow({
    Name = "Mylo Hub - Test",
    LoadingTitle = "Chargement...",
    LoadingSubtitle = "Par Mylo",
    Theme = "Dark"
})

-- 3. On crée un onglet
local Tab = Window:CreateTab("Principal")

-- 4. On ajoute un bouton pour vérifier que ça marche
Tab:CreateButton({
    Name = "Clique-moi !",
    Callback = function()
        print("Le bouton fonctionne !")
        AbyssalLib:Notify("Succès", "L'interface est bien chargée !", 3)
    end,
})

AbyssalLib:Notify("Prêt", "Interface Abyssal activée !", 3)
