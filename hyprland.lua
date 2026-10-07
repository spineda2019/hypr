-- Hyprland config, lua edition.
-- Migrated from hyprland.conf ahead of 0.57, which drops hyprlang entirely.
-- https://wiki.hypr.land/Configuring/Start/


------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Empty output = fallback rule for any monitor without an explicit one.
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})


-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")


-----------------
---- MODULES ----
-----------------

-- Each require() is a separate lua scope, so an error in one of these does not
-- stop the others from loading.
require("lua/autostart")
require("lua/looknfeel")
require("lua/input")
require("lua/binds")
require("lua/rules")
