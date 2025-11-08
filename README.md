# config-omarchy
Paso a paso de la confuguración de omarchy que es simplemente cambiar unas lineas

Vamos al .config/hypr/bindings.conf

$terminal = kitty
$browser = librewolf

bindd = SUPER, return, Terminal, exec, $terminal --working-directory="$(omarchy-cmd-terminal-cwd)"
bind = SUPER, F, fullscreen
#bindd = SUPER, F, File manager, exec, uwsm app -- nautilus --new-window
bindd = SUPER, B, Browser, exec, $browser
#bindd = SUPER SHIFT, B, Browser (private), exec, $browser --private
#bindd = SUPER, M, Music, exec, omarchy-launch-or-focus spotify
#bindd = SUPER, N, Editor, exec, omarchy-launch-editor
bindd = SUPER, T, Activity, exec, $terminal -e btop

comentamos todo exepto las referencias al navegador y la terminal, eligiendo y agreagando el full screen.

Luego nos vamos input.conf y agregamos para poder hacer tildes con el teclado US, usando la variante internacional

# Control your input devices
# See https://wiki.hypr.land/Configuring/Variables/#input
input {
  # Use multiple keyboard layouts and switch between them with Left Alt + Right Alt
  # kb_layout = us,dk,eu
  kb_layout = us
  kb_variant = intl
  kb_options = compose:caps # ,grp:alts_toggle


Luego nos queda clonar el repositorio de kitty, la config de startship.

Instalamos

tree
librewolf-bin
speedtest-cli
