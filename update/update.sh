# Echo colors
magenta=`tput setaf 5`
green=`tput setaf 2`
bold=`tput bold`
reset=`tput sgr0`

# Update system
echo "${green}${bold}CHECK LIST OF UPDATES${reset}"
sudo dnf upgrade --refresh > /dev/null
echo "${green}${bold}UPDATE SYSTEM${reset}"
sudo dnf upgrade -y > /dev/null

# Remove unnecessary packets
echo "${green}${bold}REMOVE UNNECESSARY PACKETS${reset}"
sudo dnf autoremove -y > /dev/null

# Update zsh syntax highlighting
echo "${green}${bold}UPDATE ZSH SYNTAX HIGHLIGHTING${reset}"
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Update zsh syntax autosuggestions
echo "${green}${bold}UPDATE ZSH AUTOSUGGESTIONS${reset}"
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone --quiet https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Update powerlevel10k
echo "${green}${bold}UPDATE POWERLEVEL10K${reset}"
rm -rf ~/.oh-my-zsh/custom/themes/powerlevel10k
git clone --quiet --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Papirus gtk icons for gruvbox 
echo "${green}${bold}UPDATE PAPIRUS ICONS${reset}"
cd ~/.gc
sudo wget -q O- https://git.io/papirus-icon-theme-install | sh  > /dev/null

# Papirus folders
echo "${green}${bold}UPDATE PAPIRUS FOLDER ICONS${reset}"
wget -q O- https://git.io/papirus-folders-install | sh > /dev/null
papirus-folders -C brown --theme Papirus-Dark > /dev/null
cd

# Update Polybar Spotify
echo "${green}${bold}UPDATE POLYBAR SPOTIFY${reset}"
cd ~/.gc
sudo rm -rf polybar-spotify
git clone --quiet https://github.com/Jvanrhijn/polybar-spotify.git
cp ~/.gc/polybar-spotify/spotify_status.py ~/.config/polybar/scripts/
sed -i -e '/play_pause/s/25B6/F909/' ~/.config/polybar/scripts/spotify_status.py 
sed -i -e '/play_pause/s/23F8/F8E3/' ~/.config/polybar/scripts/spotify_status.py 
cd

# Update Vmware Workstation
echo "${green}${bold}UPDATE VMWARE WORKSTATION. IT'S TAKE TIME. PLEASE WAIT!${reset}"
cd ~/.gc
wget -q --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0" https://www.vmware.com/go/getworkstation-linux
chmod a+x getworkstation-linux
sudo ./getworkstation-linux  --console --required --eulas-agreed > /dev/null
rm getworkstation-linux
cd

