#> fnmdp:private/small_step_elastic_conflict_x
# @tmp @out
# - VxSmall tmp
# - VySmall tmp
# - VzSmall tmp

#say X
scoreboard players operation @s fnmdpVx *= @s fnmdpVKeepT
scoreboard players operation @s fnmdpVy *= @s fnmdpVKeepN
scoreboard players operation @s fnmdpVz *= @s fnmdpVKeepN
scoreboard players operation @s fnmdpVx /= 100 const
scoreboard players operation @s fnmdpVy /= 100 const
scoreboard players operation @s fnmdpVz /= 100 const
scoreboard players operation VxSmall tmp *= @s fnmdpVKeepT
scoreboard players operation VySmall tmp *= @s fnmdpVKeepN
scoreboard players operation VzSmall tmp *= @s fnmdpVKeepN
scoreboard players operation VxSmall tmp /= 100 const
scoreboard players operation VySmall tmp /= 100 const
scoreboard players operation VzSmall tmp /= 100 const
