#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge ~/.Xresources
xrandr --output DP2 --auto  --left-of eDP1
xbacklight -set 40
feh --bg-center /home/awzang/pictures/water_mountains.jpg
sleep 1; xset -dpms; xset s off
exec i3
