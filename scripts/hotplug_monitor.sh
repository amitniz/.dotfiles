#! /usr/bin/bash
#Sets right perspective when monitor is plugged in
# Needed by udev rule /etc/udev/rules.d/95-hotplug-monitor
export DISPLAY=:0
export XAUTHORITY=/home/amit/.Xauthority

function connect(){
	/bin/xrandr >>/tmp/hotplug
	which xrandr >>/tmp/hotplug
	/home/amit/.screenlayout/open_mode.sh
}

function disconnect(){
	echo disconnect >>/tmp/hotplug
	/usr/bin/xrandr >> /tmp/hotplug
	which xrandr >>/tmp/hotplug
	/home/amit/.screenlayout/single.sh
}

echo called >> /tmp/testfile

/bin/xrandr | /bin/grep -iE "DP-[0-9]-[0-9] connected" &> /dev/null && connect || disconnect

