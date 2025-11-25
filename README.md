# Configuración de Omarchy
## Una guía paso a paso para configurar Omarchy con las aplicaciones esenciales.

## Configuración bash

```
~/.local/share/omarchy/default/bash/rc
```

Y copiar el bash que está en estos archivos.

```
source .bashrc

```
No olvidar la cfg de ssh para poder descargar repositorios de github

```
ssh-keygen -t ed25519 -C "tu_email@ejemplo.com"
```

## Configuración de Tmux

Clonar y configurar tmux
```
git@github.com:NahueDintal/tmux.git
mv tmux .tmux
```
Instalar tmux
```
sudo pacman -S tmux
```
## Configuración de Hyprland (Bindings)
```
~/.config/hypr/bindings.conf
```
Configuración en los archivos con los script para buscar app's

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
## Configuraciones Adicionales
```
git clone <kitty-config-repo> ~/.config/kitty
git clone <starship-config-repo> ~/.config/starship
```
# Instalar starship si no está instalado
sudo pacman -S starship

# Instalar paquetes esenciales
```
sudo pacman -S \
    tree \
    librewolf-bin \
    speedtest-cli \
    kitty \
    yazi \
    dotnet \
    jdk-open \
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
