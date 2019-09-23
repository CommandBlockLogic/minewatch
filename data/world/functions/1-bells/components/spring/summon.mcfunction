# world:1-bells/components/spring/summon
# @at The position of the spring

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,tag=world_spring_component] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["world_attachment", "world_spring_component", "newly_summoned"], CustomName: '"Spring Component"', NoGravity: 1b, Duration: 23333}
