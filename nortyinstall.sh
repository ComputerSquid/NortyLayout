#!/usr/bin/bash

cp norty /usr/share/X11/xkb/symbols/norty
cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.bak
cp /usr/share/X11/xkb/rules/evdev.lst /usr/share/X11/xkb/rules/evdev.lst.bak
(awk '/! layout/ && !x {print; print "  norty           Norwegian-ANSI"; next;  x=1} 1'  /usr/share/X11/xkb/rules/evdev.lst.bak) >> /usr/share/X11/xkb/rules/evdev.lst
clear
echo "Please restart computer to see changes"
