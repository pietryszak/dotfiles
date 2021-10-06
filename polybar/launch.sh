# Terminate already running bar instances
#killall -q polybar
# If all your bars have ipc enabled, you can also use 
polybar-msg cmd quit

# Launch polybar
echo "---" | tee -a /tmp/polybar1.log
polybar polybar 2>&1 | tee -a /tmp/polybar1.log & disown
if type "xrandr"; then
for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload mainbar &
done

echo "Bars launched..."
else
  polybar --reload mainbar &
fi
