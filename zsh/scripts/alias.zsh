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

# Neofetch
alias neo="neofetch"

# Update
alias update="sudo apt update"
alias upgrade="sudo apt full-upgrade -y"

# Install
alias install="sudo apt install -y"

# Remove
alias remove="sudo apt remove -y"

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
alias h="history | fzf"

# Cd 
alias .='cd'
alias ..='cd ..'
alias ...='cd ../..'

# Logout
alias logout="exec i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# Exit
alias ext="exit"

# List of intalled rmps and search in fzf
alias ins="apt list --installed | fzf"

# Shortcuts
alias shv="nvim $HOME/.config/shortcuts/vim"
alias shis="nvim $HOME/.config/shortcuts/i3"
alias shz="nvim $HOME/.config/shortcuts/zsh"

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