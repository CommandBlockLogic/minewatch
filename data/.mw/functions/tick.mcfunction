# .mw:tick

kill @e[type=minecraft:tnt]

function .mw:tag_player

function pah:before_tick
execute as @e[tag=player] run function .mw:player/tick
function pah:after_tick

scoreboard players reset * tmp
scoreboard players reset * params
scoreboard players reset * result
