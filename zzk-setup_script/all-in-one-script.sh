#!/bin/bash
#zzkW35

#Just a lazy person would think about writing a script that even installs icon packs 

echo "This script is going to download and install some stuff, please 
don't go AFK, shell may ask to enter sudo password serveral times"

#First thing first: update the system applications
sudo pacman -Syyu

#move touchpad_config in the autostart-scripts folder
mv touchpad_config.sh ~/.config/autostart-scripts

#Customized hotkeys
    #F7: Toggle Present Windows
    #F4,F5,F6: music playback. Previous, Play-Pause, Next
#Well, this way is pretty bad and chunky, but works
sed -i 's/Expose=Ctrl+F9,Ctrl+F9,Toggle Present Windows (Current desktop)/Expose=F7,Ctrl+F9,Toggle Present Windows (Current desktop)/g' ~/.config/kglobalshortcutsrc
sh media_control_hotkeys.sh

#Install Latte dock, set my custom config and set the dock to autorun at start
sudo pacman -S latte-dock --noconfirm
cd latte_dock
cp -f lattedockrc ~/.config/lattedockrc
cp org.kde.latte-dock.desktop ~/.config/autostart

#Install Papirus icon pack using the script they provide on their official GitHub page
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | DESTDIR="$HOME/.local/share/icons" sh

cd

#Enter Downloads folder to install yay and go back to the root of the current user
cd Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

#Vim
sudo pacman -S vim --noconfirm

#Delete Firefox and install Chrome 
sudo pacman -Rsc firefox --noconfirm
yay -S google-chrome-beta --noconfirm

#Telegram Desktop
sudo pacman -S telegram-desktop --noconfirm

#Visual Studio Code
yay -S visual-studio-code-bin --noconfirm

#Setup Git environment and install GitHub Desktop
git config --global user.name "Filippo Roggi"
git config --global user.email "zzkw35@gmail.com"
export GIT_EDITOR=vim 
yay -S github-desktop-bin --noconfirm

#Authy
yay -S authy --noconfirm

#Install and setup my custom rEFInd
cd Downloads
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/zzkW35/refind-theme-regular/zzk-edit/install.sh)"

cd

#Install custom libinput-gestures
sudo gpasswd -a $USER input
sudo pacman -S xdotool wmctrl
cd Downloads
git clone https://github.com/zzkW35/libinput-gestures.git
cd libinput-gestures
sudo make install
libinput-gestures-setup autostart
cd ..

#Promp the user to empty Download folder
read -p "Everything got downloaded. Should I clean Downloads folder? " -r
if [[ $REPLY =~ [Yy] ]]
then
    rm -rf *
fi
echo "Sure" 

cd

#Still lacks 2nd keyboard layout

echo "Shit is set now, gg. You still may want to adjust a few things."
read -p "Wanna reb00t? " -r
if [[ $REPLY =~ [Yy] ]]
then
    reboot
fi
echo "K, your choice"