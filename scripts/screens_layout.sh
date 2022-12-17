#!/usr/bin/env bash
state=$(cat /proc/acpi/button/lid/LID/state | grep open &&echo 1) #check the state of the lid

if [[ $state ]];then
	$HOME/.screenlayout/open_mode.sh
else
	$HOME/.screenlayout/close_mode.sh
fi
