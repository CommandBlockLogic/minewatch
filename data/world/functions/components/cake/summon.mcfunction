# world:components/cake/summon

execute unless entity @e[type=minecraft:armor_stand,distance=..1,tag=world_cake_component] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["world_cake_component", "new_summoned"], Invisible: 1b, Small: 1b, NoGravity: 1b, CustomNameVisible: 1b}
scoreboard players set @e[tag=new_summoned] custom1 0
tag @e remove new_summoned
