# yt-boat
A video downloader for the Newsboat feed reader

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

## Usage
- On the command line
	 `yt-boat [option]`
	 - `--add or -a https://youtube.com/watch?v=GftvRRinYnq`
	 to add a video to the queue
	 - `--download or -d`
	 to download the videos in the queue
	 - `--clear or -c`
	 to clear the queue
 - In Newsboat
	 - The macro key is set to `,` as default
	 - Navigate to the "article" as it is called in Newsboat which is a video from a feed
	 - Press `<macro> a` to add the current video to the queue
		 - eg. `,a`
	 - Do this for the videos you want to download
	 - Once you have added the videos you want to the queue
	press `<macro d>` and the videos will start downloading in the terminal window
	 - After they have downloaded the queue will automatically be cleared
	 - If at any point you want to clear the queue you can press `<macro c>`

## FAQ
- yt-boat will work for any video site that yt-dlp can download, it does not download videos itself, if there is an issue with downloading videos submit a bug to https://github.com/yt-dlp/yt-dlp/blob/master/CONTRIBUTING.md#opening-an-issue. To see yt-dlp's FAQ go to https://github.com/ytdl-org/youtube~ ❯

## Licence
> <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">yt-boat</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/flufficat/flufficat" property="cc:attributionName" rel="cc:attributionURL">flufficat</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
