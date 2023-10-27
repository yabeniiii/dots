#!/bin/sh

PLAYING=$(mpc | grep 'playing')
CURRENT_SONG=$(mpc current)

ICON=""

if [[ $PLAYING != "" ]]; then
  ICON=""
fi

sketchybar --set $NAME icon="$ICON" label="$CURRENT_SONG"
