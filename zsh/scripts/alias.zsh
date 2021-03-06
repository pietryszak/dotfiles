# Zshrc
alias zshrc='nvim $HOME/.zshrc'
alias rld='source $HOME/.zshrc'

# Alias
alias alse="nvim $HOME/.oh-my-zsh/custom/alias.zsh"

# Neovim
alias v="nvim"
alias vi="nvim"
alias neovim="nvim"
alias vim="nvim"
alias sv="sudo nvim"

#Top
alias top="htop"
alias btop="/usr/local/bin/btop"

# Neofetch
alias neo="neofetch"

# Update
alias update="sudo dnf upgrade -y"
alias upgrade="sudo dnf upgrade -y"
alias bigupdate="~/.scripts/update.sh"
alias bigupgrade="~/.scripts/update.sh"

# Install
alias install="sudo dnf install -y"

# Remove
alias remove="sudo dnf remove -y"

# Mkdir
alias md="mkdir"
alias mdp="mkdir -p"

# Rmdir

alias rd="rm -Ir"
alias srd="sudo rm -Ir"

# Sudo
alias root="sudo su"
alias s='sudo'

# Ls
alias ls="ls -alh"

# BAT
alias cat="bat"

# Git
alias gc="git clone"

# Clear
alias c="clear"

# Command history
alias h="history"

# Cd 
alias .='cd'
alias ..='cd ..'
alias ...='cd ../..'

# Logout
alias pku="exec i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# Exit
alias ext="exit"

# List of intalled rmps and search in fzf
alias ins="dnf list installed | fzf"

# Shortcuts
alias shv="nvim $HOME/.config/shortcuts/vim"
alias shs="nvim $HOME/.config/shortcuts/sway"
alias shz="nvim $HOME/.config/shortcuts/zsh"

# Virtualbox update
alias vbu="bash -c "$HOME/.config/VirtualBox/update.sh""

# Window properies
alias xpr="bash -c xprop"

# Alsamixer
alias alx="bash -c alsamixer"

# Folders
alias dwn="cd Downloads"

# i3
alias i3="cd ~/.config/i3"
alias i3c="vim ~/.config/i3/config"
alias i3s="vim ~/.config/i3/scripts"
alias i3w="vim ~/.config/i3/scripts/workspaces"
alias i3wp="vim ~/.config/i3/scripts/windows-properties"

# Monitor settings
alias mst="~/.screenlayout/menu.sh"

# Ssh in kitty
alias ssh="kitty +kitten ssh"

# Docker
alias drut="sudo docker run -ti"
alias dru="sudo docker run"
alias dps="sudo docker ps"
alias dpsa="sudo docker ps -a"
alias dsta="sudo docker start"
alias dsto="sudo docker stop"
alias drm="sudo docker rm"
alias dext="sudo docker exec -ti"
alias datt="sudo docker attach"