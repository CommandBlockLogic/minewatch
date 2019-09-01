# world:components/cake/summon
# @at position of cake

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_cake_component] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["world_cake_component", "new_summoned"], Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, CustomNameVisible: 1b, Duration: 23333}
scoreboard players set @e[tag=new_summoned] custom1 0
tag @e remove new_summoned
