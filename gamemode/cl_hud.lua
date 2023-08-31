function WepFontMaker()
    surface.CreateFont ("WDFont", {
        font = "Sylfaen",
        size = GetConVar("Wepfontsize"):GetInt(),
        weight = 500,
        blursize = 0,
        scanlines = 0,
        antialias = true,
    })
    
end
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
hook.Add("HUDPaint", "MordMWHUD", function (ply) --all these hooks are prob unneeded, but idk how to do it otherwise, they're here for optimization ingame
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_bat") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD2", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_axe_battleaxe") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD3", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_spear_bayonetrifle") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD4", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_throwable_blade") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD5", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_boommic") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD6", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_throwable_bottle") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD7", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_throwingknife") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD8", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_staff_bamboo") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD9", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_sword") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD10", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_axe_crafted") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD11", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_crowbar") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD12", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_axe_fireaxe") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD13", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_throwable_firecracker") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD14", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_fists") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD15", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_guitar") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD116", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_spear_harpoon") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD17", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_axe_hatchet") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD18", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_axe_iceaxe") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD19", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_illumina") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD20", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_staff_iron") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD21", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_kabarknife") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD22", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_katana") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD23", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_pipe") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD24", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_staff_nunchucks") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD25", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_pencil") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD26", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_staff_poolcue") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD27", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_shiv") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD28", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_throwable_charge") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD29", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_spear_pushbroom") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD30", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_roadsign") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD31", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_spear_shovel") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD32", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_sickle") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD33", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_sledgehammer") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD34", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_spear_spartan") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD35", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_bludgeon_stunstick") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD36", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_staff_shock") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD37", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_axe_trenchaxe") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD38", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_spear_trident") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD39", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_spear_basic") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
hook.Add("HUDPaint", "MordMWHUD40", function (ply)
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    if ply:HasWeapon("meleearts_blade_greatsword") then
        draw.SimpleText(ply:GetActiveWeapon():GetPrintName(), "WDFont", scrw / 1.2, scrh / 1.1, Color(255,0,0), TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT)
    end
end)
ColinV = CreateClientConVar("ColinVar", "0", false, false)
function Colin()
    print(ColinV:GetBool())
    if ColinV:GetBool() then
    local Scrw,Scrh = ScrW(), ScrH()
    ColinPanel = vgui.Create("DFrame")
    ColinPanel:SetTitle("")
    ColinPanel:SetDraggable(false)
    ColinPanel:ShowCloseButton(false)
    ColinPanel:SetSize (Scrw / 4, Scrh / 4)
    Colin = vgui.Create("DImage", ColinPanel)
    Colin:SetImage("MordM/Colin")
    Colin:SetSize (Scrw / 4, Scrh / 4)
    else
        ColinPanel:Close()
end
end
concommand.Add("Colin", Colin)