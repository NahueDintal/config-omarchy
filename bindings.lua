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
-- ~/.config/hypr/bindings.lua

-- 1) Desvincular defaults de Omarchy que vamos a reemplazar
hl.unbind("SUPER + RETURN") -- terminal default de Omarchy
hl.unbind("SUPER + B")      -- browser default (si existe)
hl.unbind("SUPER + T")      -- (si Omarchy lo usa)

-- 2) Fullscreen (dispatcher nativo, sintaxis vieja .conf)
--    En la nueva API, verificar si va con hl.bind
-- hl.bind("SUPER + F", "fullscreenstate, 3")

-- 3) Binds propios
o.bind("SUPER + RETURN", "Terminal", "omarchy-launch-or-focus kitty")

o.bind("SUPER + D", "Discord",
  "omarchy-launch-or-focus-webapp Discord 'https://discord.com/channels/@me'")

o.bind("SUPER + B", "Browser", "omarchy-launch-or-focus chromium")

o.bind("SUPER + N", "Editor",
  "omarchy-launch-or-focus nvim-editor 'kitty --title nvim-editor -e nvim'")

o.bind("SUPER + Y", "YouTube",
  "omarchy-launch-or-focus-webapp YouTube 'https://youtube.com/'")

o.bind("SUPER + G", "WhatsApp",
  "omarchy-launch-or-focus-webapp WhatsApp 'https://web.whatsapp.com/'")

o.bind("SUPER + T", "Activity", "kitty -e btop")

o.bind("SUPER + I", "DeepSeek",
  "omarchy-launch-or-focus-webapp DeepSeek 'https://chat.deepseek.com'")

