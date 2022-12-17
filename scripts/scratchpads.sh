#!/usr/bin/env bash

#Kill all the scratchpads
ps aux | grep scratch:| grep -v grep | awk '{print $2}' | xargs kill
pkill nautilus
pkill gnome-calculato
#scratchpads
alacritty --class scratch:htop,scratch:htop -e htop
alacritty --class scratch:term,scratch:term 
nautilus
gnome-calculator
