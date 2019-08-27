# pah:before_tick

kill @e[type=minecraft:item]

scoreboard players add @a[nbt={Inventory:[{Slot:-106b}]}] pahPressF 1
replaceitem entity @a[scores={pahPressF=1..}] weapon.offhand minecraft:air
