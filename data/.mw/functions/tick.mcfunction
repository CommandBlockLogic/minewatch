# .mw:tick

function .mw:tag_player

function pah:before_tick
function game:tick
execute unless $game custom1 matches 2 run function char:tick
execute unless $game custom1 matches 2 run function world:tick
execute as @e[tag=player] at @s run function player:tick
function pah:after_tick

function gc:tick

scoreboard players add $secTimer custom1 1
execute if score $secTimer custom1 matches 20 run function .mw:sec
execute if score $secTimer custom1 matches 20 run scoreboard players set $secTimer custom1 0

scoreboard players reset * tmp
scoreboard players reset * params
scoreboard players reset * result
