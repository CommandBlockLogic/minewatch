# world:components/target_area/tick

# Get players in target area.
execute store result score xMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] Pos[0] 10
execute store result score yMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] Pos[1] 10
execute store result score zMin params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_negative_point_component] Pos[2] 10
execute store result score xMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_positive_point_component] Pos[0] 10
execute store result score yMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_positive_point_component] Pos[1] 10
execute store result score zMax params run data get entity @e[type=minecraft:area_effect_cloud,limit=1,tag=world_target_area_positive_point_component] Pos[2] 10

scoreboard players remove xMin params 8
scoreboard players add xMax params 8

scoreboard players remove yMax params 18

scoreboard players remove zMin params 8
scoreboard players add zMax params 8

execute as @e[tag=player] run function world:components/target_area/tick_as

# Handle process.
# $blueTeam custom1 The process of blue team.
## max: 2600
# $redTeam custom1 The process of red team.
## max: 2600
# $targetArea custom1 The area process.
## max: 600
# $targetArea custom2 Additional time.
# $targetArea custom3 The state of the target area.
## 0 - locked to open
## 1 - open
## 2 - open to blue
## 3 - open to red
## 4 - blue
## 5 - blue to red
## 6 - red
## 7 - red to blue
bossbar set .mw:process players @a
scoreboard players add $blueTeam custom1 0
scoreboard players add $redTeam custom1 0
scoreboard players add $targetArea custom1 0
scoreboard players add $targetArea custom2 0
scoreboard players add $targetArea custom3 0
## Get player count.
execute store result score blueCount tmp if entity @e[tag=in_target_area,tag=blue_team]
execute store result score redCount tmp if entity @e[tag=in_target_area,tag=red_team]
## Switch states.
### 0 -> 1
execute if score $targetArea custom3 matches 0 if score $targetArea custom1 matches ..599 run scoreboard players add $targetArea custom1 2
execute if score $targetArea custom3 matches 0 if score $targetArea custom1 matches 600.. run scoreboard players add $targetArea custom3 1
### 1 -> 2
execute if score $targetArea custom3 matches 1 if score blueCount tmp matches 1.. if score redCount tmp matches 0 run scoreboard players set $targetArea custom3 2
### 1 -> 3
execute if score $targetArea custom3 matches 1 if score blueCount tmp matches 0 if score redCount tmp matches 1.. run scoreboard players set $targetArea custom3 3
### 2 -> 1
execute if score $targetArea custom3 matches 2 if score $targetArea custom1 matches ..0 if score blueCount tmp matches 0 run scoreboard players set $targetArea custom3 1
### 2 -> 4
execute if score $targetArea custom3 matches 2 if score $targetArea custom1 matches 600.. run scoreboard players set $targetArea custom3 4
### 3 -> 1
execute if score $targetArea custom3 matches 3 if score $targetArea custom1 matches ..0 if score redCount tmp matches 0 run scoreboard players set $targetArea custom3 1
### 3 -> 6
execute if score $targetArea custom3 matches 3 if score $targetArea custom1 matches 600.. run scoreboard players set $targetArea custom3 6
### 4 -> 5
execute if score $targetArea custom3 matches 4 if score blueCount tmp matches 0 if score redCount tmp matches 1.. run scoreboard players set $targetArea custom3 5
### 5 -> 4
execute if score $targetArea custom3 matches 5 if score $targetArea custom1 matches ..0 if score redCount tmp matches 0 run scoreboard players set $targetArea custom3 4
### 5 -> 6
execute if score $targetArea custom3 matches 5 if score $targetArea custom1 matches 600.. run scoreboard players set $targetArea custom3 6
### 6 -> 7
execute if score $targetArea custom3 matches 6 if score blueCount tmp matches 1.. if score redCount tmp matches 0 run scoreboard players set $targetArea custom3 7
### 7 -> 4
execute if score $targetArea custom3 matches 7 if score $targetArea custom1 matches 600.. run scoreboard players set $targetArea custom3 4
### 7 -> 6
execute if score $targetArea custom3 matches 7 if score $targetArea custom1 matches ..0 if score blueCount tmp matches 0 run scoreboard players set $targetArea custom3 6
### Common.
execute if score $targetArea custom1 matches 600.. run scoreboard players set $targetArea custom1 0
## Set bossbar... 
### ...according to the state.
execute if score $targetArea custom3 matches 0..1 run bossbar set .mw:process color yellow
execute if score $targetArea custom3 matches 2 run bossbar set .mw:process color blue
execute if score $targetArea custom3 matches 3 run bossbar set .mw:process color red
execute if score $targetArea custom3 matches 4 run bossbar set .mw:process color blue
execute if score $targetArea custom3 matches 5..6 run bossbar set .mw:process color red
execute if score $targetArea custom3 matches 7 run bossbar set .mw:process color blue
### ...according to the team process.
scoreboard players operation blueTeamPercents tmp = $blueTeam custom1
scoreboard players operation blueTeamPercents tmp *= 100 const
scoreboard players operation blueTeamPercents tmp /= 2600 const
scoreboard players operation redTeamPercents tmp = $redTeam custom1
scoreboard players operation redTeamPercents tmp *= 100 const
scoreboard players operation redTeamPercents tmp /= 2600 const
bossbar set .mw:process name ["", [{"color": "aqua", "score": {"objective": "tmp", "name": "blueTeamPercents"}}, "%"], {"color": "yellow", "text": " | "}, [{"color": "red", "score": {"objective": "tmp", "name": "redTeamPercents"}}, "%"]]
### ...according to the area process.
execute store result bossbar .mw:process value run scoreboard players get $targetArea custom1
## Add team process.
execute if score $targetArea custom3 matches 4..5 run scoreboard players add $blueTeam custom1 1
execute if score $targetArea custom3 matches 6..7 run scoreboard players add $redTeam custom1 1
## Add area process.
execute if score $targetArea custom3 matches 2 if score blueCount tmp matches 0 run scoreboard players remove $targetArea custom1 5
execute if score $targetArea custom3 matches 2 if score blueCount tmp matches 1 if score redCount tmp matches 0 run scoreboard players add $targetArea custom1 3
execute if score $targetArea custom3 matches 2 if score blueCount tmp matches 2 if score redCount tmp matches 0 run scoreboard players add $targetArea custom1 4
execute if score $targetArea custom3 matches 2 if score blueCount tmp matches 3.. if score redCount tmp matches 0 run scoreboard players add $targetArea custom1 5
execute if score $targetArea custom3 matches 3 if score redCount tmp matches 0 run scoreboard players remove $targetArea custom1 5
execute if score $targetArea custom3 matches 3 if score blueCount tmp matches 0 if score redCount tmp matches 1 run scoreboard players add $targetArea custom1 3
execute if score $targetArea custom3 matches 3 if score blueCount tmp matches 0 if score redCount tmp matches 2 run scoreboard players add $targetArea custom1 4
execute if score $targetArea custom3 matches 3 if score blueCount tmp matches 0 if score redCount tmp matches 3.. run scoreboard players add $targetArea custom1 5
execute if score $targetArea custom3 matches 5 if score redCount tmp matches 0 run scoreboard players remove $targetArea custom1 5
execute if score $targetArea custom3 matches 5 if score blueCount tmp matches 0 if score redCount tmp matches 1 run scoreboard players add $targetArea custom1 3
execute if score $targetArea custom3 matches 5 if score blueCount tmp matches 0 if score redCount tmp matches 2 run scoreboard players add $targetArea custom1 4
execute if score $targetArea custom3 matches 5 if score blueCount tmp matches 0 if score redCount tmp matches 3.. run scoreboard players add $targetArea custom1 5
execute if score $targetArea custom3 matches 7 if score blueCount tmp matches 0 run scoreboard players remove $targetArea custom1 5
execute if score $targetArea custom3 matches 7 if score blueCount tmp matches 1 if score redCount tmp matches 0 run scoreboard players add $targetArea custom1 3
execute if score $targetArea custom3 matches 7 if score blueCount tmp matches 2 if score redCount tmp matches 0 run scoreboard players add $targetArea custom1 4
execute if score $targetArea custom3 matches 7 if score blueCount tmp matches 3.. if score redCount tmp matches 0 run scoreboard players add $targetArea custom1 5
## Handle win / lose.
