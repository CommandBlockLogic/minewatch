# pah:before_tick

kill @e[type=minecraft:item]

execute as @a run scoreboard players operation @s pahPressQ = @s pahPressQ1
execute as @a run scoreboard players operation @s pahPressQ += @s pahPressQ2
execute as @a run scoreboard players operation @s pahPressQ += @s pahPressQ3
execute as @a run scoreboard players operation @s pahPressQ += @s pahPressQ4

execute as @a run if score @s pahCrouching matches 1.. run scoreboard players reset @s pahPressShift

scoreboard players add @a[predicate=!pah:offhand_is_empty] pahPressF 1
replaceitem entity @a[scores={pahPressF=1..}] weapon.offhand minecraft:air
