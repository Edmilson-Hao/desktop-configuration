#!/bin/sh

#enter your pre created username
userName="edmilson"

#enter your graphic devide (amdgpu -> newer AMD devices | radeonkms -> older AMD devices | i915kms -> intel)
graphicDriver="amdgpu"

#if intel enable xf86-video-intel (yes/no)
intelDevice="no"

#default packages
defaultPackages="i3wm-gaps neofetch scrot feh i3status i3lock nano micro doas lxappearance leafpad rxvt-unicode xterm setxkbmap papirus-icon-theme terminus-font pcmanfm compton htop font-awesome xorg-server xf86-input-libinput eudev mesa"

#add any package you want (space separeted)
neededPackages=""
