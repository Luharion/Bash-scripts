
#!/bin/bash

music_library="$HOME/Music"

fallback_image="~/.local/share/icons/Flatery-Indigo/apps/64/gnome-music.svg"

ffmpeg -y -i "$(mpc --format "$music_library"/%file% | head -n 1)" /tmp/mpd_cover.jpg > /dev/null 2>&1 && \

notify-send -i /tmp/mpd_cover.jpg "Now Playing:" "$(mpc current)" || \

notify-send -i $fallback_image "Now Playing:" "$(mpc current)"
