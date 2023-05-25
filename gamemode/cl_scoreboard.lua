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
            draw.SimpleText("Scoreboard", "MordM_sb_14", w / 2, h * .02, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) -- adds "scoreboard" text to scoreboard
            draw.SimpleText("Deaths", "MordM_sb_14", w/ 1.235, h * .01, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT) -- adds death text to Scoreboard
            draw.SimpleText("Ping", "MordM_sb_14", w/ 1.14, h * .01, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT) -- adds ping text to Scoreboard
            draw.SimpleText("Kills", "MordM_sb_14", w / 1.38, h * .01, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT) -- adds kill text to Scoreboard
            draw.SimpleText("K/D", "MordM_sb_14", w / 1.5, h * .01, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_RIGHT) -- adds k/d text to Scoreboard
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
        local kills = v:Frags()
        local kd = kills / deaths
        local mult = 10^(dp or 1)
        if kills >= 0 and deaths == 0 then
            kd = 0 + kills                 -- fixes ind/nan in the scoreboard if kd is 0/0 (which isn't a number, so it displayed the word nan). Basically just fixed scoreboard kd display
        end
        plypannel.Paint = function (self, w, h)
            if IsValid(v) then -- checks if the player is still in the server, if not, it doesn't draw the info for the player
            surface.SetDrawColor(0, 0, 0, 200)
            surface.DrawRect(0,0,w,h)
            draw.SimpleText(name, "MordM_sb_14", w / 2, h / 2.2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) -- adds player name to Scoreboard
            draw.SimpleText(ping, "MordM_sb_14", w / 1.165, h / 2.2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) -- adds ping number to Scoreboard
            draw.SimpleText(deaths, "MordM_sb_14", w / 1.28, h / 2.2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) -- adds death number to Scoreboard
            draw.SimpleText(kills, "MordM_sb_14", w / 1.41, h / 2.2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) -- adds kill number to Scoreboard
            draw.SimpleText(math.floor(kd * mult + 0.5)/mult, "MordM_sb_14", w / 1.54, h / 2.2, color_white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER) -- adds k/d number (with rounding) to Scoreboard
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