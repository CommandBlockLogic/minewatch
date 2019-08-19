# pah:before_tick

kill @e[type=minecraft:item]

scoreboard players add @a[nbt={Inventory:[{Slot:-106b}]}] pressF 1
replaceitem entity @a[scores={pressF=1..}] weapon.offhand minecraft:air
