#!/bin/sh

# you need to install spotdl from your repo or from the github
command -v spotdl >/dev/null 2>&1 || { echo >&2 "I require foo but it's not installed.  Aborting."; exit 1; }


read -d $'\x04' name < "~/Music/Music-list.txt"
spotdl download $name
