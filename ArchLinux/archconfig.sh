#!/usr/bin/env bash
#
#
#######################################################
##### Author: Edmilson Hao <edmilsonwp@gmail.com> #####
##### Site: http://www.estudandolinux.com.br      #####
##### Version: 0.1                                #####
##### Date: 07/12/2018 10:43:50                   #####
#######################################################
#
#MIT License
#
#Copyright (c) 2018 Edmilson-Hao
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all
#copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.
#







#Installing packages
echo "Installing packages"
sudo pacman -S --noconfirm git unzip pcmanfm arc-gtk-theme lxappearance papirus-icon-theme capitaine-cursors feh pavucontrol ttf-font-awesome terminus-font htop ranger scrot compton rxvt-unicode



#Creating temporary directory
mkdir ~/configuration
cd ~/configuration

#Installing Chrome-Stable from AUR
echo "Cloning Chrome-Stable from AUR"
git clone https://aur.archlinux.org/google-chrome.git &&
cd google-chrome &&
makepkg -si --noconfirm &&
cd ..

#Installing yay
echo "Installing yay"
git clone https://aur.archlinux.org/yay-bin.git &&
cd yay-bin &&
makepkg -si --noconfirm &&
cd ..


change wallpaper
wget https://raw.githubusercontent.com/Edmilson-Hao/PostArch/master/wallpaper.jpg &&
mkdir ~/.wallpaper
&& mv wallpaper.jpg ~/.wallpaper/wallpaper.jpg &&
feh --bg-scale ~/.wallpaper/wallpaper.jpg

yay -S st

mkdir /home/edmilson/Imagens
