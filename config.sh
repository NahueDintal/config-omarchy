#!/bin/bash

echo -e "Verificación de UFW activo..."

sudo ufw status | grep "Status"

echo "Instalaciones"

sudo pacman -S tree speedtest-cli kitty yazi jdk-open lazygit lazydocker starship fastfetch

echo -e "Comienzo de script de configuración para Omarchy"

cp .bashrc /home/nahue/

cd /home/nahue/

source .bashrc

echo -e "Bashrc instalado"

echo "windowrule = size 1200 600, match:class (kitty)" >>/home/nahue/.local/share/omarchy/default/hypr/apps/terminals.conf

echo "Agregado de opciones de tamaño de ventana para terminales"

echo "Copiado de starship a .config"

cd ~/config-omarchy/ && cp starship.toml ~/.config/

echo "Bindings para hyprland copiadas"

cat bindings > ~/.config/hypr/bindings.conf

echo "Copiado de config de fastfetch"

cd ~/config-omarchy/ && cat fastfetch > ~/.config/fastfetch/config.jsonc

echo "Repo de tmux"

cd /home/nahue && git clone git@github.com:NahueDintal/tmux.git && mv tmux/ .tmux/

echo "Repo Syntax Helper"

git clone git@github.com:NahueDintal/.syntaxHelp.git

echo "Repo de Tasker"

git clone git@github.com:NahueDintal/tasker.git

echo "Repo Java commander"

git clone git@github.com:NahueDintal/.jc-cli.git

echo "Repo de kitty"

cd .config/ && git clone git@github.com:NahueDintal/kitty.git

cd /home/nahue

echo "Repo nvim"

cd ~/.config/ && git clone git@github.com:NahueDintal/nvim.git

echo "Agreagado de script para sy, jc, tk"

cd ~/.local/ && mkdir bin/ && cd bin/

echo '#!/bin/bash\n~/.syntaxHelp/bin/shelp "$@"' > ~/.local/bin/sy
chmod +x ~/.local/bin/sy

echo '#!/bin/bash\n~/.jc-cli/jc.jar "$@"' > ~/.local/bin/jc
chmod +x ~/.local/bin/jc

echo '#!/bin/bash\n~/.tk/tk.jar "$@"' > ~/.local/bin/tk
chmod +x ~/.local/bin/tk
