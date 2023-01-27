#!/bin/bash

FRONT_APP_SCRIPT='sketchybar --set $NAME label="$INFO"'

sketchybar --add       event        window_focus                  \
           --add       event        windows_on_spaces             \
                                                                 \
           --add       item         front_app left                \
           --set       front_app    script="$FRONT_APP_SCRIPT"    \
                                    icon.drawing=off              \
                                    padding_left=0                \
                                    label.color=$WHITE            \
                                    label.font="$FONT:Black:16.0" \
                                    associated_display=active     \
           --subscribe front_app    front_app_switched
