# pah:before_tick

kill @e[type=minecraft:item]

execute as @a run scoreboard players operation @s pahPressQ = @s pahPressQ1
execute as @a run scoreboard players operation @s pahPressQ += @s pahPressQ2
execute as @a run scoreboard players operation @s pahPressQ += @s pahPressQ3
execute as @a run scoreboard players operation @s pahPressQ += @s pahPressQ4

scoreboard players add @a[nbt={Inventory:[{Slot:-106b}]}] pahPressF 1
replaceitem entity @a[scores={pahPressF=1..}] weapon.offhand minecraft:air