# Update Virtualbox guest tools
echo "${green}${bold}UPDATE VIRTUALBOX GUEST TOOLS${reset}"
cd ~/.gc/VirtualBox 
LatestVirtualBoxVersion=$(wget -qO - https://download.virtualbox.org/virtualbox/LATEST-STABLE.TXT)
wget -q "https://download.virtualbox.org/virtualbox/${LatestVirtualBoxVersion}/Oracle_VM_VirtualBox_Extension_Pack-${LatestVirtualBoxVersion}.vbox-extpack"
yes | sudo VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-${LatestVirtualBoxVersion}.vbox-extpack > /dev/null
rm Oracle_VM_VirtualBox_Extension_Pack*.vbox-extpack
cd

# Update Caffeine ng
echo "${green}${bold}UPDATE CAFFEINE-NG${reset}"
cd ~/.gc
sudo rm -rf caffeine-ng 
git clone --quiet https://github.com/caffeine-ng/caffeine-ng.git
cd caffeine-ng
python setup.py -q build
sudo python setup.py -q install
sudo glib-compile-schemas /usr/share/glib-2.0/schemas > /dev/null 2>&1
sudo rm  /usr/share/applications/caffeine-preferences.desktop 

# Zenkit
echo "${green}${bold}UPDATE ZENKIT${reset}"
cd ~/.gc
wget -q https://static.zenkit.com/downloads/desktop-apps/base/zenkit-base-linux.rpm
sudo rpm -i zenkit-base-linux.rpm > /dev/null
rm zenkit-base-linux.rpm
cd

# Update flatpaks
echo "${green}${bold}UPDATE FLATPAKS${reset}"
flatpak update -y > /dev/null

#######################################################################
# My dotfiles update
#######################################################################

echo "${green}${bold}UPDATE ALL MY DOTFILES${reset}"
rm -rf ~/.gc/dotfiles
cd ~/.gc
git clone --quiet https://github.com/pietryszak/dotfiles.git
cd

# Copy bat  config to proper folder
\cp -r ~/.gc/dotfiles/bat ~/.config

# Copy Code config to proper folder
\cp -r ~/.gc/dotfiles/Code/settings.json ~/.config/Code/User/

# Copy htop config to proper folder 
\cp -r ~/.gc/dotfiles/htop ~/.config

# Copy neofetch config to proper folder
\cp -r ~/.gc/dotfiles/neofetch ~/.config

# Copy nvim config to proper folder
\cp -r ~/.gc/dotfiles/nvim ~/.config

# Copy shortcuts list to proper folder
\cp -r ~/.gc/dotfiles/shortcuts ~/.config

# Copy spotifyd config to proper folder
\cp -r ~/.gc/dotfiles/spotifyd ~/.config

# Copy spotify-tui config to proper folder
\cp -r ~/.gc/dotfiles/spotify-tui ~/.config

# Copy VirtualBox config to proper folder 
\cp -r ~/.gc/dotfiles/VirtualBox ~/.config
chmod +x ~/.config/VirtualBox/update.sh

# Copy VmWare config to proper folder
\cp -r ~/.gc/dotfiles/vmware/preferences ~/.vmware

# Copy Caprine config to proper folder
\cp -r ~/.gc/dotfiles/Caprine ~/.config

# Copy zsh sripts to proper folder
\cp -r ~/.gc/dotfiles/zsh/scripts/* ~/.oh-my-zsh/custom

# Copy zshrc config to proper folder
\cp -r ~/.gc/dotfiles/zsh/.zshrc ~/

# Copy powerlevel10k config to proper folder
\cp -r ~/.gc/dotfiles/zsh/.p10k.zsh ~/

# Copy terminator config to proper folder
\cp -r ~/.gc/dotfiles/terminator/ ~/.config

# Copy kitty config to proper folder
\cp -r ~/.gc/dotfiles/kitty/ ~/.config

# Copy TeamViewer config to proper folder
\cp -r ~/.gc/dotfiles/teamviewer/ ~/.config

# Copy Redshitf config to proper folder
\cp -r ~/.gc/dotfiles/redshift/ ~/.config

# Copy bash_aliases to user folder
\cp -r ~/.gc/dotfiles/bashrc/.bash_aliases ~/ 

# Copy bash_aliases to sudo/root folder
sudo \cp -r ~/.gc/dotfiles/bashrc/.bash_aliases /root  

# Copy qt5ct config to to proper folder
\cp -r ~/.gc/dotfiles/qt5ct ~/.config

# Copy gtk config to to proper folder
cp ~/.gc/dotfiles/gtk/.gtkrc-2.0 ~
cp ~/.gc/dotfiles/gtk/settings.ini ~/.config/gtk-3.0/

# Copy gedit config to to proper folder
sudo \cp -r ~/.gc/dotfiles/gedit/* /usr/share/gtksourceview-4/styles
gsettings set org.gnome.gedit.preferences.editor scheme 'gruvbox-dark' 

# Copy arandr config to to proper folder
\cp -r ~/.gc/dotfiles/screenlayout/* ~/.screenlayout
chmod +x ~/.screenlayout/*

# Copy shortcuts list to proper folder
\cp -r ~/.gc/dotfiles/shortcuts ~/.config

# Copy i3 config to to proper folder
\cp -r ~/.gc/dotfiles/i3 ~/.config
rm ~/.config/i3/scripts/vmware-workspaces

# Copy polybar config to to proper folder
\cp -r ~/.gc/dotfiles/polybar ~/.config
chmod +x ~/.config/polybar/cuts/scripts/launcher.sh
chmod +x ~/.config/polybar/cuts/scripts/powermenu.sh
chmod +x ~/.config/polybar/scripts/*
cp ~/.gc/polybar-spotify/spotify_status.py ~/.config/polybar/scripts/
sed -i -e '/play_pause/s/25B6/F909/' ~/.config/polybar/scripts/spotify_status.py 
sed -i -e '/play_pause/s/23F8/F8E3/' ~/.config/polybar/scripts/spotify_status.py 

# Copy volumeicon config to to proper folder
\cp -r ~/.gc/dotfiles/volumeicon/* ~/.config/volumeicon

# Copy bpytop config to to proper folder
\cp -r ~/.gc/dotfiles/bpytop/themes/ ~/.config

# Copy update script to to proper folder
\cp -r ~/.gc/dotfiles/update/* ~/.scripts
chmod +x ~/.scripts/update.sh

# Copy caffeine-ng config to to proper folder
\cp -r ~/.gc/dotfiles/caffeine/* ~/.config/caffeine

echo "${magenta}${bold}UPDATE COMPLETE${reset}"