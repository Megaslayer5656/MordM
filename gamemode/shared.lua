GM.Name = "MordM"
GM.Author = "Megaslayer_"
GM.Email = "N/A"
GM.Website = "https://github.com/Megaslayer5656"
function GM:Initialize()
    print("Starting MordM")
end
function GM:PlayerNoClip()
    return false
end
function GM:PlayerSpawn(ply)
    local randwep = math.random(1,40)
    ply:Give(Weapon[randwep])
    ply:SetModel("models/player/kleiner.mdl")
    ply:SetupHands()
    print("Weapon Given (spawned)")
end
function Mainmenuspec(ply)
    ply:Spectate(6)
end
function Unspec(ply)
    ply:UnSpectate()
end
function Remitems(ply)
    ply:RemoveAllItems()
end
function ItemMenuClose(ply)
    local randwep = math.random(1,40)
    ply:Give(Weapon[randwep])
end
concommand.Add("Mainmenuspec", Mainmenuspec)-- IMPORTANT: These commands for the menu are just for current testing, and are not going to be a thing later
concommand.Add("Unspec", Unspec)
concommand.Add("Remitems", Remitems)
concommand.Add("Itemmenuclose", ItemMenuClose)