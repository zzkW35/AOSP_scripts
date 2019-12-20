#!/bin/bash
##zzkW35

#Update the whole system
sudo apt update
sudo apt upgrade

#Install SnapCraft
sudo apt install snapd

#Vim
sudo apt install -y vim

#git
sudo apt install -y git
git config --global user.name "Filippo Roggi"
git config --global user.email "filippo.roggi@gmail.com"
export GIT_EDITOR=vim

#Chrome
cd Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
cd

#Clion
sudo apt install -y build-essential
sudo snap install clion --classic

#Gnome Tweaks
sudo apt install -y gnome-tweaks

#Neofetch
sudo apt install -y neofetch

#OneDrive
sudo apt install -y onedrive

#Papirus
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt-get update
sudo apt-get install papirus-icon-theme

#PyCharm
sudo snap install pycharm-professional --classic

#Termius
sudo snap install termius-app

#Visual Studio Code
sudo snap install code --classic

#Debloat some useless gnome stuff
cd /usr/games
sudo rm -rf espdiff hoichess hoixiangqi iagno sol

sudo apt remove firefox
sudo apt remove gnome-chess
sudo apt remove five-or-more
sudo apt remove -y four-in-a-row
sudo apt remove -y hitori
sudo apt remove -y gnome-klotski
sudo apt remove -y lightsoff
sudo apt remove -y gnome-mahjongg
sudo apt remove -y gnome-mines
sudo apt remove -y gnome-nibbles
sudo apt remove -y quadrapassel
sudo apt remove -y gnome-robots
sudo apt remove -y gnome-sudoku
sudo apt remove -y swell-foop
sudo apt remove -y tali
sudo apt remove -y gnome-taquin
sudo apt remove -y gnome-tetravex
sudo apt remove -y inkscape
sudo apt remove -y pidgin
sudo apt remove -y hexchat
sudo apt remove -y sound-juicer
sudo apt purge -y transmission-gtk

sudo apt autoremove -y 