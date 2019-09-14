# char:player_tick
# @as player

# Selecte default character.
execute unless score @s charID matches 1.. run function char:1-pca/select

# Trigger skills.
## Cooldown.
execute if entity @s[tag=!died] if score @s charWeaponCool matches 1.. run scoreboard players remove @s charWeaponCool 1
execute if entity @s[tag=!died] if score @s charWeaponCool matches ..-1 run scoreboard players add @s charWeaponCool 1
execute if entity @s[tag=!died] if score @s charSkillACool matches 1.. run scoreboard players remove @s charSkillACool 1
execute if entity @s[tag=!died] if score @s charSkillACool matches ..-1 run scoreboard players add @s charSkillACool 1
execute if entity @s[tag=!died] if score @s charSkillPCool matches 1.. run scoreboard players remove @s charSkillPCool 1
execute if entity @s[tag=!died] if score @s charSkillPCool matches ..-1 run scoreboard players add @s charSkillPCool 1
execute if entity @s[tag=!died] if score @s charSkillUCool matches 1.. run scoreboard players remove @s charSkillUCool 1
execute if entity @s[tag=!died] if score @s charSkillUCool matches ..-1 run scoreboard players add @s charSkillUCool 1
## Trigger.
execute if entity @s[tag=!died] if score @s pahRightClick matches 1.. if score @s charWeaponCool matches 0 run function char:scheduler/weapon
execute if entity @s[tag=!died] if score @s pahPressF matches 1.. if score @s charSkillACool matches 0 if score @s charSkillAChosen matches 1 run function char:scheduler/skill_active_a
execute if entity @s[tag=!died] if score @s pahPressF matches 1.. if score @s charSkillACool matches 0 if score @s charSkillAChosen matches 2 run function char:scheduler/skill_active_b
execute if entity @s[tag=!died] if score @s charSkillPCool matches 0 if score @s charSkillPChosen matches 1 run function char:scheduler/skill_passive_a
execute if entity @s[tag=!died] if score @s charSkillPCool matches 0 if score @s charSkillPChosen matches 2 run function char:scheduler/skill_passive_b
execute if entity @s[tag=!died] if score @s pahPressQ matches 1.. if score @s charSkillUCool matches 0 if score @s charSkillUChosen matches 1 run function char:scheduler/skill_ultimate_a
execute if entity @s[tag=!died] if score @s pahPressQ matches 1.. if score @s charSkillUCool matches 0 if score @s charSkillUChosen matches 2 run function char:scheduler/skill_ultimate_b
# execute if entity @s[tag=!died] if score @s pahPressShift matches 1.. run say F

# Do.
function char:scheduler/do
