# yt-boat
A video downloader for the Newsboat feed reader

![GitHub issues](https://img.shields.io/github/issues-raw/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)   ![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)  ![GitHub commit activity](https://img.shields.io/github/commit-activity/m/flufficat/yt-boat?color=%23BA7BE5&label=Commits&style=for-the-badge) ![GitHub repo size](https://img.shields.io/github/repo-size/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)
## Features
- [x] Add vidoes to queue on command line and in newsboat
- [x] Download queue on command line and in newsboat
- [x] Clear queue on command line and in newsboat
- [x] View help on the command line
- [ ] View help from Newsboat
- [ ] See the queue feature on command line and in Newsboat

![GitHub milestone](https://img.shields.io/github/milestones/progress/flufficat/yt-boat/1?style=for-the-badge) 
![GitHub milestone](https://img.shields.io/github/milestones/progress/flufficat/yt-boat/2?style=for-the-badge)

Once these features are complete and bugs fixed then I will release version 1.1.0
- [ ] Update option

![GitHub milestone](https://img.shields.io/github/milestones/progress/flufficat/yt-boat/3?style=for-the-badge)

Once these features are complete and bugs fixed then I will release version 2.0.0

## Dependencies
The only dependencies should be:
- `yt-dlp` A youtube-dl fork with additional features and fixes.
- `Newsboat` Newsboat is an RSS/Atom feed reader for the text console. It’s an actively maintained fork of Newsbeuter.

## Installation
- Download via zip on this page or run this command in your terminal:

  `git clone https://github.com/yt-boat/yt-boat.git`
- Extract the folder by going to the download location right clicking  and opening with your archive manager or run:

  `tar -xf yt-boat.tar.gz`
- in a terminal run:

  ` cd yt-boat && ./install.sh`
- once it is finished it should print:

  ` Finished setting up`

## Usage options
- On the command line
	 `yt-boat [option]`
	 - `--add or -a https://youtube.com/watch?v=GftvRRinYnq`
	 to add a video to the queue
	 - `--download or -d`
	 to download the videos in the queue
	 - `--clear or -c`
	 to clear the queue
	 - `--help or -h` to show the possible options
 - In Newsboat
 	 - `<macro> a` add current video url to queue
	 - `<macro> d` download the urls in the queue
	 - `<macro> c` clear the urls in the queue

 ## Typical usage
 - on the command line
 	 - `yt-boat -a https://youtube.com/watch?v=GftvRRinYnq`
	 - `yt-boat -d`
	 - or if you dont want to download the video
	 - `yt-boat -c`
- In Newsboat
	 - The macro key is set to `,` as default
	 - Navigate to the "article" as it is called in Newsboat which is a video from a feed
	 - Press `<macro> a` to add the current video to the queue
		 - eg. `,a`
	 - Do this for the videos you want to download
	 - Once you have added the videos you want to the queue
	press `<macro> d` and the videos will start downloading in the terminal window
	 - After they have downloaded the queue will automatically be cleared
	 - If at any point you want to clear the queue you need to be in a feed, then press `<macro> c`

## FAQ
- Q: X video wont download, why?
- A: yt-boat will work for any video site that yt-dlp can download, it does not download videos itself, if there is an issue with downloading videos submit a bug to https://github.com/yt-dlp/yt-dlp/blob/master/CONTRIBUTING.md#opening-an-issue. To see yt-dlp's FAQ go to https://github.com/ytdl-org/youtube
- Q: Adding a video to queue wont work?
- A: Make sure you have either selected a video in a feed by using arrow keys or are in a "article" (by pressing on enter from a feed)
- Q: The queue wont clear I am getting error `Cannot open query feeds in the browser!` in Newsboat?
- A: For some reason in Newsboat clearing will only work when you are in a feed or article, I dont know why at this moment so I can't fix it, if you know why please submit an issue titled `Fixing clearing in Newsboat`

## Licence
> <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">yt-boat</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/flufficat/flufficat" property="cc:attributionName" rel="cc:attributionURL">flufficat</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
