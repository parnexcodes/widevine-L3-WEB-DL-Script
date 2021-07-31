# widevine-L3-WEB-DL-Script
This is a script created to WEB-DL L3 Widevine Content.

Last Updated July 31, 2021.

Works well with .mpd files , for m3u8 please use n_m3u8 program (not included in this script).

# Things Needed

**Widevine Key Guesser** : <https://github.com/parnexcodes/WVGuesser>

- `pip install pyfiglet`
- `pip install rich`

# How to use ?

Extract Widevine Key Guesser files in the same directory of this repo.

Run **Widevine Key Guesser** (instructions on it's repo.)

Run `python webdl.py -h` once you get the **keys.txt** from Widevine Key Guesser.

Check the instructions and enter the mpd url , output.

Example code : `py webdl.py -m "mprurl" -o test`

-id and -s are optional (**id** to manually enter video and audio id from ytdl, **s** for subtitle url.)

![alt text](https://i.imgur.com/wc17Qjx.png "image")

# Report Issues

Open Issue on Github if you get any problem.
