function Wepmenuopen()
    local scrw, scrh = ScrW(), ScrH()
    Wepmenu = vgui.Create("DFrame")
    Wepmenu:SetSize(scrw * .5, scrh * .8)
    Wepmenu:Center()
    Wepmenu:SetTitle("")
    Wepmenu.Paint = function (me,w,h)
        surface.SetDrawColor(0,0,0,200)
        surface.DrawRect(0,0,w,h)
 end
end
concommand.Add("Wepmenu", Wepmenuopen)
function Settings()
    local scrw, scrh = ScrW(), ScrH()
    Settingsmenu = vgui.Create("DFrame")
end
concommand.Add("Settings", Settings)
-- BTW: This file doesn't work for me, but it works for my friends who join, sooooo I gotta figure this out some other time lmao