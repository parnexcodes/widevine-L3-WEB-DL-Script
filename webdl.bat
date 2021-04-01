@ echo off

echo WEB-DL Script by parnex , Works with Widevine layer 3 Decryption
echo.
echo You will need yt-dlp.exe , mp4decrypt.exe , ffmpeg.exe in the directory.
echo.
echo Thanks to u/Own_Western8448 for the original batch script.
echo.

set /p path=Input directory containing all the script files : 

echo.

set /p folder= Video Name to be Saved as (No spaces) : 

echo.

mkdir %path%\Downloads\%folder%

set /p stream=Input MPD URL : 

yt-dlp --external-downloader aria2c --allow-unplayable-formats -F "%stream%"

echo.

set /p video=Video Quality ID : 

echo.

set /p audio=Audio Quality ID : 

echo.

yt-dlp --external-downloader aria2c --allow-unplayable-formats -f %video%+%audio% "%stream%" -o "%path%\Downloads\%folder%\encrypted.%%(ext)s"

echo.

ren "%path%\Downloads\%folder%\*.mp4" encrypted.mp4

ren "%path%\Downloads\%folder%\*.m4a" encrypted.m4a

set /p key=Input key (1st 'bit'): 

echo.

set /p id=Input id (2nd 'bit'): 

echo.

echo Decrypting and Merging .........

mp4decrypt.exe --key %id%:%key% %path%\Downloads\%folder%\encrypted.m4a %path%\Downloads\%folder%\decrypted.m4a

mp4decrypt.exe --key %id%:%key% %path%\Downloads\%folder%\encrypted.mp4 %path%\Downloads\%folder%\decrypted.mp4

ffmpeg -hide_banner -i %path%\Downloads\%folder%\decrypted.mp4 -i %path%\Downloads\%folder%\decrypted.m4a -acodec copy -vcodec copy %path%\Downloads\%folder%.mp4

echo.
echo Completed , Use Mediainfo or Play Video to check if the video is still encrypted.
echo.
echo If it's still encrypted , Delete decrypted.mp4 + decrypted.m4a and run these commands below.
echo.
echo Replace id with kid and key with key also Replace path.
echo.
echo mp4decrypt.exe --key id:key path\encrypted.m4a path\decrypted.m4a
echo.
echo mp4decrypt.exe --key id:key path\encrypted.mp4 path\decrypted.mp4
echo.
echo Check Again and if it works then use this command.
echo.
echo Replace path.
echo.
echo ffmpeg -hide_banner -i path\decrypted.mp4 -i path\decrypted.m4a -acodec copy -vcodec copy path\filename.mp4
echo.
echo Thanks for using.

pause
