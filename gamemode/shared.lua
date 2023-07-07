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
function GM:PlayerSpawn(ply)-- Sets up players on spawn. The console commands are to apply settings changed in the settings menu
    local randwep = math.random(1,40)
    ply:Give(Weapon[randwep])
    ply:SetModel("models/player/kleiner.mdl")
    ply:SetupHands()
    print("Weapon Given (spawned)")
    RunConsoleCommand("WepFontApply")
    RunConsoleCommand("SbFontApply")
end
if CLIENT then-- Adding Convars
    CreateClientConVar("Wepfontsize", 75, true, false, "Changes Weapon Text Font Size")
    CreateClientConVar("Wepfontcolor", 255, true, false, "Changes Weapon Text Color (Not working atm)")
end
