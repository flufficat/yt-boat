#!/bin/bash
# Colours
y="\e[0;33m"
r="\e[0m"
g="\e[0;32m"

# Making queue
echo -e "${y}Removing queue${r}"
rm -rf $XDG_DATA_HOME/yt-boat

# Removing yt-boat from path
echo -e "${y}Copying yt-boat to path (requires root)${r}"
sudo rm -f /usr/local/bin/yt-boat && echo -e "${g}Finished removing${r}"
