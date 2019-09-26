import os
from PIL import Image

dirname = os.path.dirname(__file__)

pngname = "1-sanity" # Change this.
pngpath = os.path.join(dirname, pngname + ".png")

setBufferPath = os.path.join(dirname, "../functions/private/set_buffer.mcfunction")

# spray:private/set_buffer
paintID = pngname.split('-')[0]
command = "execute if score @s sprayType matches " + paintID + " run data modify storage spray: buffer set from storage spray: " + pngname
with open(setBufferPath, "r+") as f:
    lines = f.readlines()
    for i, line in enumerate(lines):
        if line.startswith("# Add new commands here..."):
            lines[i] = command + "\n" + line
    f.seek(0)
    for line in lines:
        f.write(line)

# spray:private/set_buffer
paintID = pngname.split('-')[0]
command = "execute if score @s sprayType matches " + paintID + " run data modify storage spray: buffer set from storage spray: " + pngname
with open(setBufferPath, "r+") as f:
    lines = f.readlines()
    for i, line in enumerate(lines):
        if line.startswith("# Add new commands here..."):
            lines[i] = command + "\n" + line
    f.seek(0)
    for line in lines:
        f.write(line)


img = Image.open(pngpath)
px = img.load()

(width, height) = img.size

print(px[5,5])
