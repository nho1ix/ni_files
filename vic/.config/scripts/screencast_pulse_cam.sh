#!/bin/bash

# Screencast + Default Input recording script

if [[ -f ~/output.mkv ]]
        then 
           n=1
           while [[ -f $HOME/output_cam_$n.mkv ]]
           do 
                   n=$((n+1))
           done
           filename="$HOME/output_cam_$n.mkv"
        else
           filename="$HOME/output_cam.mkv"
fi

# The acutal ffmpeg command:

ffmpeg -y \
-f v4l2 -i /dev/video0 \
-f pulse -i alsa_input.usb-Blue_Microphones_Yeti_Stereo_Microphone_LT_190807130008F3990478_111000-00.analog-stereo \
-f pulse -i alsa_output.usb-Blue_Microphones_Yeti_Stereo_Microphone_LT_190807130008F3990478_111000-00.analog-stereo.monitor -ac 2 -filter_complex amerge $filename


# ffmpeg -y -r 60 \
# -f x11grab \
# -s $(xdpyinfo | rg dimensions | awk '{print $2;}') \
# -i :0.0 \
# -f alsa -i default \
# -c:v libx264 -c:a flac $filename
# #-c:v ffvhuff -r 60 -c:a flac $filename
# #-f pulse -ac 1 -ar 48000 -i default \
# alsa_input.usb-Blue_Microphones_Yeti_Stereo_Microphone_REV8-00.iec958-stereo \ (for digital input)
