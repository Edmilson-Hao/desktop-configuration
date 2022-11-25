#!/bin/sh

userName=''
#Get username
echo "Enter the user name: "  
read userName

clear

#Needed pkgs
echo "Installing packages."
pkg install xorg i3-gaps ufetch neofetch scrot feh i3status i3lock nano micro doas lxappearance leafpad rxvt-unicode xterm setxkbmap papirus-icon-theme terminus-font pcmanfm compton htop font-awesome

#configure doas
echo "Configuring dotfiles."
[! -f "/usr/local/etc/doas.conf"] && touch /usr/local/etc/doas.conf
echo "permit nopass $userName" > /usr/local/etc/doas.conf && echo "doas -> ok"

#add i3 to .xinitrc
[ ! -f "/home/$userName/.xinitrc" ] && touch /home/$userName/.xinitrc
echo "/usr/local/bin/i3" >> /home/edmilson/.xinitrc && echo "add i3 to .xinitrc -> ok"

#add startx to .shrc
[ ! -f "/home/$userName/.shrc" ]  && touch /home/$userName/.shrc

echo "if pgrep -x "Xorg" > /dev/null
then
        ufetch
else
        echo "Xorg is not running."
        startx &
fi" >> /home/$userName/.shrc && echo "Add test to check if X is running an launch if not"

#move wallpaper
[ ! -d "/home/$userName/.wallpaper" ] && mkdir /home/$userName/.wallpaper
mv wallpaper.jpg /home/$userName/.wallpaper/wallpaper.jpg && echo "Moved wallpaper to correct folder."

#move i3status.conf
mv i3status.conf /usr/local/etc/i3status.conf

#mv i3 config file
[ ! -d "/home/$userName/.config/i3" ] && /home/$userName/.config/i3
mv config /home/$userName/.config/i3/config

#mv .Xresources
#mv .Xresources /home/$userName/.Xresources

#mv autostart.sh
mv .autostart.sh /home/$userName/.autostart.sh

#mv compton
mv compton.conf /home/$userName/.config/compton.conf

#Add Console resolution to /boot/loader.conf
echo -e "kern.vt.fb.default_mode=\"1680x1050\"" >> /boot/loader.conf

#Add AMDGPU to /etc/rc.conf
echo -e "kld_list=\"amdgpu\"" >> /etc/rc.conf

#change owner of new files
chown -R $userName:$userName /home/$userName




#drm-kmod
#	|_ AMD
#	|	|_amdgpu #newer
#	|	|_radeonkms #older
#	|_Intel	+++ xf86-video-intel
#		|_i915kms
