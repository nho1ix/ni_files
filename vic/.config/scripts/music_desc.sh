#/bin/bash

while true; do
  mpc idle player
  status=$(mpc | awk 'FNR==2 {print $1}')
  title=$(mpc current)
  num_song=$(mpc | awk 'NR==2{printf $2}')
  case $status in 
    "[playing]")
      notify-send -u normal -t 1500 -r 63 "$title" "$num_song" ;;
    "[paused]")
      notify-send -u normal -t 1500 -r 63 "$title" "Paused" ;;
    *)
      notify-send -u normal -t 1500 -r 63 "$title" "Broken" ;;
  esac
done
