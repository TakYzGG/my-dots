# <-Configuracion de Bash->

# Pront
PS1='[\[\e[95m\]\u\[\e[94m\] \w\[\e[0m\]]\[\e[91m\]\\$\[\e[0m\] ' 

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
