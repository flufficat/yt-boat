#!/bin/bash
# Colours
y="\e[0;33m"
r="\e[0m"
g="\e[0;32m"

# Making queue
if test ! -d $XDG_DATA_HOME/yt-boat && echo -e "${y}Making queue${r}" ; mkdir $XDG_DATA_HOME/yt-boat ; touch $XDG_DATA_HOME/yt-boat/queue ; touch $XDG_DATA_HOME/yt-boat/info

# Copying yt-boat to path
echo -e "${y}Copying yt-boat to path${r}"
cp yt-boat $HOME/.local/bin

# Finished
echo -e "${g}Finished setting up${r}"
