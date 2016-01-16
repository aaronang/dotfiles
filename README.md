# Dotfiles

## Fix: HP ZBook 14 Mute Button

In `/lib/udev/hwdb.d/60-keyboard.hwdb` change `fn_esc` to `f20`, such that something similar as the example below is obtained. Then run `sudo udevadm hwdb -u` and reboot the system. 

```
###########################################################
# Hewlett Packard
###########################################################

evdev:atkbd:dmi:bvn*:bvr*:bd*:svnHewlett-Packard*:pn*:pvr*
 KEYBOARD_KEY_81=f20
```

Source: https://bugs.launchpad.net/ubuntu/+source/systemd/+bug/1334968
