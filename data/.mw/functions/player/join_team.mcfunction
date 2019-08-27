# .mw:player/join_team

execute if entity @s[tag=red_team,scores={hhLastDamageTime=1..199},team=!redNameTag] run team join redNameTag
execute if entity @s[tag=red_team,scores={hhLastDamageTime=200..},team=!red] run team join red
execute if entity @s[tag=blue_team,scores={hhLastDamageTime=1..199},team=!blueNameTag] run team join blueNameTag
execute if entity @s[tag=blue_team,scores={hhLastDamageTime=200..},team=!blue] run team join blue
