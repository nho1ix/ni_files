volume="$(playerctl -p spotify volume | awk '{printf "%2.0f%%", $1*100}')"
notify-send -u normal -r 65 "Spotify volume changed" "$volume"
