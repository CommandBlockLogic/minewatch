#> fnmdp:private/small_step_vz_is_outrange

execute if score Vz params > fnmdpVSmallMax const run scoreboard players operation VzSmall tmp = fnmdpVSmallMax const
execute if score Vz params > fnmdpVSmallMax const run scoreboard players operation Vz params -= fnmdpVSmallMax const
execute if score Vz params < fnmdpVSmallMin const run scoreboard players operation VzSmall tmp = fnmdpVSmallMin const
execute if score Vz params < fnmdpVSmallMin const run scoreboard players operation Vz params -= fnmdpVSmallMin const
