import os
import math
from PIL import Image

class SPGColor:
    def __init__(self, rgba=None, index=None):
        self.empty = False
        if rgba != None:
            self.color = rgba[0:3]
            if rgba[3] < 255:
                self.empty = True
        elif index != None:
            self.color = ((index&0xFF0000)>>16, (index&0x00FF00)>>8, index&0x0000FF)

    def distance(self, other):
        # https://blog.csdn.net/qq_16564093/article/details/80698479
        rmean = (self.color[0]+other.color[0])/2
        R = self.color[0] - other.color[0]
        G = self.color[1] - other.color[1]
        B = self.color[2] - other.color[2]
        return math.sqrt((2+rmean/256)*R*R+4*G*G+(2+(255-rmean)/256)*B*B)



    def __eq__(self, other):
        if self.empty == True and other.empty == True:
            return True
        elif self.empty == True or other.empty == True:
            return False
        else:
            return self.color == other.color
    def __repr__(self):
        return '({0[0]},{0[1]},{0[2]},{1})'.format(self.color, self.empty)



path_image_dir = 'image'
path_one_pixel_dir = '../functions/private/colors'
path_image_data = '../functions/private/image_data.mcfunction'
path_set_buffer = '../functions/private/copy_buffer.mcfunction'




dirname = os.path.dirname(__file__)
path_image_dir = os.path.join(dirname, path_image_dir)
path_one_pixel_dir = os.path.join(dirname, path_one_pixel_dir)
path_image_data = os.path.join(dirname, path_image_data)
path_set_buffer = os.path.join(dirname, path_set_buffer)



# 注册颜色index
color_index = [
    0x000000, 0x000033, 0x000066, 0x000099, 0x0000cc, 0x0000ff, 
    0x003300, 0x003333, 0x003366, 0x003399, 0x0033cc, 0x0033ff, 
    0x006600, 0x006633, 0x006666, 0x006699, 0x0066cc, 0x0066ff, 
    0x009900, 0x009933, 0x009966, 0x009999, 0x0099cc, 0x0099ff, 
    0x00cc00, 0x00cc33, 0x00cc66, 0x00cc99, 0x00cccc, 0x00ccff, 
    0x00ff00, 0x00ff33, 0x00ff66, 0x00ff99, 0x00ffcc, 0x00ffff, 
    0x330000, 0x330033, 0x330066, 0x330099, 0x3300cc, 0x3300ff, 
    0x333300, 0x333333, 0x333366, 0x333399, 0x3333cc, 0x3333ff, 
    0x336600, 0x336633, 0x336666, 0x336699, 0x3366cc, 0x3366ff, 
    0x339900, 0x339933, 0x339966, 0x339999, 0x3399cc, 0x3399ff, 
    0x33cc00, 0x33cc33, 0x33cc66, 0x33cc99, 0x33cccc, 0x33ccff, 
    0x33ff00, 0x33ff33, 0x33ff66, 0x33ff99, 0x33ffcc, 0x33ffff, 
    0x660000, 0x660033, 0x660066, 0x660099, 0x6600cc, 0x6600ff, 
    0x663300, 0x663333, 0x663366, 0x663399, 0x6633cc, 0x6633ff, 
    0x666600, 0x666633, 0x666666, 0x666699, 0x6666cc, 0x6666ff, 
    0x669900, 0x669933, 0x669966, 0x669999, 0x6699cc, 0x6699ff, 
    0x66cc00, 0x66cc33, 0x66cc66, 0x66cc99, 0x66cccc, 0x66ccff, 
    0x66ff00, 0x66ff33, 0x66ff66, 0x66ff99, 0x66ffcc, 0x66ffff, 
    0x990000, 0x990033, 0x990066, 0x990099, 0x9900cc, 0x9900ff, 
    0x993300, 0x993333, 0x993366, 0x993399, 0x9933cc, 0x9933ff, 
    0x996600, 0x996633, 0x996666, 0x996699, 0x9966cc, 0x9966ff, 
    0x999900, 0x999933, 0x999966, 0x999999, 0x9999cc, 0x9999ff, 
    0x99cc00, 0x99cc33, 0x99cc66, 0x99cc99, 0x99cccc, 0x99ccff, 
    0x99ff00, 0x99ff33, 0x99ff66, 0x99ff99, 0x99ffcc, 0x99ffff, 
    0xcc0000, 0xcc0033, 0xcc0066, 0xcc0099, 0xcc00cc, 0xcc00ff, 
    0xcc3300, 0xcc3333, 0xcc3366, 0xcc3399, 0xcc33cc, 0xcc33ff, 
    0xcc6600, 0xcc6633, 0xcc6666, 0xcc6699, 0xcc66cc, 0xcc66ff, 
    0xcc9900, 0xcc9933, 0xcc9966, 0xcc9999, 0xcc99cc, 0xcc99ff, 
    0xcccc00, 0xcccc33, 0xcccc66, 0xcccc99, 0xcccccc, 0xccccff, 
    0xccff00, 0xccff33, 0xccff66, 0xccff99, 0xccffcc, 0xccffff, 
    0xff0000, 0xff0033, 0xff0066, 0xff0099, 0xff00cc, 0xff00ff, 
    0xff3300, 0xff3333, 0xff3366, 0xff3399, 0xff33cc, 0xff33ff, 
    0xff6600, 0xff6633, 0xff6666, 0xff6699, 0xff66cc, 0xff66ff, 
    0xff9900, 0xff9933, 0xff9966, 0xff9999, 0xff99cc, 0xff99ff, 
    0xffcc00, 0xffcc33, 0xffcc66, 0xffcc99, 0xffcccc, 0xffccff, 
    0xffff00, 0xffff33, 0xffff66, 0xffff99, 0xffffcc, 0xffffff
    ]
