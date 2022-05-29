Dotfiles used in my Linux

File structure and explanation what's files doing

```bash
dotfiles
├── bashrc 
│   └── .bash_aliases - bash aliases for nvim editor for user and sudo/root	
├── bat
│   └── config - bat  - cat command supports syntax highlighting for  programming and markup languages - config with theme 
├── Caprine
│   └── config.json - caprine -  facebook messenger for  linux -  config with polish and english spell checking
├── Code
│   └── settings.json - vscode - configuration like font, theme, icons   
├── gedit
│   └── gruvbox-dark.xml - gedit - gnome text editor - gruvbox theme
├── htop
│   └── htoprc - htop - better top command - config with gruvbox theme
├── ncspot
│   └── config.toml - ncspot - tui for spotify - config with colors
├── neofetch
│   └── config.conf - neofetch - a command-line system information tool - config for faster startup wit every zsh session
├── nvim
│   ├── init.vim - nvim - new vim command - config for loading scripts
│   └── scripts
│       ├── airline.vim -config for  airline  status/tabline for vim - config file with theme, fonts, tabs in vim
│       ├── autosave.vim - config for autosave a file with vim, autosave 10 second after change form Insert mode to Normal
│       ├── coc.vim - coinfig for nodejs extension host  neovim, load extensions like VSCode and host language servers. 
│       ├── fold.vim - script for save and restore manual folds when we exit a file 
│       ├── fzf.vim - config for general-purpose command-line fuzzy finder for vim - fast searching
│       ├── mysettings.vim - my settings not included in other scripts like colrsheme, font 
│       ├── nerdtree.vim - config for tree explorer for vim 
│       ├── nmap.vim - mapings a shortcuts userd in neovim
│       ├── plugins.vim - all plugins installed automatically with vimplug
│       └── vimplug.vim - plugin manager for neovim
├── qt5ct
│   └── qt5ct.conf - theme for Qt5 apps
├── rofi
│   ├── config - not used
│   └── rofi.rasi- not used
├── shortcuts 
│   ├── sway -  - NOT USED YET - file with shortcuts used in sway. It's a just a list of shortcuts to fast look at it. It's not a config file!
│   ├── vim -  file with shortcuts used in vim. It's a just a list of shortcuts to fast look at it. It's not a config file!
│   └── zsh - file with shortcuts used in zsh. It's a just a list of shortcuts to fast look at it. It's not a config file!
├── spotifyd
│   └── spotifyd.conf - used for spotify-tui. Daemon for sound. Username, password  must be added.
├── spotify-tui
│   ├── client.yml - confid for spotify  app, spotify secret id and secret id nmust be added.
│   └── config.yml - another tui for spotify.  Less mature than ncspot, in development. Config file with colors
├── terminator
│   └── config - terminator - advancet terminal with tabs, multiwinows. Config file with font, theme 
├── VirtualBox
│   └── update.sh - script for update virtualbox extension pack in Fedora Linux
└── zsh
    ├── .p10k.zsh - Powerlevel10k - zsh theme
    ├── scripts
    │   ├── alias.zsh - config file for all zsh aliases
    │   └── neofetch.zsh - autostart neofetch on startup zsh session
    └── .zshrc - main zsh config file
```
