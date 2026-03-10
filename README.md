# Configuración de Omarchy
## Una guía paso a paso para configurar Omarchy con las aplicaciones esenciales.
1ro generar llave ssh para poder clonar repos...
```
ssh-keygen -t ed25519 -C "tu_email@ejemplo.com"
```

## Configuración del Teclado

```
~/.config/hypr/input.conf
```
```
hypr
input {
    # Layout US Internacional para tildes
    kb_layout = us
    kb_variant = intl
    kb_options = compose:caps
    
    # Alternar entre layouts con Alt + Alt
    # kb_options = grp:alts_toggle
}
```

# Waybar

```
  "clock": {
    "format": "{:L%d %A %H:%M}",
    "format-alt": "{:L%d %B W%V %Y}",
    "timezone": "America/Argentina/Buenos_Aires",
    "tooltip": false,
    "on-click-right": "omarchy-cmd-tzupdate"
  },
```

# Vimium

```
unmap f
unmap t
unmap J
unmap K
unmap >>
unmap <<
map i focusInput
map L nextTab
map H previousTab
```
