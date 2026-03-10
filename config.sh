#!/bin/bash

echo -e "Verificación de UFW activo..."

sudo ufw status | grep "Status"

echo "Instalaciones"

sudo pacman -S \
  tree \
  speedtest-cli \
  kitty \
  yazi \
  dotnet \
  jdk-open \
  lazy git \
  lazy docker \
  starship

echo -e "Comienzo de script de configuración para Omarchy"

cp .bashrc /home/nahue/

source .bashrc

echo -e "Bashrc instalado"

echo "windowrule = size 1200 600, match:class (kitty)" >>/home/nahue/.local/share/omarchy/default/hypr/apps/terminals.conf

echo "Agregado de opciones de tamaño de ventana para terminales"

echo "Copiado de starship a .config"

cp starship.toml ~/.config/

cat bindings >>~/.config/hypr/bindings.conf

echo "Repo de tmux"

git clone https://github.com/NahueDintal/tmux.git && mv tmux/ .tmux/

echo "Repo Syntax Helper"

git clone https://github.com/NahueDintal/.syntaxHelp.git

echo "Repo de Tasker"

git clone https://github.com/NahueDintal/.tk.git

echo "Repo Java commander"

git clone https://github.com/NahueDintal/.jc-cli.git

echo "Repo de kitty"

cd .config/kitty && git clone https://github.com/NahueDintal/kitty.git

cd /home/nahue

echo "Repo nvim"

cd .config/ && git clone https://github.com/NahueDintal/nvim.git

cd /home/nahue/
