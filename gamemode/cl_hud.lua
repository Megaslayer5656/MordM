 surface.CreateFont("WDFont", {
    font = "Sylfaen", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	size = 75,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
})
hook.Add("HUDPaint", "MordMHUD", function ()
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    local hp = ply:Health()
    local maxhp = ply:GetMaxHealth()
    local boxW = scrw * .1
    local boxH = scrh * .02
    if hp <= 99 then
    surface.SetDrawColor(0, 0, 0, 200)
    surface.DrawRect(scrw / 2 - boxW / .21, scrh - boxH * 4, boxW, boxH)
    surface.SetDrawColor(255, 0, 0, 200)
    surface.DrawRect(scrw / 2 - boxW / .21, scrh - boxH * 4, boxW * (hp / maxhp), boxH)
    surface.SetTextColor(255, 255, 255)
    surface.SetFont("DermaLarge")
    surface.SetTextPos(scrw / 2 -boxW / .2311, scrh - boxH * 4, boxW, boxH)
    surface.DrawText(hp, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end
    if hp == 100 then
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    local hp = ply:Health()
    local maxhp = ply:GetMaxHealth()
    local boxW = scrw * .1
    local boxH = scrh * .02
    surface.SetDrawColor(0, 0, 0, 200)
    surface.DrawRect(scrw / 2 - boxW / .21, scrh - boxH * 4, boxW, boxH)
    surface.SetDrawColor(255, 0, 0, 200)
    surface.DrawRect(scrw / 2 - boxW / .21, scrh - boxH * 4, boxW * (hp / maxhp ), boxH)
    surface.SetTextColor(255, 255, 255)
    surface.SetFont("DermaLarge")
    surface.SetTextPos(scrw / 2 -boxW / .2295, scrh - boxH * 4, boxW, boxH)
    surface.DrawText(hp, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end
end) -- this whole hook just adds the bar healthbar, will be adding other healthbars in the future and they'll be selectable/customizable, just don't know how to do that rn and don't have a ton of time atm
hook.Add("HUDPaint", "MordMWHUD", function ()
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    surface.SetTextColor(255, 255, 255)
    surface.SetFont("DermaLarge")
    surface.SetTextPos(scrw / 1.15, scrh / 1.1)
    if Entity(1):HasWeapon(Weapon[1]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Baseball Bat")
    end
    if Entity(1):HasWeapon(Weapon[2]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Battle Axe")
    end
    if Entity(1):HasWeapon(Weapon[3]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Bayonet Rifle")
    end
    if Entity(1):HasWeapon(Weapon[4]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Blade")
    end
    if Entity(1):HasWeapon(Weapon[5]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Boom Mic")
    end
    if Entity(1):HasWeapon(Weapon[6]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Bottle")
    end
    if Entity(1):HasWeapon(Weapon[7]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Bowie Knife")
    end
    if Entity(1):HasWeapon(Weapon[8]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Bō")
    end
    if Entity(1):HasWeapon(Weapon[9]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Cavalry Sabre")
    end
    if Entity(1):HasWeapon(Weapon[10]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Cleaver")
    end
    if Entity(1):HasWeapon(Weapon[11]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Crowbar")
    end
    if Entity(1):HasWeapon(Weapon[12]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Fire Axe")
    end
    if Entity(1):HasWeapon(Weapon[13]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Firecrackers")
    end
    if Entity(1):HasWeapon(Weapon[14]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Fists")
    end
    if Entity(1):HasWeapon(Weapon[15]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Guitar")
    end
    if Entity(1):HasWeapon(Weapon[16]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Harpoon")
    end
    if Entity(1):HasWeapon(Weapon[17]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Hatchet")
    end
    if Entity(1):HasWeapon(Weapon[18]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Ice Axe")
    end
    if Entity(1):HasWeapon(Weapon[19]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Illumina")
    end
    if Entity(1):HasWeapon(Weapon[20]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Iron Staff")
    end
    if Entity(1):HasWeapon(Weapon[21]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Kabar Knife")
    end
    if Entity(1):HasWeapon(Weapon[22]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Katana")
    end
    if Entity(1):HasWeapon(Weapon[23]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Metal Pipe")
    end
    if Entity(1):HasWeapon(Weapon[24]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Nunchucks")
    end
    if Entity(1):HasWeapon(Weapon[25]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Penicl")
    end
    if Entity(1):HasWeapon(Weapon[26]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Pool Cue")
    end
    if Entity(1):HasWeapon(Weapon[27]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Prison Shiv")
    end
    if Entity(1):HasWeapon(Weapon[28]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Proximity Charge")
    end
    if Entity(1):HasWeapon(Weapon[29]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Push Broom")
    end
    if Entity(1):HasWeapon(Weapon[30]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Roadsign")
    end
    if Entity(1):HasWeapon(Weapon[31]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Shovel")
    end
    if Entity(1):HasWeapon(Weapon[32]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Sickle")
    end
    if Entity(1):HasWeapon(Weapon[33]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Sledgehammer")
    end
    if Entity(1):HasWeapon(Weapon[34]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Spartan Spear")
    end
    if Entity(1):HasWeapon(Weapon[35]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Stun Baton")
    end
    if Entity(1):HasWeapon(Weapon[36]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Stun Staff")
    end
    if Entity(1):HasWeapon(Weapon[37]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Trench Axe")
    end
    if Entity(1):HasWeapon(Weapon[38]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Trident")
    end
    if Entity(1):HasWeapon(Weapon[39]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Yari")
    end
    if Entity(1):HasWeapon(Weapon[40]) then
        surface.SetTextColor(255,0,0)
        surface.SetFont("WDFont")
        surface.DrawText("Zweihander")
    end
    end) --Displays text for whatever weapon you have, also I'm sure this is extremely overcomplicated, but idk another way to do this (I'm new to this stuff lol)