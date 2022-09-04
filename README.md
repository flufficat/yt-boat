[![yt-boat](https://raw.githubusercontent.com/flufficat/yt-boat/main/banner.png)](https://github.com/flufficat/yt-boat#readme) 

[![GitHub issues](https://img.shields.io/github/issues-raw/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)](https://github.com/flufficat/yt-boat/issues?q=is%3Aopen+is%3Aissue)
[![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)](https://github.com/flufficat/yt-boat/issues?q=is%3Aissue+is%3Aclosed)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/flufficat/yt-boat?color=%23BA7BE5&label=Commits&style=for-the-badge)](https://github.com/flufficat/yt-boat/commits/main)

[![GitHub repo size](https://img.shields.io/github/repo-size/flufficat/yt-boat?color=%23BA7BE5&style=for-the-badge)](https://github.com/flufficat/yt-boat)
[![GitHub tag](https://img.shields.io/github/v/tag/flufficat/yt-boat?color=BA7BE5&label=Latest&style=for-the-badge)](https://github.com/flufficat/yt-boat/tags)

## Features
- [x] Add vidoes to queue on command line and in newsboat [#5](https://github.com/flufficat/yt-boat/issues/5)
- [x] Download queue on command line and in newsboat [#5](https://github.com/flufficat/yt-boat/issues/5)
- [x] Clear queue on command line and in newsboat [#5](https://github.com/flufficat/yt-boat/issues/5)
- [x] View help on the command line [#9](https://github.com/flufficat/yt-boat/issues/9)
- [x] View help from Newsboat [#10](https://github.com/flufficat/yt-boat/issues/10)
- [ ] See the queue feature on command line and in Newsboat [#3](https://github.com/flufficat/yt-boat/issues/3)

[![GitHub milestone](https://img.shields.io/github/milestones/progress/flufficat/yt-boat/1?style=for-the-badge)](https://github.com/flufficat/yt-boat/milestone/1)
[![GitHub milestone](https://img.shields.io/github/milestones/progress/flufficat/yt-boat/2?style=for-the-badge)](https://github.com/flufficat/yt-boat/milestone/2)

Once the above features are complete and bugs fixed then I will release version 1.1.0
- [ ] Update feature [#6](https://github.com/flufficat/yt-boat/issues/6)
- [ ] Complete redo of installer [#12](https://github.com/flufficat/yt-boat/issues/12)

[![GitHub milestone](https://img.shields.io/github/milestones/progress/flufficat/yt-boat/3?style=for-the-badge)](https://github.com/flufficat/yt-boat/milestone/3)

Once the above features are complete and bugs fixed then I will release version 2.0.0

## Dependencies
The only dependencies should be:
- `yt-dlp` A youtube-dl fork with additional features and fixes.
- `Newsboat` Newsboat is an RSS/Atom feed reader for the text console. It’s an actively maintained fork of Newsbeuter.

## Installation
- Download via zip on this page or run this command in your terminal:

  `git clone https://github.com/yt-boat/yt-boat.git`

- In a terminal run:

  ` cd yt-boat && ./install.sh`
- Once it is finished it should print:

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
 - On the command line
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
	 
## Found a bug?
Submit an issue [here](https://github.com/flufficat/yt-boat/issues/new?assignees=flufficat&labels=bug&template=bug_report.md&title=%5BBUG%5D).

## Contributing
- Want to solve a simpler issue? Have a look at the [good first issue](https://github.com/flufficat/yt-boat/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22) label.
- Want to request a feauture? Submit an feature request [here](https://github.com/flufficat/yt-boat/issues/new?assignees=&labels=request&template=feature_request.md&title=%5BREQUEST%5D).
- Want to add a feature and you have the solution? Great! Create a pull request

## FAQ
- Q: X video wont download, why?
- A: yt-boat will work for any video site that yt-dlp can download, it does not download videos itself, if there is an issue with downloading videos submit a bug to https://github.com/yt-dlp/yt-dlp/blob/master/CONTRIBUTING.md#opening-an-issue. To see yt-dlp's FAQ go to https://github.com/ytdl-org/youtube
- Q: Adding a video to queue wont work?
- A: Make sure you have either selected a video in a feed by using arrow keys or are in a "article" (by pressing on enter from a feed)
- Q: The queue wont clear I am getting error `Cannot open query feeds in the browser!` in Newsboat?
- A: For some reason in Newsboat clearing will only work when you are in a feed or article, I dont know why at this moment so I can't fix it, if you know why please submit an issue titled `Fixing clearing in Newsboat`

## Licence
>  <p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/flufficat/yt-boat">yt-boat</a> by <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://github.com/flufficat/">flufficat</a> is marked with <a href="http://creativecommons.org/publicdomain/zero/1.0" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC0 1.0 Universal <img style="height:28px!important;margin-left:5px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:28px!important;margin-left:5px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/zero.svg"></a></p>
