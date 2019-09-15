# char:2-steve/private/skill_active_a_damage
# @tag @in
# - fnmdp_hitted

scoreboard players add @e[tag=fnmdp_hitted] hhDamagedM 10
scoreboard players set @e[tag=fnmdp_hitted] hhLastDamageWay 3
scoreboard players operation @e[tag=fnmdp_hitted] hhLastDamageUid = @s uid
