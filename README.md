# MineWatch

## 简介

> 写个锤子啊你。  
> —— SPGoding

锤子。

## 命名空间列表

| 命名空间 | 全称 | 用途 |
| ------- | ---- | ---- |
| .mw | Dot MineWatch | 统筹安排 |
| char  | Character | 角色管理 |
| gc  | Garbage Collecter | 垃圾 marker 回收 |
| hh  | Health Handler | 血量管理 |
| pah | Player Action Handler | 处理玩家按键行为 |
| player | Player | 处理玩家行为 |
| uid | Unique Identity Deliver | 分配玩家独一标识符 |
| world | World | 处理地图相关行为 |

## 角色列表



## 模型列表

## 字体列表

| 编码 | 符号 | 角色 | 描述 |
| - | - | - | - |
| \u2620 | ☠ | 通用 | 地形击杀 |
| \uE001 |  | 通用 | 近战击杀 |
| \uE002 |  | 通用 | 远程击杀 |
| \uE100 |  | 通用 | 生命值单位 |

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

## 实体标签列表

| 标签 | 描述 |
| - | - |
| char_sample | 角色样本 |
| died | 死了的玩家 |
| enemy | 玩家的敌人 |
| force_player | 强制该实体为一名玩家 |
| fucking_cbl | 调试 tag，拥有此 tag 的玩家不会被加入游戏 |
| health_bar | 储存玩家血条 |
| marker_with_uid | 有 UID 的 marker |
| my_marker | 玩家对应的 marker |
| my_char | 玩家对应的角色样本 |
| need_healing | 该玩家需要治疗 |
| player | 游戏玩家 |
| protected | 被保护的实体，不会被 GC 收集 |
| same_team | 玩家的同队玩家（包括自己） |
| self | 玩家自己 |
| teammate | 玩家的队友 |

## 枪毙名单

- 数据包：SPGoding HerobrineXia
- 资源包： 
    - 贴图：Mars_Cloud 折君
    - 模型：SPGoding 折君
    - 音效：Minecraft Overwatch
- 地　图：HerobrineXia 铃子 Mars_Cloud SPGoding
- 服务器：K_Bai
