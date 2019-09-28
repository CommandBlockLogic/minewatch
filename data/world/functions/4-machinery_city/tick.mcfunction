# world:4-machinery_city/tick

# Summon.
execute positioned 984 4 984 run function world:components/cake/summon
execute positioned 984 4 1016 run function world:components/cake/summon
execute positioned 1016 4 984 run function world:components/cake/summon
execute positioned 1016 4 1016 run function world:components/cake/summon
execute positioned 996 4 996 run function world:components/target_area/summon_negative_point
execute positioned 1004 8 1004 run function world:components/target_area/summon_positive_point
execute positioned 997 4 913 run function world:components/spawn_area/summon_blue_negative_point
execute positioned 1003 9 919 run function world:components/spawn_area/summon_blue_positive_point
execute positioned 997 4 1081 run function world:components/spawn_area/summon_blue_negative_point
execute positioned 1003 9 1087 run function world:components/spawn_area/summon_blue_positive_point
execute positioned 913 4 997 run function world:components/spawn_area/summon_red_negative_point
execute positioned 919 9 1003 run function world:components/spawn_area/summon_red_positive_point
execute positioned 1081 4 997 run function world:components/spawn_area/summon_red_negative_point
execute positioned 1087 9 1003 run function world:components/spawn_area/summon_red_positive_point

scoreboard players set rotation params 0
execute positioned 1000 4 916 run function world:components/spawn_point/summon_blue
scoreboard players set rotation params 180
execute positioned 1000 4 1084 run function world:components/spawn_point/summon_blue
scoreboard players set rotation params 90
execute positioned 1084 4 1000 run function world:components/spawn_point/summon_red
scoreboard players set rotation params 270
execute positioned 916 4 1000 run function world:components/spawn_point/summon_red
