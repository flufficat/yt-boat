#!/usr/bin/fish

# Colour variables
set -l green \e[1;32m
set -l red \e[1;31m
set -l yellow \e[0;93m
set -l reset \e[0m

# Functions
function ERR_
	echo -e "${yellow}yt-boat: line $LINENO: Error: ${1:-"Unknown: Please submit an issue or contact me \
	as this is probably an error with the code itself"}${reset}" 1>&2
	exit 1
end

function OK_
	echo -e "${green}${1}${reset}" 1>&2
	exit 0
end

function QUEUE_
	cat /home/leon/.local/share/yt-boat/newsboat.queue
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
while test count $argv -gt 0
	case "$argv" in
		-a|--add)
			shift
				for i in "$argv"
					echo "$i" | string match -r '(?:v=|\/embed\/|\/1\/|\/v\/)([^&\n?#]+)$' | cut -c 3- >> $XDG_DATA_HOME/yt-boat/newsboat.queue
				end
				OK_ "Videos added to queue" || ERR_
			;;
		
		-aa|--add-alternative)
			shift
				for i in $argv
					echo $i >> $XDG_DATA_HOME/yt-boat/newsboat.queue
				end
				OK_ "Video added to queue"
			;;


		-d|--download)
			if yt-dlp -a "$XDG_DATA_HOME/yt-boat/newsboat.queue"
				: > $XDG_DATA_HOME/yt-boat/newsboat.queue
				OK_ "Videos downloaded"
			else
				ERR_ "Probably unsupported url"
			end
			;;

		-c|--clear)
			if : > $XDG_DATA_HOME/yt-boat/newsboat.queue
				OK_ "Queue cleared"
			else
				ERR_
			end
			;;

		-q|--queue)
		shift
			if QUEUE_
				OK_
			else
				ERR_ "Queue file may not exist, see FAQ's"
			end
			;;

		-h|--help)
			if HELP_
				OK_
			else
				ERR_
			end
			;;

		#-u|--update)
			#if wget -o /tmp/log -P $XDG_DATA_HOME/yt-boat https://github.com/flufficat/yt-boat/releases/latest/download/yt-boat.tar.gz
				#tar -C $XDG_DATA_HOME/yt-boat -xf $XDG_DATA_HOME/yt-boat/yt-boat.tar.gz && \
				#chmod +x $XDG_DATA_HOME/yt-boat/yt-boat/yt-boat && \
				#sudo mv /usr/local/bin/yt-boat /usr/local/bin/yt-boat_old && \
				#sudo mv $XDG_DATA_HOME/yt-boat/yt-boat/yt-boat /usr/local/bin && \
				#sudo rm -r $XDG_DATA_HOME/yt-boat/yt-boat && \
				#sudo mv  $XDG_DATA_HOME/yt-boat/yt-boat.tar.gz $XDG_DATA_HOME/Trash/files && \
				#if sudo mv /usr/local/bin/yt-boat_old $XDG_DATA_HOME/Trash/files; then
					#OK_ "Updated Sucessfully"
				#else
					#ERR_
				#fi
			#else
				#ERR_ "Download failure"
			#fi
			#;;

        -hnb)
			clear
			if echo -e "$(HELP_)"
				echo -e "${green}Press enter to go back to newsboat${reset}"
				read
				OK_
			else
				ERR_
			end
			;;

		-qnb)
			clear
			if echo -e "$(QUEUE_)"
				echo -e "${green}Press enter to go back to newsboat${reset}"
				read
				OK_
			else
				ERR_
			end
			;;

		*)
			shift
			echo -e "${yellow}Not a valid option${reset}"
			HELP_
			ERR_
			;;
	esac
	shift
end
