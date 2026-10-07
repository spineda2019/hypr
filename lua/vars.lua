-- Shared values for the rest of the config.
-- Each require()d file is its own lua scope, so locals in hyprland.lua are not
-- visible here or anywhere else. Anything used by more than one file lives in
-- this table instead.

return {
    mainMod = "SUPER", -- the "Windows" key

    terminal    = "ghostty",
    webBrowser  = "zen",
    fileManager = "dolphin",
    menu        = "hyprlauncher",

    volumeUp   = "~/.local/scripts/hypr_volume.fish raise",
    volumeDown = "~/.local/scripts/hypr_volume.fish lower",
    volumeMute = "~/.local/scripts/hypr_volume.fish mute",
}
