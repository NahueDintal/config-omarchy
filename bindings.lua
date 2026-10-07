-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- ~/.config/hypr/bindings.lua
-- Binds personales de Nahue

-- Terminal: lanza o enfoca kitty
o.bind("SUPER + RETURN", "Terminal", "omarchy-launch-or-focus kitty")

-- Discord
o.bind("SUPER + D", "Discord", "omarchy-launch-or-focus-webapp Discord 'https://discord.com/channels/@me'")

-- Navegador
o.bind("SUPER + B", "Browser", "omarchy-launch-or-focus chromium")

-- Editor (kitty con título especial)
o.bind("SUPER + N", "Editor", "omarchy-launch-or-focus nvim-editor 'kitty --title nvim-editor -e nvim'")

-- YouTube
o.bind("SUPER + Y", "YouTube", "omarchy-launch-or-focus-webapp YouTube 'https://youtube.com/'")

-- WhatsApp
o.bind("SUPER + G", "WhatsApp", "omarchy-launch-or-focus-webapp WhatsApp 'https://web.whatsapp.com/'")

-- btop
o.bind("SUPER + T", "Activity", "kitty -e btop")

-- DeepSeek
o.bind("SUPER + I", "DeepSeek", "omarchy-launch-or-focus-webapp DeepSeek 'https://chat.deepseek.com'")
