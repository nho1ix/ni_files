xb="$(xbacklight -get | cut -d '.' -f 1)"
dunstify -u normal -t 1500 -r 65 "$xb"
