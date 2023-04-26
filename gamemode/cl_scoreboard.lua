surface.CreateFont( "MordM_sb_14", {
	font = "Trebuchet MS", --  Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	size = 20,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	
} )
-- This adds custom font
local function ToggleScoreBoard(Toggle)
    if Toggle then
        local scrw, scrh = ScrW(), ScrH()
        MordMscr = vgui.Create("DFrame")
        MordMscr:SetTitle("") -- prob unneeded code but i'm too scared to remove it lol
        MordMscr:SetSize(scrw * .3, scrh * .6)
        MordMscr:Center()
        MordMscr:SetDraggable(false)
        MordMscr:ShowCloseButton(false)
        MordMscr:SetPos(scrw * .34555, scrh * .05)
        MordMscr.Paint = function (self,w,h)    
            surface.SetDrawColor(0, 0, 0, 200)     
            surface.DrawRect(0, 0, w, h)
            draw.SimpleText("Scoreboard", "MordM_sb_14", w / 2, h * .02, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end -- Makes basic Scoreboard
        local ypos = MordMscr:GetTall() * .04
        for k, v in pairs(player.GetAll()) do
        local plypannel = vgui.Create("DPanel", MordMscr)
        local ply = LocalPlayer()
        plypannel:SetPos(0, ypos)
        plypannel:SetSize(MordMscr:GetWide(), MordMscr:GetTall() * .05)
        local name = v:Name()
        local ping = v:Ping()
	local deaths = v:Deaths()
        plypannel.Paint = function (self, w, h)
            if IsValid(v) then -- checks if the player is still in the server, if not, it doesn't draw the info for the player
            surface.SetDrawColor(0, 0, 0, 200)
            surface.DrawRect(0,0,w,h)
            draw.SimpleText(name, "MordM_sb_14", w / 2, h / 2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) -- adds player name to Scoreboard
            draw.SimpleText(ping, "MordM_sb_14", w / 1.1, h / 4, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT) -- adds ping number to Scoreboard
            draw.SimpleText("Ping:", "MordM_sb_14", w/1.12, h / 4.5, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT) -- adds ping text to Scoreboard
	    draw.SimpleText(deaths, "MordM_sb_14", w / 1.2, h / 4, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT) -- adds death number to Scoreboard
            draw.SimpleText("Deaths:", "MordM_sb_14", w/ 1.23, h / 4.3, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT) -- adds death text to Scoreboard
        end
        end
        ypos = ypos + plypannel:GetTall() * 1.1 -- spacing between player info
    end
    else
         
        if IsValid(MordMscr) then
            MordMscr:Remove() -- removes Scoreboard when you let go of tab/your Scoreboard key
        end
    end
end



hook.Add("ScoreboardShow", "MordMScrS", function()
    ToggleScoreBoard(true)
    return false
end)

hook.Add("ScoreboardHide", "MordMScrH", function ()
    ToggleScoreBoard(false)
end)
