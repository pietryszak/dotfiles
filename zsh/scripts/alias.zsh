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
alias btop="bpytop"

# Neofetch
alias neo="neofetch"

# Update
alias update="sudo dnf update -y"

# Install
alias install="sudo dnf install -y"

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
alias pku="exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -B 'Yes, exit sway' 'swaymsg exit'"

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

# Sway
alias swe="nvim $HOME/.config/sway/config"
alias sws="nvim $HOME/.config/sway/scripts/"

# Swayinfo
alias swi="bash -c "$HOME/.local/bin/swayinfo""
