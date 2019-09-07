# world:components/cake/summon
# @at The position of cake

execute unless entity @e[type=minecraft:falling_block,distance=..1,tag=world_cake_component] run summon minecraft:falling_block ~ ~ ~ {Tags: ["world_attachment", "world_cake_component", "new_summoned"], CustomName: '"Cake"', NoGravity: 1b, CustomNameVisible: 1b, Time: 2, BlockState: {Name: "minecraft:cake", Properties: {bites: "0"}}}
scoreboard players set @e[tag=new_summoned] custom1 0
tag @e remove new_summoned
