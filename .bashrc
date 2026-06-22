#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#
# -----------------------------------------------------

# ====================
# CONFIGURACIÓN BÁSICA
# ====================
export EDITOR=nvim
export VISUAL=nvim

# Historial mejorado
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=10000
HISTFILESIZE=20000
shopt -s histappend

# Opciones interactivas
shopt -s checkwinsize
shopt -s autocd
shopt -s cdspell
shopt -s globstar

# ====================
# AUTOCOMPLETADO AVANZADO
# ====================
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Configuración de autocompletado
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
bind "set bell-style none"

# Set para tener comandos vim para la terminal bash
set -o vi

# Completado para comandos comunes
if [ -f /usr/share/bash-completion/completions/git ]; then
  . /usr/share/bash-completion/completions/git
fi

# Config de Tmux
tmux source ~/.tmux/tmux.conf

# Auto-iniciar tmux de forma inteligente
if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  # Si hay sesiones, conectarse a la primera disponible
  if tmux list-sessions &>/dev/null; then
    exec tmux attach
  else
    # Si no hay sesiones, crear una nueva
    exec tmux new -s Tmux
  fi
fi

# ====================
# ALIAS ÚTILES
# ====================
alias ls='ls --color=auto'
alias ll='ls -lAh'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'
alias du='du -h'
alias actualy='yes y | sudo pacman -Syu'
alias v='nvim'
alias pullall='cd ~/Estudio/scriptLinux/ && ./pullAll.sh && cd /home/nahue/'
alias descanso='cd ~/Estudio/scriptLinux/ && ./temporizadorEjercicio.sh && cd /home/nahue/'
alias wifi='nmtui'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ff='fastfetch'
alias c='clear'
alias ping1='ping -c 4 1.1.1.1'
alias ping8='ping -c 4 8.8.8.8'
alias ipnow='echo "País: $(curl -s ifconfig.co/country)"'
alias vpnup='sudo wg-quick up'
alias vpndown='sudo wg-quick down'
alias vpnshow='sudo wg show'
alias sy='shelp'
alias pomodoro='cd ~/Estudio/scriptLinux/ && ./pomodoro.sh; cd /home/nahue/'
alias mysqlup='podman pod rm dbstack; podman kube play --publish 3000:3000 dbstack.yml'
alias mysqldown='podman pod stop dbstack'

# ====================
# FUNCIONES PERSONALES
# ====================
# Buscar en historial con flechas
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Navegaciòn rápida
up() {
  local d=""
  local limit="$1"
  for ((i = 1; i <= limit; i++)); do
    d="../$d"
  done
  cd "$d" || echo "Error: no se pudo cambiar al directorio"
}

# Auto-start ssh-agent
eval "$(ssh-agent -s)" >/dev/null
ssh-add ~/.ssh/id_rsa 2>/dev/null

# ====================
# STARSHIP PROMPT
# ====================
eval "$(starship init bash)"
eval "$(zoxide init bash)"

# Optimización para Starship
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
export STARSHIP_CACHE="$HOME/.cache/starship"
mkdir -p "$STARSHIP_CACHE"

# Syntax help
export PATH="$HOME/.syntaxHelp/bin:$PATH"

# Acelera la comprobación de git
export STARSHIP_CONFIG_GIT_DISCOVERY_LIMIT=1

# FX de java
export PATH_TO_FX="$HOME/javafx-sdk-25.0.1/lib"
export PATH_TO_FX="/home/nahue/javafx-sdk-25.0.1/lib"

# Manuales español
export MANPATH=/usr/share/man/es:/usr/share/man

# opencode
export PATH=/home/nahue/.opencode/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
