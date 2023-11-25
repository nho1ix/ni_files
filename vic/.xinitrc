#!/bin/sh
# Export Display for dunst & Mouse Hider
systemctl --user import-environment DISPLAY &
export XDG_SESSION_TYPE=x11 &
unclutter idle 3 &

# Picom
picom &

# Autostart
sh ~/.config/autostart/autostart.sh &

# XRDB
xrdb ~/.Xresources &

# Notifications
wired &

# 4k@100 + 1080p@60 monitors
#sleep 0.5 && xrandr --output DisplayPort-0 --mode 3840x2160_102 --output HDMI-A-0 --mode 1920x1080 --rate 60 --pos -200x0 --rotate left --left-of DisplayPort-0 &
# sleep 0.5 && xrandr --output DisplayPort-0 --primary --mode 3840x2160_100 --scale 1x1 --pos 1512x440 --auto --rotate normal --output HDMI-A-0 --mode 1920x1080_74  --rotate left --scale 1.4x1.4

# Regular Mon Setup
# sleep 0.5 && xrandr --output DisplayPort-0 --primary --mode 3840x2160_100 --scale 1x1 --pos 1080x0 --rotate normal --output HDMI-A-0 --mode 1920x1080_74  --rotate left --scale 1x1

# Video Editing Workflow monitor setup
# sleep 0.5 && xrandr --output DisplayPort-0 --primary --mode 1920x1080_165 --scale 1x1 --filter bilinear --auto --rotate normal --right-of HDMI-A-0 --output HDMI-A-0 --mode 1920x1080_74 --pos 0x20 --rotate normal --scale 1x1

# 4k@119hz monitor
# sleep 0.5 && xrandr --output HDMI-A-0 --off --output DisplayPort-0 --mode 3840x2160_119.6 &

# 4k@102 + iPad weylus
# sleep 0.5 && xrandr --output DisplayPort-0 --mode 3840x2160_102 --right-of DVI-D-0 --output DVI-D-0 --mode 1480x1080_30 --scale 1x1

# 4k@165hz marc comp
# sleep 0.5 && xrandr --output DisplayPort-0 --primary --mode 3840x2160_165 --scale 1x1 --rotate normal --right-of HDMI-A-0 --output HDMI-A-0 --mode 1920x1080_74 --rotate normal --scale 1x1

# 4k@165hz my comp marc parts
# sleep 0.5 && xrandr --output DisplayPort-1-3 --primary --mode 1920x1080_165 --scale 1x1 --rotate normal --right-of HDMI-A-0 --output HDMI-A-0 --mode 1920x1080_74 --rotate normal --scale 1x1 && xrandr --setprovideroffloadsink 1 0
# sleep 0.5 && xrandr --output DisplayPort-0 --primary --mode 3840x2160_165 --pos 1920x0 --rotate normal --output HDMI-A-0 --mode 1920x1080_74 --pos 0x796 --rotate normal
# sleep 0.5 && xrandr --output DisplayPort-0 --primary --mode 3840x2160_165 --pos 3840x0 --rotate normal --output HDMI-A-0 --mode 1920x1080_74 --pos 0x296 --scale 2x2 --rotate normal
sleep 0.5 && xrandr --output DisplayPort-0 --primary --mode 3840x2160_165 --pos 1080x0 --rotate normal --output HDMI-A-0 --mode 1920x1080_74 --pos 0x156 --scale 1x1 --rotate left

# Wallpaper Setter
sleep 0.01 && feh --bg-fill ~/.config/wall/_DSF3129e.JPG --bg-fill ~/.config/wall/_DSF2051.JPG &

exec dwm
