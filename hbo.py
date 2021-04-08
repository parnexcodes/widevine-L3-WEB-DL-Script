import os
from typing import DefaultDict

print("\nWEBDL Script by parnex")
print("Required files : yt-dlp.exe, mkvmerge.exe, mp4decrypt.exe, aria2c.exe\n")

filename = input("Enter the output file name (no spaces) : ")
mpdurl = input("Enter MPD URL : ")

os.system(f'yt-dlp --external-downloader aria2c --allow-unplayable-formats --no-check-certificate -F "{mpdurl}"')

vid_id = input("\nEnter Video ID : ")
audio_id = input("Enter Audio ID : ")
os.system(f'yt-dlp --external-downloader aria2c --allow-unplayable-formats --no-check-certificate -f {vid_id}+{audio_id} "{mpdurl}"')

os.system("ren *.mp4 encrypted.mp4")
os.system("ren *.m4a encrypted.m4a")

kid = input("\nEnter kid : ")
key = input("Enter key : ")
kid1 = input("\nEnter kid1 : ")
key1 = input("Enter key1 : ")
kid2 = input("\nEnter kid2 : ")
key2 = input("Enter key2 : ")
kid3 = input("\nEnter kid3 : ")
key3 = input("Enter key3 : ")

print("\nDecrypting .....")
os.system(f'mp4decrypt.exe --key {kid}:{key} --key {kid1}:{key1} --key {kid2}:{key2} --key {kid3}:{key3} encrypted.m4a decrypted.m4a')
os.system(f'mp4decrypt.exe --key {kid}:{key} --key {kid1}:{key1} --key {kid2}:{key2} --key {kid3}:{key3} encrypted.mp4 decrypted.mp4')

print("Merging .....")
os.system(f'mkvmerge.exe -o {filename}.mkv decrypted.mp4 decrypted.m4a')
print("\nAll Done .....")

print("\nDo you want to delete the Encrypted Files : Press 1 for yes , 2 for no")
delete_choice = int(input("Enter Response : "))

if delete_choice == 1:
    os.remove("encrypted.m4a")
    os.remove("encrypted.mp4")
    os.remove("decrypted.m4a")
    os.remove("decrypted.mp4")
else:
    quit()
