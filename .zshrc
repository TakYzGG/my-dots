# <-Configuracion de Zsh->

# Pront
if [[ $(whoami) != "root" ]]; then
	PROMPT="[%F{magenta}%n%f %F{blue}%~%f]%F{red}$%f "
else 
	PROMPT="[%F{magenta}%n%f %F{blue}%~%f]%F{red}#%f "
fi

# Terminal
export TERM=xterm-256color

# <-Alias->
# Colores
alias ls='ls --color=auto'
alias ll='ls -l'
alias lla='ls -la'
alias lsa='ls -a'

# Mejoras de uso
alias rm='rm -iv'
alias mv='mv -iv'
alias cp='cp -iv'
alias ..='cd ..'
alias ...='cd ../..'
alias mkdir='mkdir -pv'

# Acortar comandos
alias e='vim'
alias untar='tar xvf'
