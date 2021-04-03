@ echo off

echo WEB-DL Script by parnex , Works with Widevine layer 3 Decryption
echo.
echo You will need yt-dlp.exe , mp4decrypt.exe , ffmpeg.exe in the directory.
echo.
echo Thanks to u/Own_Western8448 for the original batch script.
echo.

set /p folder= Video Name to be Saved as (No spaces) : 

echo.

mkdir Downloads\%folder%

set /p stream=Input MPD URL : 

yt-dlp --external-downloader aria2c --allow-unplayable-formats -F "%stream%"
echo.

set /p video=Video Quality ID : 

echo.

set /p audio=Audio Quality ID : 

echo.

yt-dlp --external-downloader aria2c --allow-unplayable-formats -f %video%+%audio% "%stream%" -o "Downloads\%folder%\encrypted.%%(ext)s"

echo.

ren "Downloads\%folder%\*.mp4" encrypted.mp4

ren "Downloads\%folder%\*.m4a" encrypted.m4a

set /p key=Input key (1st 'bit'): 

echo.

set /p id=Input id (2nd 'bit'): 

echo.

echo Decrypting and Merging .........

mp4decrypt.exe --key %id%:%key% Downloads\%folder%\encrypted.m4a Downloads\%folder%\decrypted.m4a

mp4decrypt.exe --key %id%:%key% Downloads\%folder%\encrypted.mp4 Downloads\%folder%\decrypted.mp4

mkvmerge.exe -o Downloads\%folder%.mkv Downloads\%folder%\decrypted.mp4 Downloads\%folder%\decrypted.m4a

REM rmdir /Q /S "Downloads\%folder%\"
echo.
echo Completed .........
echo.
echo Thanks for using.

pause
