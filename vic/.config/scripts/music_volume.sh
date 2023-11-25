volume="$(mpc volume | tr -d ' ' | cut -f 2 -d ':')"
notify-send -u normal -r 65 "Music volume changed" "$volume"
