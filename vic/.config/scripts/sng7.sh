#!bin/sh

# /lib/systemd/system-sleep/sng7.sh

PATH=/sbin:/usr/sbin:/bin:/usr/bin

case "$1" in
  post)
  xrandr --output DisplayPort-1 --mode 3840x2160_119
esac

exit 0
