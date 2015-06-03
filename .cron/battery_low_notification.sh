#!/bin/bash

if [ -r "$HOME/.dbus/Xdbus" ]; then
    . "$HOME/.dbus/Xdbus"
fi

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:30:00 ]] ; then
    DISPLAY=:0.0 /usr/bin/notify-send --urgency=critical "LOW BATTERY!" "$BATTINFO"
fi
