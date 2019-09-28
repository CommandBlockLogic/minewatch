import os
from PIL import Image


path_image_dir = 'image'
path_image_data_dir = '../functions/new_idea_private/images'
path_all_image = os.path.join(path_image_data_dir, 'main.mcfunction')


dirname = os.path.dirname(__file__)
path_image_dir = os.path.join(dirname, path_image_dir)
path_image_data_dir = os.path.join(dirname, path_image_data_dir)
path_all_image = os.path.join(dirname, path_all_image)



# 遍历图片、生成命令
all_image = ''
text_all_image = 'execute if score @s sprayType matches {:d} run function spray:new_idea_private/images/{:s}.mcfunction'
text_pixel = 'summon minecraft:area_effect_cloud ~ ~ ~ {{Tags: ["newly_summoned", "marker_with_uid", "my_marker", "spray_paint", "spray_move", "spray_posX_{0[0]:d}", "spray_posY_{0[1]:d}"], CustomName: \'"Spray Paint"\', Duration: 1000, Particle: "minecraft:dust {1[0]:.4f} {1[1]:.4f} {1[2]:.4f} 0.28", Radius: 0.01f}}'
num = 1
for pic in os.listdir(path_image_dir):
    im = Image.open(os.path.join(path_image_dir, pic))
    # 扫描图片
    name = os.path.splitext(pic)[0]
    one_image = ''
    for x in range(im.width):
        for y in range(im.height):
            color = im.getpixel((x, y))
            if color[3] < 255:
                continue
            one_image += text_pixel.format((x, y), (color[0]/255, color[1]/255, color[2]/255))
            one_image += '\n'
    with open(os.path.join(path_image_data_dir, name+'.mcfunction'), 'w') as f:
        f.write(one_image)
    all_image += text_all_image.format(num, name)
    all_image += '\n'
    num += 1

with open(path_all_image, 'w') as f:
    f.write(all_image)