-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
-- hl.exec_cmd spawns asynchronously, so no trailing & disown is needed.
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("ashell")
    hl.exec_cmd("hypridle")
    hl.exec_cmd('pactl set-default-sink "alsa_output.pci-0000_03_00.1.hdmi-stereo"')
end)