color_list = [{'color':SPGColor(rgba=(0, 0, 0, 0)), 'count':0, 'index':0}]
index = 1
for color in color_index:
    color_list.append({'color':SPGColor(index=color), 'count':0, 'index':index})
    index += 1


# 遍历图片、记录颜色数量
image_list = []
for pic in os.listdir(path_image_dir):
    # 打开图片
    im = Image.open(os.path.join(path_image_dir, pic))
    # 按顺序遍历图片
    data = [im.width-1, im.height-1]
    for y in range(im.height):
        # x方向正反判定
        x_list = list(range(im.width))
        if y % 2 == 1:
            x_list.reverse()
        for x in x_list:
            pixel = SPGColor(rgba=im.getpixel((x, y)))
            if pixel.empty == True:
                data.append(0)
            else:
                # 查找最近颜色
                nearest = color_list[0]
                for color in color_list:
                    if color['color'].distance(pixel) < nearest['color'].distance(pixel):
                        nearest = color
                # 给这个颜色数量加1
                for i in range(len(color_list)):
                    if color_list[i]['color'] == nearest['color']:
                        color_list[i]['count'] += 1
                # 在列表里保存颜色数据
                data.append(nearest['index'])
    image_list.append((os.path.splitext(pic)[0], data))

# 按照颜色使用排序
color_list.sort(key=lambda color:color['count'], reverse=True)
print(color_list)


# 输出颜色文本
one_pixel = ''
text = '''execute if score colorCode tmp matches {0:d} run data merge entity @s {{Particle: "minecraft:dust {1:.4f} {2:.4f} {3:.4f} 0.28", Radius: 0.01f}}
execute unless score colorCode tmp matches {0:d} runfunction spray:private/colors/{4:d}
'''
text2 = '''execute if score colorCode tmp matches {0:d} run kill @s
execute unless score colorCode tmp matches {0:d} runfunction spray:private/colors/{4:d}
'''
for i in range(len(color_list)):
    with open(os.path.join(path_one_pixel_dir, '{:d}.mcfunction'.format(i)), 'w') as f:
        if color_list[i]['color'].empty == True:
            f.write(text2.format(color_list[i]['index'], color_list[i]['color'].color[0]/255, color_list[i]['color'].color[1]/255, color_list[i]['color'].color[1]/255, i+1))
        else:
            f.write(text.format(color_list[i]['index'], color_list[i]['color'].color[0]/255, color_list[i]['color'].color[1]/255, color_list[i]['color'].color[1]/255, i+1))
    

# 输出图形文本
image_data = ''
set_buffer = ''
text = 'data modify storage spray: {{}} merge value {{{0:s}:[{1:s}]}}'
text2 = 'execute if score @s sprayType matches {:d} run data modify storage spray: buffer set from storage spray: {:s}'
count = 0
for image in image_list:
    data_list = ''
    for pixel in image[1]:
        data_list += '{}s,'.format(pixel)
    image_data += text.format(image[0], data_list)
    image_data += '\n'
    count += 1
    set_buffer += text2.format(count, image[0])
    set_buffer += '\n'


# 输出至文件
with open(path_image_data, 'w') as f:
    f.write(image_data)
with open(path_set_buffer, 'w') as f:
    f.write(set_buffer)
