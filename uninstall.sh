#!/bin/bash
# Colours
y="\e[0;33m"
r="\e[0m"
g="\e[0;32m"

# Testing if queue exists and removing it
test -d $XDG_DATA_HOME/yt-boat && echo -e "${y}Removing queue${r}" ; rm -rf $XDG_DATA_HOME/yt-boat

# Testing if yt-boat's newsboat config exists and removing it
test -e $XDG_CONFIG_HOME/newsboat/yt-boat && echo -e "${y}Removing yt-boat's newsboat config${r}" ; rm -f $XDG_CONFIG_HOME/newsboat/yt-boat ; echo "Please also remove the line including yt-boat's newsboat config from within the newsboat config to prevent issues. It should be\"include ~/.config/newsboat/yt-boat\""

# Testing if yt-boat exists in path and removing it depending on where it is
test -e /usr/local/bin/yt-boat && echo -e "${y}Removing yt-boat from path (requires root)${r}" ; sudo rm -f /usr/local/bin/yt-boat 
test -e $HOME/.local/bin/yt-boat && echo -e "${y}Removing yt-boat from path${r}" ; rm -f $HOME/.local/bin/yt-boat 

echo -e "${g}Finished removing${r}"
