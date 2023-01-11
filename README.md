[![yt-boat](https://raw.githubusercontent.com/flufficat/yt-boat/main/v2_hero_version.png)](https://github.com/flufficat/yt-boat#readme) 

[![GitHub issues](https://img.shields.io/github/issues-raw/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)](https://github.com/flufficat/yt-boat/issues?q=is%3Aopen+is%3Aissue)
[![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)](https://github.com/flufficat/yt-boat/issues?q=is%3Aissue+is%3Aclosed)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/flufficat/yt-boat?color=%23BA7BE5&label=Commits&style=for-the-badge)](https://github.com/flufficat/yt-boat/commits/main)

[![GitHub repo size](https://img.shields.io/github/repo-size/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)](https://github.com/flufficat/yt-boat)
[![GitHub tag](https://img.shields.io/github/v/tag/flufficat/yt-boat?color=BA7BE5&label=Latest&style=for-the-badge)](https://github.com/flufficat/yt-boat/tags)

## Features
- [x] Add and download videos from the queue on command line and in newsboat [#5](https://github.com/flufficat/yt-boat/issues/5)
- [x] Clear the queue on the command line and in newsboat [#5](https://github.com/flufficat/yt-boat/issues/5)
- [x] A "See the queue" feature on command line and in Newsboat [#3](https://github.com/flufficat/yt-boat/issues/3)
- [x] Update command [#6](https://github.com/flufficat/yt-boat/issues/6)
- [x] Simple and helpful terminal output [#17](https://github.com/flufficat/yt-boat/issues/17)
- [x] Add multiple urls at once
- [x] A KISS style project
- [x] Download from YouTube by default or from a frontend if you provide that url (or the feed does)

## Dependencies
The only dependencies should be:
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) - A youtube-dl fork with additional features and fixes.
- [Newsboat](https://github.com/newsboat/newsboat) (optional) - Newsboat is an RSS/Atom feed reader for the text console. It’s an actively maintained fork of Newsbeuter.

## Installation
- Download via zip on this page or run this command in your terminal:

  `git clone https://github.com/yt-boat/yt-boat.git`

- In a terminal run:

  `cd yt-boat && ./install.sh`
  
  - Once it is finished it should print:

  ` Finished setting up`
  
  To install it to newsboat as well also run:
  
  `./newboat_install.sh`
  
  or add the following to your newsboat config
  
```
macro a set browser "yt-boat --add $1" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro l set browser "yt-boat --add-alternative $1" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro d set browser "yt-boat --download" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro c set browser "yt-boat --clear" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro u set browser "yt-boat --update" ; open-in-browser ; set browser"exo-open --launch WebBrowser"
macro q set browser "yt-boat -qnb" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
macro h set browser "yt-boat -hnb" ; open-in-browser ; set browser "exo-open --launch WebBrowser"
```
  
## Usage options
- On the command line
	 Usage:
	yt-boat [option]
	options:
	- `--add -a`               Adds video ID to the queue
	- `--add-alternative -aa`  Adds the full, provided url to the queue (eg if you want to download from a different frontend)
	- `--download -d`          Downloads the videos in the queue
	- `--clear -c`             Clears the queue
	- `--queue -q`             Shows the urls in the queue
	- `--update -u`            Updates to the latest version of yt-boat
	- `--help -h`              Shows this help message

- In Newsboat
  	 - `<macro> a`             Adds current video's ID to queue
 	 - `<macro> l`             Adds the full, provided url to the queue (eg if you want to download from a different frontend)
	 - `<macro> d`             Downloads the urls in the queue
	 - `<macro> c`             Clears the urls in the queue
	 - `<macro> q`             Shows the urls in the queue
	 - `<macro> u`             Updates to the latest version of yt-boat
	 - `<macro> h`             Shows this help message

 ## Typical usage
 - On the command line
 	 - `yt-boat -a https://youtube.com/watch?v=xxxxxxxxxxx`
	 - `yt-boat -q` if you want to see videos you have added
	 - `yt-boat -d`
	 - or if you dont want to download the video
	 - `yt-boat -c`
- In Newsboat
	 - The macro key is set to `,` as default
	 - Navigate to the "article" as it is called in Newsboat which is a video from a feed
	 - Press `<macro> a` to add the current video to the queue
		 - eg. `,a`
	 - Do this for the videos you want to add to the queue
	 - Once you have added the videos you want to the queue, check the queue by pressing `<macro> q`
	 - Then press `<macro> d` and the videos will start downloading in the terminal window
	 - After they have downloaded the queue will automatically be cleared
	 - If you want to clear the queue at any point before downloading you need to:
	 	- Go to a feed 
	 	- Press `<macro> c`
	 
## Found a bug?
Submit an issue [here](https://github.com/flufficat/yt-boat/issues/new?assignees=flufficat&labels=bug&template=bug_report.md&title=%5BBUG%5D).

## Contributing
- Want to solve a simpler issue? Have a look at the [good first issue](https://github.com/flufficat/yt-boat/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22) label.
- Want to request a feauture? Submit a feature request [here](https://github.com/flufficat/yt-boat/issues/new?assignees=&labels=request&template=feature_request.md&title=%5BREQUEST%5D).
- Want to add a feature and you have the solution? Great! Create a pull request

## FAQ
- Q: X video wont download, why?
- A: yt-boat will work for any video site that yt-dlp can download, it does not download videos itself, if there is an issue with downloading videos submit a bug to https://github.com/yt-dlp/yt-dlp/blob/master/CONTRIBUTING.md#opening-an-issue. To see yt-dlp's FAQ go to https://github.com/yt-dlp/yt-dlp/wiki/FAQ
- Q: Adding a video to queue wont work?
- A: Make sure you have either selected a video in a feed by using arrow keys or are in a "article" (by pressing on enter from a feed)
- Q: After I update, I can run update again and it does another update, why?
- A: The update simply pulls the latest version of the yt-boat file from the releases and replaces the old one with it so it will continue to do that if you run update again.
- Q: I am getting Error: Queue file may not exist, see FAQ's
- A: For some reason the queue file may have been deleted, this program can't do that so it is probably for another reason. Just add a new queue file at $XDG_DATA_HOME/yt-boat/newsboat.queue by entering these commands:
	- `mkdir $XDG_DATA_HOME/yt-boat`
	- `touch $XDG_DATA_HOME/yt-boat/newsboat.queue`
- Q: What is the difference between `--add` and `--add-alternative`?
- A: `--add` extracts the video ID from the url, this is the code at the end of the url and adds it to the queue. This ensures that the video is downloaded from youtube because yt-dlp automatically downloads from youtube if only the ID is provided. `--add-alternative` simply adds the url you provide or is provided by the feed in newsboat meaning that you sould be able to downlaod from the frontend if yt-dlp accepts the frontend and the frontend allows downloading. To use `--add` you need to provide a url, not just an ID because it extracts the ID and if it doesn't find a url the extraction process will fail and the video wont be added. If you just want to add a video and you have the ID then use --add-alternative because this just passes the url you provide to the file.

## Licence
>  <p xmlns:cc="https://creativecommons.org/ns#" xmlns:dct="https://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/flufficat/yt-boat">yt-boat</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/flufficat/">flufficat</a> is marked with <a href="https://creativecommons.org/publicdomain/zero/1.0" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC0 1.0 Universal <img style="height:28px!important;margin-left:5px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:28px!important;margin-left:5px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/zero.svg"></a></p>
> This means that you can copy, modify, distribute and use the work
> even for commercial purposes, all without asking permission.
