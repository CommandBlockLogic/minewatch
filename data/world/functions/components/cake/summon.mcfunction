# world:components/cake/summon
# @at The position of cake

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_cake_component] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["world_attachment", "world_cake_component", "newly_summoned"], CustomName: '"Cake"', NoGravity: 1b, CustomNameVisible: 1b, Duration: 23333}
scoreboard players set @e[tag=newly_summoned] custom1 0
tag @e remove newly_summoned
