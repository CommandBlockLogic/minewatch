#> fnmdp:tick
# @author K_Bai
# @url https://www.mcbbs.net/thread-777085-1-1.html
# @improvedBy SPGoding with a bunch of love!
# @tag
#define tag fnmdp Indicates a fnmdp projectile.
#define tag fnmdp_can_hit_enemy Shows that the current projectile can hit player's enemy.
#define tag fnmdp_can_hit_teammate Shows that the current projectile can hit player's teammate.
#define tag fnmdp_can_damage_self Shows that the current projectile can damage player themselves.
#define tag fnmdp_hitted Indicates an entity hitted by the current projectile.
#define tag fnmdp_conflictable Indicates a player that can be hitted by the current projectile.
#define tag fnmdp_damagable Indicates a player that can be damaged by the current projectile.
#define tag fnmdp_hitted Indicates a player hitted by the current projectile.

# Calculate velocities.
scoreboard players operation @s fnmdpVx += @s fnmdpAx
scoreboard players operation @s fnmdpVy += @s fnmdpAy
scoreboard players operation @s fnmdpVz += @s fnmdpAz

# Move step by step so it wouldn't fly through walls.
scoreboard players operation Vx params = @s fnmdpVx
scoreboard players operation Vy params = @s fnmdpVy
scoreboard players operation Vz params = @s fnmdpVz
execute if entity @s[tag=fnmdp_can_hit_enemy] run tag @e[tag=player,tag=enemy,tag=!died] add conflictable
execute if entity @s[tag=fnmdp_can_hit_teammate] run tag @e[tag=player,tag=teammate,tag=!died] add conflictable
function fnmdp:private/small_step
tag @e remove conflictable
function fnmdp:damage
tag @e remove fnmdp_hitted

# Boom.
scoreboard players add @s fnmdpAge 1
scoreboard players set boom tmp 0
#execute if entity @s[scores={fnmdpVx=-50..50,fnmdpVy=-50..50,fnmdpVz=-50..50}] run say 1
execute if entity @s[scores={fnmdpVx=-50..50,fnmdpVy=-50..50,fnmdpVz=-50..50}] run scoreboard players set boom tmp 1
#execute if score @s fnmdpAge >= @s fnmdpLife run say 2
execute if score @s fnmdpAge >= @s fnmdpLife run scoreboard players set boom tmp 1
execute if score boom tmp matches 1 run function fnmdp:boom
