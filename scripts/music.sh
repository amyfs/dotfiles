#!/bin/sh

player="rhythmbox"

metadata=$(dbus-send --print-reply --dest=org.mpris.MediaPlayer2.$player \
/org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get \
string:'org.mpris.MediaPlayer2.Player' string:'Metadata')

raw_artist=$(echo $metadata | egrep -oe "\"xesam:artist\" variant (array)? [^)]+ string \"([^\"]+)\"")
artist_cut=$(echo $raw_artist | cut -f2 -d"[" | cut -d" " -f3-)
artist=${artist_cut:1:-1}

raw_title=$(echo $metadata | egrep -oe "\"xesam:title\" variant string \"[^\"]+\"")
title=$(echo $raw_title | cut -f4 -d "\"")

raw_album=$(echo $metadata | egrep -oe "\"xesam:album\" variant string \"[^\"]+\"")
album=$(echo $raw_album | cut -f4 -d "\"")
if [ "$(echo $album | wc -m)" -gt "46" ]; then
    album=${album::45}."..."
fi
if [[ $artist ]]; then
    echo "${artist} - ${album} - ${title} "
fi

