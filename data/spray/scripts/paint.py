import os
from PIL import Image

class SPGColor:
    def __init__(self, rgba):
        self.color = rgba[0:3]
        self.empty = False
        if rgba[3] < 255:
            self.empty = True

    def __eq__(self, other):
        if self.empty == True and other.empty == True:
            return True
        else:
            return self.color == other.color
    def __repr__(self):
        return '({0[0]},{0[1]},{0[2]},{1})'.format(self.color, self.empty)


path_image_dir = 'image'
path_one_pixel = '../functions/colors.mcfunction'
path_image_data = '../functions/image_data.mcfunction'


# 遍历所有图片，注册颜色，写入颜色数据
color_list = [SPGColor((0, 0, 0, 0))]
image_list = []
for pic in os.listdir(path_image_dir):
    # 打开图片
    im = Image.open(os.path.join(path_image_dir, pic))
    # 检查图片大小
    #if im.size != (16, 16):
        #continue
    # 获取所有颜色并注册
    for color in im.getcolors():
        rgb = SPGColor(color[1])
        if rgb not in color_list:
            color_list.append(rgb)
    
    # 按顺序遍历图片
    neg = False
    data = []
    for y in range(im.height):
        # x方向正反判定
        x_list = list(range(im.width))
        if neg == True:
            x_list.reverse()
        neg = not neg
        for x in x_list:
            # 查找颜色在表里的顺序
            for i in range(len(color_list)):
                if SPGColor(im.getpixel((x, y))) == color_list[i]:
                    data.append(i)
                    break
    image_list.append((os.path.splitext(pic)[0], data))




# 输出颜色文本
one_pixel = ''
text = 'execute if score @s custom1 matches {0} run particle minecraft:dust {1:.4f} {2:.4f} {3:.4f} 0.28 ~ ~ ~ 0 0 0 0 2'
for i in range(len(color_list)):
    if color_list[i].empty == True:
        continue
    one_pixel += text.format(i, color_list[i].color[0]/255, color_list[i].color[1]/255, color_list[i].color[2]/255)
    one_pixel += '\n'

# 输出图形文本
image_data = ''
text = 'data modify storage spray: {{}} merge value {{{0:s}:[{1:s}]}}'
for image in image_list:
    data_list = ''
    for pixel in image[1]:
        data_list += '{}b,'.format(pixel)
    image_data += text.format(image[0], data_list)
    image_data += '\n'

# 输出至文件
with open(path_one_pixel, 'w') as f:
    f.write(one_pixel)
with open(path_image_data, 'w') as f:
    f.write(image_data)