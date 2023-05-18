hook.Add("HUDPaint", "MordMHUD", function ()
    local scrw,scrh = ScrW(), ScrH()
    local ply = LocalPlayer()
    local hp = ply:Health()
    local maxhp = ply:GetMaxHealth()
    local boxW = scrw * .1
    local boxH = scrh * .02
    surface.SetDrawColor(0, 0, 0, 200)
    surface.DrawRect(scrw / 2 - boxW / .21, scrh - boxH * 4, boxW, boxH)
    surface.SetDrawColor(255, 0, 0, 200)
    surface.DrawRect(scrw / 2 - boxW / .21, scrh - boxH * 4, boxW * (hp / maxhp), boxH)
    surface.SetTextColor(255, 255, 255)
    surface.SetFont("DermaLarge")
    surface.SetTextPos(scrw / 2 -boxW / .2311, scrh - boxH * 4, boxW, boxH)
    surface.DrawText(hp, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    if hp == 100 then
    
    end
end) -- this whole hook just adds the bar healthbar, will be adding other healthbars in the future and they'll be selectable/customizable, just don't know how to do that rn and don't have a ton of time atm