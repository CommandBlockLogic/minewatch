# char:2-steve/private/skill_active_a_ray

# Do when meet block or enemy.
execute rotated as @s positioned ^ ^ ^0.1 unless block ~ ~ ~ #.mw:player_through run scoreboard players set set tmp 1
execute rotated as @s positioned ^ ^ ^0.1 if entity @e[tag=player,tag=!died,tag=enemy,distance=..1.8] run scoreboard players set set tmp 1
## Do at block.
execute rotated as @s positioned ^ ^ ^0.1 if score set tmp matches 1.. unless entity @e[tag=player,tag=!died,tag=enemy,distance=..1.8] run function char:2-steve/private/skill_active_a_do
## Do at player.
execute rotated as @s positioned ^ ^ ^0.1 if score set tmp matches 1.. if entity @e[tag=player,tag=!died,tag=enemy,distance=..1.8] at @e[tag=player,tag=!died,tag=enemy,distance=..1.8,limit=1,sort=nearest] positioned ~ ~-1 ~ run function char:2-steve/private/skill_active_a_do

# Do at limit.
execute rotated as @s positioned ^ ^ ^0.1 unless entity @s[distance=..8] run function char:2-steve/private/skill_active_a_do

# Ray.
execute rotated as @s positioned ^ ^ ^0.1 if entity @s[distance=..8] if block ~ ~ ~ #.mw:player_through unless entity @e[tag=player,tag=!died,tag=enemy,distance=..1.8] run function char:2-steve/private/skill_active_a_ray
