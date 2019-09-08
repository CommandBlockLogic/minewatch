# world:1-bells/components/spring/tick_as
# @as [tag=world_spring_component]

particle dolphin ~ ~1 ~ 0.5 1.5 0.5 5 20
scoreboard players add @e[tag=player,distance=..1.8] buffLevitation20 1
playsound minecraft:block.bubble_column.upwards_inside master @a[tag=player,distance=..1.8]
