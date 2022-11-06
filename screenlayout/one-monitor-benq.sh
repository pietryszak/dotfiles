#!/bin/sh
xrandr --output DisplayPort-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output HDMI-A-0 --off

	killall -q polybar
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

		polybar -q one-monitor -c "~/.config/polybar/cuts/config.ini" &
	
	killall -q picom && sleep 1
	picom --experimental-backends --config ~/.config/picom.conf
