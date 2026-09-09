# ~/.zshrc
# this file is not full config 
# put this lines into bottom of real config file

export EDITOR="vim"

autoload -U edit-command-line
zle -N edit-command-line

bindkey '^V' edit-command-line
