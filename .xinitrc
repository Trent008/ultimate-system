xrdb .Xresources
# neccessary for dwm shell commands to work for all users
cd ~
# display date and time
while true; do
  xsetroot -name "Volume: $(awk -F"[/]" '/front-left:/ { print $2 }' <(pactl get-sink-volume @DEFAULT_SINK@))\
    󰁹 $(cat /sys/class/power_supply/BAT0/capacity)%\
     $( date +"%a %b %d   %I:%M %P" )"
  sleep 1
done &

# start dwm
exec dwm
