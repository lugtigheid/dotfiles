#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# set some X options
setxkbmap -option terminate:ctrl_alt_bksp
xset +fp /usr/share/fonts/local
xset fp rehash

# this adds the background image
eval $(cat ~/.fehbg)

# this is for DWM's "panel"
# conky | while read -r; do xsetroot -name "$REPLY"; done &

# this was for DWM as well - sets the time and pacman updates
# while true 
# do
#	dt=$(date +"%a %b %d %H:%M")
#	updc=`pacman -Qu | wc -l`

#	UNREADMAIL=`cat .unreadmail`
#    xsetroot -name " PKG: $updc | $dt"
#    sleep 60s
# done &

# load some of the things I wish to run in the WM
# dropboxd &
# compton --backend glx --paint-on-overlay --vsync opengl-swc --unredir-if-possible --config ~/.config/awesome/compton.conf -b &
# compton -cb
wicd-gtk -t &
unclutter -idle 10 &

# not using conky anymore...
# conky -x 0 -y 0 -d


exec awesome

# just in case...
# exec dwm
# exec openbox-session
# exec i3
# exec startxfce4
