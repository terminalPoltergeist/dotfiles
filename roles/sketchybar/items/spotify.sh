#!/bin/bash

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"
FONT="Comic Mono"

spotify_title=(
  icon.drawing=off
  padding_left=0
  padding_right=0
  label.drawing=on
  label.font="$FONT:Bold:15.0"
  label.color="$GREY"
  script="$PLUGIN_DIR/spotify.sh"
)

spotify_play=(
  icon.font="Hack Nerd Font:Bold:15.0" \
  icon=󰐌 \
  background.height=10 \
  background.corner_radius=20 \
  width=10 \
  align=center \
  background.color=$BLACK              \
  background.border_color=$WHITE       \
  background.border_width=0            \
  background.drawing=on                \
  icon.color=$WHITE                    \
  updates=on                           \
  label.drawing=off                    \
  script="$PLUGIN_DIR/spotify.sh"      \
)

spotify_artist=(
  icon.drawing=off
  padding_left=0
  padding_right=0
  label.drawing=on
  label.font="$FONT:Bold:15.0"
  label.color="$GREY"
)

spotify_state=(
  icon.drawing=on
  icon.font="$FONT:Light Italic:10.0"
  icon.width=35
  icon="00:00"
  label.drawing=on
  label.font="$FONT:Light Italic:10.0"
  label.width=35
  label="00:00"
  padding_left=0
  padding_right=0
  y_offset=-15
  width=0
  script="$PLUGIN_DIR/spotify.sh"
  update_freq=1
  updates=when_shown
)

sketchybar --add event spotify_change $SPOTIFY_EVENT             \
           --add item spotify.title center         \
           --set spotify.title "${spotify_title[@]}" \
           --add item spotify.artist center \
           --set spotify.artist "${spotify_artist[@]}" \
           --subscribe spotify.title spotify_change \
           --add item spotify.play center \
           --set spotify.play "${spotify_play[@]}" \
           --subscribe spotify.play mouse.clicked spotify_change \
           # --set spotify.state "${spotify_state[@]}"             \
           # --subscribe spotify.state spotify_change               \
           #                                                       \
           # --add item spotify.artist popup.spotify.anchor        \
           # --set spotify.artist "${spotify_artist[@]}"           \
           #                                                       \
           # --add item spotify.album popup.spotify.anchor         \
           # --set spotify.album "${spotify_album[@]}"             \
           #                                                       \
           # --add slider spotify.state popup.spotify.anchor       \
           #                                                       \
           # --add item spotify.shuffle popup.spotify.anchor       \
           # --set spotify.shuffle "${spotify_shuffle[@]}"         \
           # --subscribe spotify.shuffle mouse.clicked             \
           #                                                       \
           # --add item spotify.back popup.spotify.anchor          \
           # --set spotify.back "${spotify_back[@]}"               \
           # --subscribe spotify.back mouse.clicked                \
           #                                                       \
           # --add item spotify.play popup.spotify.anchor          \
           # --set spotify.play "${spotify_play[@]}"               \
           # --subscribe spotify.play mouse.clicked spotify_change \
           #                                                       \
           # --add item spotify.next popup.spotify.anchor          \
           # --set spotify.next "${spotify_next[@]}"               \
           # --subscribe spotify.next mouse.clicked                \
           #                                                       \
           # --add item spotify.repeat popup.spotify.anchor        \
           # --set spotify.repeat "${spotify_repeat[@]}"           \
           # --subscribe spotify.repeat  mouse.clicked             \
           #                                                       \
           # --add item spotify.spacer popup.spotify.anchor        \
           # --set spotify.spacer width=5                          \
           #                                                       \
           # --add bracket spotify.controls spotify.shuffle        \
           #                                spotify.back           \
           #                                spotify.play           \
           #                                spotify.next           \
           #                                spotify.repeat         \
           # --set spotify.controls "${spotify_controls[@]}"       \
