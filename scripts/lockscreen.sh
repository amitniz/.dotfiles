#!/bin/bash

revert(){
	rm  /tmp/*screenshot.png
	xset dpms 0 0 0
}
trap revert HUP INT TERM
xset +dpms dpms 0 0 5
scrot -d 1 /tmp/lock_screenshot.png
convert -blur 0x8 /tmp/lock_screenshot.png /tmp/blur_screenshot.png
convert -composite /tmp/blur_screenshot.png ~/Pictures/evil_rick.png -gravity South -geometry -20x1200 /tmp/final_screenshot.png
i3lock -i /tmp/final_screenshot.png
revert
