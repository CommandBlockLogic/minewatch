#> fnmdp:private/small_step_vy_is_outrange

execute if score Vy params > fnmdpVSmallMax const run scoreboard players operation VySmall tmp = fnmdpVSmallMax const
execute if score Vy params > fnmdpVSmallMax const run scoreboard players operation Vy params -= fnmdpVSmallMax const
execute if score Vy params < fnmdpVSmallMin const run scoreboard players operation VySmall tmp = fnmdpVSmallMin const
execute if score Vy params < fnmdpVSmallMin const run scoreboard players operation Vy params -= fnmdpVSmallMin const
