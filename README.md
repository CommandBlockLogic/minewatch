# MineWatch

## 简介

> 写个锤子啊你。  
> —— SPGoding

锤子。

## 命名空间列表

| 命名空间 | 全称 | 用途 |
| ------- | ---- | ---- |
| .mw | Dot MineWatch | 统筹安排 |
| pah | Player Action Handler | 处理玩家按键行为 |
| uid | Unique Identity Deliver | 分配玩家独一标识符 |

## 角色列表



## 材质列表

### 武器

| ID                          | Damage | 角色 | 名称 |
| --------------------------- | ------ | ---- | ---- |
| minecraft:carrot_on_a_stick | 0      | 通用 | 空   |

### 动画

| ID                    | Damage | 模型                                              |
| --------------------- | ------ | ------------------------------------------------- |
| minecraft:diamond_axe | 0      | minewatch:item/pca/torch/normal/normal |

### GUI

| ID                    | Damage    | 描述                        |
| --------------------- | --------- | --------------------------- |
| minecraft:iron_ingot  | N/A       | 弹药（红）                  |

## 弹射物

| ID                    | Damage | 模型                                              |
| --------------------- | ------ | ------------------------------------------------- |
| minecraft:wooden_hoe | 1      | minewatch:projectile/slime_ball/red |

### 字体

| 字 | 角色 | 描述 |
| - | - | - |
| \ue001 | 通用 | 近战击杀 |
| \ue002 | 通用 | 远程击杀 |

## 格数分配

- hotbar.0：主武器
- hotbar.1：喷漆
- hotbar.2：技能 Q 冷却底图（偏移到 hotbar.6，可能没有）
- hotbar.3：技能 F 冷却底图（偏移到 hotbat.7）
- hotbar.4：大招充能
- hotbar.5：空气
- hotbar.6：技能 Q 特定图标（可能没有）
- hotbar.7：技能 F 特定图标
- hotbar.8：子弹

## 枪毙名单

- 数据包：SPGoding HerobrineXia
- 资源包： 
    - 贴图：Mars_Cloud 折君
    - 模型：SPGoding 折君
    - 音效：Minecraft Overwatch
- 地　图：HerobrineXia 铃子 Mars_Cloud SPGoding
- 服务器：K_Bai
- 鸣　谢：
    - Amber：制作反向缩进字体。

## 手动执行
- `/forceload add -1 -1 1 1`
