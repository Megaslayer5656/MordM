-- Just like console commands and stuff idk what i'm doing lmaoo
RunConsoleCommand("ma2_togglethrowing", 1)
RunConsoleCommand("ma2_damagemultiplier", 1.2)
RunConsoleCommand("ma2_togglechargeui", 1)
if SERVER then
    RunConsoleCommand("sv_allowdownload", 1) -- This stuff idk if it like is auto-enabled but i'm not sure so its like a failsafe idk exactly what i'm doing obv lol
    RunConsoleCommand("sv_alltalk", 1) -- Allows players to talk to everyone
    RunConsoleCommand("sv_autosave", 1) -- Autosaves server/player info
    RunConsoleCommand("sv_accelerate", 5.5) -- To slow movement
    RunConsoleCommand("sv_airaccelerate", 10) -- To slow movement
    RunConsoleCommand("mp_falldamage", 1) -- Realistic Fall Damage
end
if CLIENT then
    RunConsoleCommand("cl_drawhud", 0) -- Disabled to allow custom hud
end