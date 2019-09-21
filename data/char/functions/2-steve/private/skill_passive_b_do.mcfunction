# char:2-steve/private/skill_passive_b_do

# Effect.
playsound minecraft:item.totem.use master @a
particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0 100 force
tellraw @a ["复活的图标 ", {"selector": "@s"}]

# Revive.
teleport @s ~ ~0.1 ~
tag @s remove died_force_player
gamemode adventure
title @s clear
scoreboard players reset @s hhDamagedM
scoreboard players reset @s hhDamagedR
scoreboard players reset @s hhHealed
scoreboard players reset @s hhReviveTime
scoreboard players set @s hhInnateHealth 150
scoreboard players set @s hhTempShield 200
scoreboard players set @s hhTempShieldTime 200
tag @s remove died

# Cooldown.
scoreboard players set @s charSkillPCool -600
