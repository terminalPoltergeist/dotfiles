#!/bin/bash

sketchybar -m --add item battery left \
              --set battery update_freq=3 \
              --set battery script="$PLUGIN_DIR/power.sh" \
              --set battery icon=􀛪
