#!/usr/bin/fish

# Colour variables
set -g g '\e[1;32m'
set -g y '\e[0;93m'
set -g r '\e[0m'

# Location of the queue and info files
set -g QF "$XDG_DATA_HOME/yt-boat/queue"
set -g IF "$XDG_DATA_HOME/yt-boat/info"

# Functions
function ERR_
	echo -e "$y yt-boat: line $LINENO: Error: $1:-"Unknown: Please submit an issue or contact me \
	as this is probably an error with the code itself"$r" 1>&2
	exit 1
end

function OK_
	echo -e "$g$1$r" 1>&2
	exit 0
end

function QUEUE_
	echo -e "There are $g$(wc -l $QF | cut -c 1)$r vidoes in the queue:" # Prints the number of url's in the queue, with the number in green
	echo -e $(cat $IF)
end

function HELP_
	echo -e "Usage:\nyt-boat [option]\noptions:\n\
-a --add [url]                  Adds video the full, provided url to the queue (eg if you want to download from a different frontend)\n\
-aa --add-alternative [url]     Adds url to the queue\n\
-d --download                   Downloads videos in the queue\n\
-c --clear                      Clears the queue\n\
-q --queue                      Shows the urls in the queue\n\
-u --update                     Updates to the latest version of yt-boat\n\
-h --help                       Shows this help message\n\
\n\
In newsboat\n\
<macro> a Adds current video's ID to queue\n\
<macro> l Adds the full, provided url to the queue (eg if you want to download from a different frontend)\n\
<macro> d Downloads the urls in the queue\n\
<macro> c Clears the urls in the queue\n\
<macro> q Shows the urls in the queue\n\
<macro> u Updates to the latest version of yt-boat\n\
<macro> h Shows this help message"
end

# Options
argparse -i --name=add 'a/add=+'  -- $argv
argparse -i --name=download 'd/download'  -- $argv
argparse -i --name=clear 'c/clear'  -- $argv
argparse -i --name=queue 'q/queue'  -- $argv
argparse -i --name=help 'h/help'  -- $argv
#argparse -i --name=hnb 'hnb'  -- $argv
#argparse -i --name=qnb 'qnb'  -- $argv
#argparse -i 'a/add=+' 'd/download' 'c/clear' 'q/queue' 'h/help' 'hnb' 'qnb'  -- $argv

if test -n "$_flag_a"
	for i in "$_flag_a"
		echo "$_flag_a" >> $QF # Adds the url to the queue file
		echo -n "$(yt-dlp --no-warnings --ignore-config --print title,duration_string $_flag_a) $g$_flag_a$r\n" >> $IF
	end
	OK_ "Videos added to queue" || ERR_
		
else if test -n "$_flag_d"
	if yt-dlp -a "$QF"
		: > $QF
		: > $IF
		OK_ "Videos downloaded"
	else
		ERR_ "Probably unsupported url"
	end
		
else if test -n "$_flag_c"
	if : > $QF && : > $IF
		OK_ "Queue cleared"
	else
		ERR_
	end

else if test -n "$_flag_q"
	if QUEUE_
		OK_
	else
		ERR_ "Queue file may not exist, see FAQ's"
	end

else if test -n "$_flag_h"
	if HELP_
		OK_
	else
		ERR_
	end

else if test -n "$_flag_hnb"
	clear
	if echo -e "$(HELP_)"
		echo -e "$g Press enter to go back to newsboat$r"
		read
		OK_
	else
		ERR_
	end

else if test -n "$_flag_qnb"
	clear
	if echo -e "$(QUEUE_)"
		echo -e "$g Press enter to go back to newsboat$r"
		read
		OK_
	else
		ERR_
	end

else
	echo -e "$y Not a valid option$r"
	HELP_
end
