# widevine-L3-WEB-DL-Script
This is a script created to WEB-DL L3 Widevine Content.

Last Updated July 31, 2021.

Works well with .mpd files , for m3u8 please use n_m3u8 program (not included in this script).

# Things Needed

**Widevine Key Guesser** : <https://github.com/parnexcodes/widevine-l3-guesser>

- `pip install pyfiglet`
- `pip install rich`

# How to use ?

Load the extension (link above)

Open the Widevine Protected DRM Stream , the extension will automatically download **keys.txt** file.

For Websites like Amazon , the extension logs keys **2 times**.

So the extension will download 2 key files. (Can be more for some sites)

Place the **keys.txt** or **keys (1).txt** etc files in this repo's folder.

# Note

If you get more than 2 key files , there's two things you can do.

### 1 - Copy Keys from other files and paste it in keys.txt

### 2 - Edit some code in `webdl.py`

You will have to make another **function** named 

```
def getkeys2():
    with open("keys (2).txt", 'r') as f:
        file = f.readlines()

    length = len(file)

    keys = ""
    for i in range(0, length):
        key = file[i][33 : 65]
        kid = file[i][0 : 32]

        keys += f'--key {kid}:{key} '
        return keys
```

And then add another **except** block.

```
except:
    subprocess.run(f'{mp4decryptexe} --show-progress {getkeys2()} encrypted.m4a decrypted.m4a', shell=True)
    subprocess.run(f'{mp4decryptexe} --show-progress {getkeys2()} encrypted.mp4 decrypted.mp4', shell=True)
```

# Running the Script

Run `python webdl.py -h`

Check the instructions and enter the mpd url , output.

Example code : `py webdl.py -m "mpdurl" -o test`

-id and -s are optional (**id** to manually enter video and audio id from ytdl, **s** for subtitle url.)

![alt text](https://i.imgur.com/wc17Qjx.png "image")

# Report Issues

Open Issue on Github if you get any problem.
