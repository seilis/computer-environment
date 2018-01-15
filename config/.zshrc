###############################################################################
# zsh Configuration
###############################################################################

# Editor settings
EDITOR=vim
VISUAL=gvim

# Aliases
alias e=gvim
alias edit='sudo gvim'
alias pac='sudo pacman'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias view='evince'
alias img='geeqie'
alias gkv='gitk --all'


# Prompt
autoload -Uz promptinit && promptinit
PROMPT='%F{green}%1~%F{magenta}%# %F{reset_color}'
RPROMPT='%F{blue}%T%F{reset_color}'
