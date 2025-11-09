Configuración de Omarchy
Una guía paso a paso para configurar Omarchy con las aplicaciones esenciales.

📋 Prerrequisitos
Sistema Arch Linux instalado

Entorno Hyprland configurado

Permisos de administrador para instalar paquetes

🚀 Configuración Paso a Paso
1. Configuración del Shell (.bashrc)
Ubicación: ~/.local/share/omarchy/default/bash/rc

Agrega tus alias y configuraciones personalizadas al archivo bashrc.

2. Configuración de Tmux
bash
# Clonar y configurar tmux
git clone <tmux-repo-url> ~/.tmux

# Instalar tmux
sudo pacman -S tmux
3. Configuración de Hyprland (Bindings)
Archivo: ~/.config/hypr/bindings.conf

hypr
# Variables esenciales
$terminal = kitty
$browser = librewolf

# Atajos de teclado principales
bind = SUPER, Return, exec, $terminal --working-directory="(omarchy-cmd-terminal-cwd)"
bind = SUPER, F, fullscreen
bind = SUPER, B, exec, $browser
bind = SUPER, T, exec, $terminal -e btop

# Comenta o elimina los demás bindings no utilizados
4. Configuración del Teclado
Archivo: ~/.config/hypr/input.conf

hypr
input {
    # Layout US Internacional para tildes
    kb_layout = us
    kb_variant = intl
    kb_options = compose:caps
    
    # Alternar entre layouts con Alt + Alt
    # kb_options = grp:alts_toggle
}
5. Configuraciones Adicionales
bash
# Clonar configuraciones
git clone <kitty-config-repo> ~/.config/kitty
git clone <starship-config-repo> ~/.config/starship

# Instalar starship si no está instalado
sudo pacman -S starship
📦 Paquetes a Instalar
bash
# Instalar paquetes esenciales
sudo pacman -S \
    tree \
    librewolf-bin \
    speedtest-cli \
    kitty \
    btop

# O instalar individualmente
sudo pacman -S tree
sudo pacman -S librewolf-bin
sudo pacman -S speedtest-cli
🛠️ Comandos Útiles
Verificación de Configuración
bash
# Verificar que todos los componentes estén instalados
which kitty
which librewolf
which starship
tmux -V
Recargar Configuraciones
bash
# Recargar Hyprland (desde terminal dentro de Hyprland)
hyprctl reload

# Recargar bashrc
source ~/.bashrc
🎯 Resumen de Atajos de Teclado
Atajo	Función
SUPER + Enter	Abrir terminal (Kitty)
SUPER + F	Pantalla completa
SUPER + B	Abrir navegador (LibreWolf)
SUPER + T	Monitor del sistema (btop)
❗ Notas Importantes
Omarchy es principalmente una personalización mediante modificaciones de configuración

Asegúrate de hacer backup de tus configuraciones originales

Los paths pueden variar según tu instalación específica

Reinicia Hyprland después de hacer cambios en los archivos de configuración

🔧 Solución de Problemas
Si encuentras problemas:

Verifica las rutas de los archivos de configuración

Confirma que todos los paquetes estén instalados

Revisa los logs de Hyprland con hyprctl logs

¡Listo! Tu configuración de Omarchy debería estar funcionando correctamente.

