# f1-stream
Quickly open a Sky Sports F1 live video stream in VLC on MacOS.

Install Instructions:

1) [Download & Install VLC](https://www.videolan.org/vlc/)
2) Install [Streamlink](https://streamlink.github.io/install.html) - `brew install streamlink`
3) Download the F1 stream script - `curl -o ~/f1.sh https://raw.githubusercontent.com/andyburton/f1-stream/main/f1.sh && chmod +x ~/f1.sh`
4) [Open stream in browser window to authorise your IP](https://fbstreams.pm/live/stream/sky-sports-f1-sky-f1-fb-1/) - you shouldn't need to click/do anything!
5) Run the F1 stream script - `~/f1.sh`
6) If VLC opens with the live Sky Sports stream, happy days, you can close the browser window.

If this doesn't work and you get an error:

1) Click through the ads to get the stream running in the browser - best to have an adblocker!
2) Keep the page open once running - may be best to mute the stream in the browser.
3) Run `~/f1.sh` again.
4) If VLC opens with the live Sky Sports stream, happy days, you can close the browser window.

If that still doesn't work:

1) Open chrome dev tools in the stream window with it still playing (cmd+option+i).
2) Open network tab.
3) Find chunklist.m3u8 which should keep popping up - click "Fetch/XHR" to narrow down if you can't see it.
4) Right click on any of the chunklist.m3u8 rows, copy->URL.
5) Run `~/f1.sh` and paste the copied URL as the script argument e.g. `~/f1.sh https://serid-c1.ofemm.com/plyvivo/yo4i5i8a6anopujabemo/chunklist.m3u8`

If this still doesn't work, unfortunately this script isn't going to work for you without changes, so keep the browser window open and playing =/

Just run `rm ~/f1.sh` to cleanup and leave Streamlink and VLC installed.
