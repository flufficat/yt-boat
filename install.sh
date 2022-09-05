#!/bin/bash
# Colours
y="\e[0;33m"
r="\e[0m"
g="\e[0;32m"

# Making queue
echo -e "${y}Making queue${r}"
mkdir $XDG_DATA_HOME/yt-boat-dl
touch $XDG_DATA_HOME/yt-boat-dl/newsboat.queue

# Copying yt-boat to path
echo -e "${y}Copying yt-boat to path (requires root)${r}"
sudo cp yt-boat /usr/local/bin

# Adding macro commands to newsboat config
echo -e "${y}Adding macro commands to newsboat config${r}"
echo -e '\n# yt-boat macros:\n\
macro a set browser "yt-boat --add" ; open-in-browser ; set browser "exo-open --launch WebBrowser\n\
macro d set browser "yt-boat --download" ; open-in-browser ; set browser "exo-open --launch WebBrowser"\n\
macro c set browser "yt-boat --clear" ; open-in-browser ; set browser "exo-open --launch WebBrowser""\n\
macro q set browser "yt-boat -nbq" ; open-in-browser ; set browser "exo-open --launch WebBrowser"\n\
macro q set browser "yt-boat -nbq" ; open-in-browser ; set browser "exo-open --launch WebBrowser"\
' >> $XDG_CONFIG_HOME/newsboat/config

# Finished
echo -e "${g}Finished setting up${r}"
