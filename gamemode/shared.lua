GM.Name = "MordM"
GM.Author = "Megaslayer_"
GM.Email = "N/A"
GM.Website = "N/A"
function GM:Initialize()
    
end
function GM:PlayerNoClip()
    return false
end
function GM:PlayerSpawn(ply)
    local randwep = math.random(1,40)
    ply:Give(Weapon[randwep])
    ply:SetModel("models/player/kleiner.mdl")
    ply:SetupHands()
end