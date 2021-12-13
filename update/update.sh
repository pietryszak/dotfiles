# Update system
sudo dnf upgrade --refresh
sudo dnf upgrade -y

# Remove unnecessary packets
sudo dnf autoremove -y

# Update Virtualbox guest tools
cd ~/.gc/VirtualBox &&
LatestVirtualBoxVersion=$(wget -qO - https://download.virtualbox.org/virtualbox/LATEST-STABLE.TXT) && wget "https://download.virtualbox.org/virtualbox/${LatestVirtualBoxVersion}/Oracle_VM_VirtualBox_Extension_Pack-${LatestVirtualBoxVersion}.vbox-extpack" &&
yes | sudo VBoxManage extpack install --replace Oracle_VM_VirtualBox_Extension_Pack-${LatestVirtualBoxVersion}.vbox-extpack &&
rm Oracle_VM_VirtualBox_Extension_Pack*.vbox-extpack
cd

# Update Vmware Workstation
cd ~/.gc
wget --user-agent="Mozilla/5.0 (X11; Fedora; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0" https://www.vmware.com/go/getworkstation-linux
chmod a+x getworkstation-linux
sudo ./getworkstation-linux  --console --required --eulas-agreed    
rm getworkstation-linux
cd

# Update Github desktop
cd ~/.gc
curl -fSL https://api.github.com/repos/shiftkey/desktop/releases/latest | jq -r '.assets[] | select(.name | test("GitHubDesktop.*linux1\\.rpm")) | .browser_download_url' | xargs curl -fsSL -o GitHubDesktop.rpm && sudo dnf install -y GitHubDesktop.rpm && rm GitHubDesktop.rpm 
cd

# Update Git btop
cd ~/.gc
sudo rm -rf btop
git clone https://github.com/aristocratos/btop.git
cd btop
make
sudo make install
cd

# Update zsh syntax highlighting
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Update zsh syntax autosuggestions
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Update powerlevel10k
rm -rf ~/.oh-my-zsh/custom/themes/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Update Caffeine ng
cd ~/.gc
sudo rm -rf caffeine-ng 
git clone https://github.com/caffeine-ng/caffeine-ng.git
cd caffeine-ng
python setup.py build
sudo python setup.py install
sudo glib-compile-schemas /usr/share/glib-2.0/schemas
sudo rm  /usr/share/applications/caffeine-preferences.desktop 

# Update Polybar Spotify
cd ~/.gc
sudo rm -rf polybar-spotify
git clone https://github.com/Jvanrhijn/polybar-spotify.git
cp ~/.gc/polybar-spotify/spotify_status.py ~/.config/polybar/scripts/
sed -i -e '/play_pause/s/25B6/F909/' ~/.config/polybar/scripts/spotify_status.py 
sed -i -e '/play_pause/s/23F8/F8E3/' ~/.config/polybar/scripts/spotify_status.py 
cd