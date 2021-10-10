# widevine-L3-WEB-DL-Script
This is a script created to WEB-DL L3 Widevine Content.

Last Updated July 31, 2021.

## Use the branch below if you aren't able to modify the code according to your needs

<https://github.com/parnexcodes/widevine-L3-WEB-DL-Script/tree/method-2>

Works well with .mpd files , for m3u8 please use n_m3u8 program (not included in this script).

## How to use
### Requirements
* Python and pip
* Widevine Key Guesser
  * Download zip from https://github.com/parnexcodes/widevine-l3-guesser-modified
  * Activate developer mode in Chrome Extensions
  * Use "Load unpacked" to load the extracted extension folder
* pyfiglet
  * `pip install pyfiglet`
* rich
  * `pip install rich`

### Get the keys
Go to the protected stream you want to download. Activate the plugin (restart may be required after installing the extension) and download the extracted keys (keys.json).

### Decode the video
Download the widevine-L3-WEB-DL-Script from here (Code -> Download zip). Copy the downloaded keys.json file to the same folder.

Run the downloader with `python webdl.py -o <name_without_extension>` from the folder you downloaded and extracted the script from.

The script will look in the keys.json file, starting from the second element in the JSON array. If the script can't find any keys, either modify the script (line 27 and 31), or the keys.json. See <https://gist.github.com/parnexcodes/74fef2e33a2171031000a97c371a1a65> for examples for some common use cases.

If there are multiple `mpd_url`s in the file and it isn't working, try changing them around. You can also change the `mpd_url` for a custom one if you have one.

### Options
**-id** = Manually enter video and audio id from ytdl
 **-s** = _Optional_ - For subtitle url (**Subtitle part is bugged right now**)
 **-d** = _Optional_ Delete encoded AND JSON FILE upon completion
 **-k** = _Optional_ Use keyfile with the same name as specified output

## Report Issues

Open Issue on Github if you get any problem.
