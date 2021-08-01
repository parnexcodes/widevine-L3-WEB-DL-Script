# widevine-L3-WEB-DL-Script
This is a script created to WEB-DL L3 Widevine Content.

Last Updated July 31, 2021.

Works well with .mpd files , for m3u8 please use n_m3u8 program (not included in this script).

# Things Needed

**Widevine Key Guesser** : <https://github.com/parnexcodes/widevine-l3-guesser-modified>

- `pip install pyfiglet`
- `pip install rich`

# How to use ?

Load the extension (link above)

Open the Widevine Protected DRM Stream , click on extension then click on **Download**.

Place **keys.json** file inside this repo's folder.

# Running the Script

Run `python webdl.py -h`

Check the instructions and enter the mpd url , output.

Example code : `py webdl.py -o test`

or

`py webdl.py -m "mpdurl" -o test` (In the new update , you don't have to enter the **mpd url** as it gets fetched through **extension**)

-id and -s are optional (**id** to manually enter video and audio id from ytdl, **s** for subtitle url.)

![alt text](https://i.imgur.com/wc17Qjx.png "image")

# Report Issues

Open Issue on Github if you get any problem.
