# Remove and re-add path
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

# Exports
set fish_greeting
set TERM "xterm-256color"
set EDITOR "nvim"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"


# Function for creating a backup file
# ex: backup file.txt
# result: copies file as file.txt.bak
function backup --argument filename
    cp $filename $filename.bak
end

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias vim='nvim'
alias grep='grep --color=auto'
alias df='df -h'
alias psa="ps auxf"

# Starship Prompt
starship init fish | source

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"
