# world:2-maze/tick

# Summon.
execute positioned -979 27 -977 run function world:components/cake/summon
execute positioned -979 27 -1022 run function world:components/cake/summon
execute positioned -1024 27 -977 run function world:components/cake/summon
execute positioned -1024 27 -1022 run function world:components/cake/summon

execute positioned -1006 49 -1004 run function world:components/target_area/summon_negative_point
execute positioned -997 58 -995 run function world:components/target_area/summon_positive_point

execute positioned -962 5 -1048 run function world:components/spawn_area/summon_blue_negative_point
execute positioned -953 14 -1039 run function world:components/spawn_area/summon_blue_positive_point

execute positioned -1050 5 -960 run function world:components/spawn_area/summon_blue_negative_point
execute positioned -1041 14 -951 run function world:components/spawn_area/summon_blue_positive_point

execute positioned -962 5 -960 run function world:components/spawn_area/summon_red_negative_point
execute positioned -953 14 -951 run function world:components/spawn_area/summon_red_positive_point

execute positioned -1050 5 -1048 run function world:components/spawn_area/summon_red_negative_point
execute positioned -1041 14 -1039 run function world:components/spawn_area/summon_red_positive_point

scoreboard players set rotation params 45
execute positioned -957 5 -1044 run function world:components/spawn_point/summon_blue
scoreboard players set rotation params 225
execute positioned -1046 5 -955 run function world:components/spawn_point/summon_blue
scoreboard players set rotation params 135
execute positioned -957 5 -955 run function world:components/spawn_point/summon_red
scoreboard players set rotation params 315
execute positioned -1046 5 -1044 run function world:components/spawn_point/summon_red
