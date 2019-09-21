# world:5-crack_of_dlrow/tick

# Summon.
execute positioned -973 19 997 run function world:components/cake/summon
execute positioned -1027 19 1001 run function world:components/cake/summon
execute positioned -1027 19 826 run function world:components/cake/summon
execute positioned -973 19 822 run function world:components/cake/summon
execute positioned -1006 18 993 run function world:components/target_area/summon_negative_point
execute positioned -994 26 1005 run function world:components/target_area/summon_positive_point
execute positioned -944 13 994 run function world:components/spawn_area/summon_blue_negative_point
execute positioned -940 17 1004 run function world:components/spawn_area/summon_blue_positive_point
execute positioned -1060 13 994 run function world:components/spawn_area/summon_red_negative_point
execute positioned -1056 17 1004 run function world:components/spawn_area/summon_red_positive_point

scoreboard players set rotation params 90
execute positioned -943 13 999 run function world:components/spawn_point/summon_blue
scoreboard players set rotation params 270
execute positioned -1057 13 999 run function world:components/spawn_point/summon_red
