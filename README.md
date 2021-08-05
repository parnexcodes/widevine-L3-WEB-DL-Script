# widevine-L3-WEB-DL-Script
This is a script created to WEB-DL L3 Widevine Content.

Last Updated July 31, 2021.

# Use the branch below if you aren't able to modify the code according to your needs

<https://github.com/parnexcodes/widevine-L3-WEB-DL-Script/tree/method-2>

Works well with .mpd files , for m3u8 please use n_m3u8 program (not included in this script).

# Things Needed

**Widevine Key Guesser** : <https://github.com/parnexcodes/widevine-l3-guesser-modified>

- `pip install pyfiglet`
- `pip install rich`

# How to use ?

Load the extension (link above)

Open the Widevine Protected DRM Stream , click on extension then click on **Download**.

Place **keys.json** file inside this repo's folder.

# Note

You might need to update line **27** or **31** for some sites.
It's a simple logic , you can figure it out yourself. <https://gist.github.com/parnexcodes/74fef2e33a2171031000a97c371a1a65>

# Running the Script

Run `python webdl.py -h`

Example code : `py webdl.py -o test`

### If you want to enter Your Own MPD URL -
replace `mpd_url` key of **keys.json** file.

-id and -s are optional (**id** to manually enter video and audio id from ytdl, **s** for subtitle url.)

### Subtitle part is bugged right now.

![alt text](https://i.imgur.com/wc17Qjx.png "image")

# Report Issues

Open Issue on Github if you get any problem.
