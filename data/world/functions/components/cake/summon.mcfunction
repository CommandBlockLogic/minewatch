# world:components/cake/summon

summon minecraft:armor_stand ~ ~ ~ {Tags: ["world_cake_component", "new_summoned"], Invisible: 1b, Invulnerable: 1b, Marker: 1b, NoGravity: 1b}
scoreboard players set @e[tag=new_summoned] custom1 0
tag @e remove new_summoned
