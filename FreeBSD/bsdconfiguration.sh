#!/bin/sh

#Needed pkgs
pkg install xorg i3-gaps ufetch neofetch scrot feh i3status i3lock nano micro doas lxappearance leafpad rxvt-unicode xterm setxkbmap papirus-icon-theme terminus-font pcmangm compton htop font-awesome

#configure doas
echo "permit nopass edmilson" >> /usr/local/etc/doas.conf

#add i3 to .xinitrc
echo "/urc/local/bin/i3" >> /home/edmilson/.xinitrc

#add startx to .shrc
echo "r=`top | grep Xorg`\nif [ "$r" ]; then\n	ufetch\nelse\n    echo "Xorg is not running."\n    startx &\nfi" >> /home/edmilson/.shrc

#move wallpaper
mkdir /home/edmilson/wallpaper
mv wallpaper.jpg /home/edmilson/wallpaper/wallpaper.jpg

#move i3status.conf
mv i3status.conf /usr/local/etc/i3status.conf

#mv i3 config file
mv config /home/edmilson/.config/i3/config

#mv .Xresources
mv .Xresources /home/edmilson/.Xresources

#mv autostart.sh
mv .autostart.sh /home/edmilson/.autostart.sh

#mv compton
mv compton.conf /home/edmilson/.config/compton.conf
