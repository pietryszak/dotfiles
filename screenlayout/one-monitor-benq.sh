#!/bin/sh
xrandr --output HDMI-2 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1-8 --off

	killall -q polybar
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

		polybar -q one-monitor -c "~/.config/polybar/cuts/config.ini" &
	
	killall -q picom && sleep 1
	picom &
