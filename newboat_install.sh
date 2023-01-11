#!/bin/bash
# Colours
y="\e[0;33m"
r="\e[0m"
g="\e[0;32m"

# Add macro commands to newsboat config
touch $XDG_CONFIG_HOME/newsboat/yt-boat
echo -e "${y}Adding macro commands to newsboat config${r}"
echo -e '# yt-boat macros:\n
macro a set browser "yt-boat --add $1" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro l set browser "yt-boat --add-alternative $1" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro d set browser "yt-boat --download" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro c set browser "yt-boat --clear" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro u set browser "yt-boat --update" ; open-in-browser ; set browser"exo-open --launch WebBrowser"
macro q set browser "yt-boat -qnb" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro h set browser "yt-boat -hnb" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
' >> $XDG_CONFIG_HOME/newsboat/yt-boat
echo -e "include ~/.config/newsboat/yt-boat" >> $XDG_CONFIG_HOME/newsboat/config
