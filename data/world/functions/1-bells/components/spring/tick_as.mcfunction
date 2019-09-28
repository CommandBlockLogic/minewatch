# world:1-bells/components/spring/tick_as
# @as [tag=world_spring_component]

particle minecraft:rain ~ ~1 ~ 0.5 1.5 0.5 5 20
execute as @a[tag=player,tag=!died,distance=..1.8] unless score @s buffLevitation20 matches 1.. run playsound minecraft:block.bubble_column.upwards_inside master @s
execute as @e[tag=player,tag=!died,distance=..1.8] unless score @s buffLevitation20 matches 1.. run scoreboard players set @s buffLevitation20 8
