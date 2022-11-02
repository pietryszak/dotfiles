#!/usr/bin/env bash
	killall -q polybar
	while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

		polybar -q first -c "~/.config/polybar/cuts/config.ini" &
		polybar -q second -c "~/.config/polybar/cuts/config.ini" &

	killall -q picom
	picom &
