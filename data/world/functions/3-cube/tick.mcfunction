# world:3-cube/tick

# Summon.
execute positioned -979 71 -977 run function world:components/cake/summon
execute positioned -979 71 -1022 run function world:components/cake/summon
execute positioned -1024 71 -977 run function world:components/cake/summon
execute positioned -1024 71 -1022 run function world:components/cake/summon

execute positioned -1006 60 -1004 run function world:components/target_area/summon_negative_point
execute positioned -997 69 -995 run function world:components/target_area/summon_positive_point

execute positioned -1050 93 -1048 run function world:components/spawn_area/summon_blue_negative_point
execute positioned -1041 102 -1039 run function world:components/spawn_area/summon_blue_positive_point

execute positioned -962 93 -960 run function world:components/spawn_area/summon_blue_negative_point
execute positioned -953 102 -951 run function world:components/spawn_area/summon_blue_positive_point

execute positioned -962 93 -1048 run function world:components/spawn_area/summon_red_negative_point
execute positioned -953 102 -1039 run function world:components/spawn_area/summon_red_positive_point

execute positioned -1050 93 -960 run function world:components/spawn_area/summon_red_negative_point
execute positioned -1041 102 -951 run function world:components/spawn_area/summon_red_positive_point

scoreboard players set rotation params 135
execute positioned -957 93 -955 run function world:components/spawn_point/summon_blue
scoreboard players set rotation params 315
execute positioned -1046 93 -1044 run function world:components/spawn_point/summon_blue
scoreboard players set rotation params 45
execute positioned -957 93 -1044 run function world:components/spawn_point/summon_red
scoreboard players set rotation params 225
execute positioned -1046 93 -955 run function world:components/spawn_point/summon_red
