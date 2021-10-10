import os

jsonfiles = []
files = [f for f in os.listdir('.') if os.path.isfile(f)]
for f in files:
    if f.endswith(".json"):
        jsonfiles.append(f)

print(jsonfiles)
for x in jsonfiles:
    os.system("python webdl.py -k -d -o " + x[:-5])
