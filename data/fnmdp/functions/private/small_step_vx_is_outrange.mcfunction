#> fnmdp:private/small_step_vx_is_outrange

execute if score Vx params > fnmdpVSmallMax const run scoreboard players operation VxSmall tmp = fnmdpVSmallMax const
execute if score Vx params > fnmdpVSmallMax const run scoreboard players operation Vx params -= fnmdpVSmallMax const
execute if score Vx params < fnmdpVSmallMin const run scoreboard players operation VxSmall tmp = fnmdpVSmallMin const
execute if score Vx params < fnmdpVSmallMin const run scoreboard players operation Vx params -= fnmdpVSmallMin const
