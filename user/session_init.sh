#!/bin/bash

gnome-settings-deamon &
nautilus -n &
#dbus-launch docky &
python CuteLauncher/Main.py &
exit
