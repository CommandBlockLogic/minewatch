import os
from PIL import Image

dirname = os.path.dirname(__file__)

pngName = "1-sanity" # Change this.
pngPath = os.path.join(dirname, pngName + ".png")

def getColorCode(color):
    if (color[3] == 0):
        return 0
    color = color[:-1]
    try:
        return definedColors.index(color)
    except ValueError as err:
        definedColors.append(color)
        return definedColors.__len__() - 1
    finally:
        pass

def colorToString(color, i):
    return "# " + str(lastDefinedColorCode + i + 1) + " -> " + " ".join(map(str, color))

def colorToParticle(color, i):
    return "execute if score @s custom1 matches " + str(lastDefinedColorCode + i + 1) + " run particle minecraft:dust " + str(color[0] / 255) + " " + str(color[1] / 255) + " " + str(color[2] / 255) + " 0.26 ~ ~ ~ 0 0 0 0 1"

# spray:private/set_buffer
setBufferPath = os.path.join(dirname, "../functions/private/set_buffer.mcfunction")
paintID = pngName.split('-')[0]
command = "execute if score @s sprayType matches " + paintID + " run data modify storage spray: buffer set from storage spray: " + pngName
with open(setBufferPath, "r+") as f:
    lines = f.readlines()
    for i, line in enumerate(lines):
        if line.startswith("# Add new commands here..."):
            lines[i] = command + "\n" + line
    print(command)
    # f.seek(0)
    # for line in lines:
    #     f.write(line)

# spray:draw_one_pixel
drawOnePixelPath = os.path.join(dirname, "../functions/draw_one_pixel.mcfunction")
definedColors = [(0, 0, 0)]
outputValue = []
colorAppendPoint = 0
with open(drawOnePixelPath, "r+") as f:
    readingColors = False
    lines = f.readlines()
    for i, line in enumerate(lines):
        if readingColors:
            if (line.startswith('#')):
                [_, rgb] = line[2:].split(" -> ")
                definedColors.append(tuple(map(int, rgb.strip().split(" "))))
            else:
                colorAppendPoint = i
                readingColors = False
        if line.startswith("#> Available colors:"):
            readingColors = True
    img = Image.open(pngPath)
    px = img.load()
    (width, height) = img.size
    for y in range(0, height):
        if (y % 2 == 1):
            for x in range(0, width):
                color = px[x, y]
                code = getColorCode(color)
                outputValue.append(code)
        else:
            for x in range(width - 1, -1, -1):
                color = px[x, y]
                code = getColorCode(color)
                outputValue.append(code)
    outputList = str(width - 1) + 'b,' + str(height - 1) + 'b, ' + 'b,'.join(map(str, outputValue)) + 'b'
    outputLoadCommand = "data modify storage spray: {} merge value {" + pngName + ": [" + outputList + "]}"
    lastDefinedColorCode = colorAppendPoint - 9
    outputColors = definedColors[lastDefinedColorCode + 1:]
    lines[colorAppendPoint] = "\n".join(map(colorToString, outputColors, range(0, outputColors.__len__()))) + "\n" + lines[colorAppendPoint]
    particleAppendPoint = colorAppendPoint + lastDefinedColorCode - 1
    lines[particleAppendPoint] = lines[particleAppendPoint] + "\n".join(map(colorToParticle, outputColors, range(0, outputColors.__len__()))) + "\n"
    print(lines[colorAppendPoint])
    print(lines[particleAppendPoint])
    print(outputLoadCommand)
    # f.seek(0)
    # for line in lines:
    #     f.write(line)
