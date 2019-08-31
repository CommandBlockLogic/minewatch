# .mw:tick

function .mw:tag_player

function pah:before_tick
function char:tick
execute as @e[tag=player] at @s run function player:tick
function pah:after_tick

function gc:tick

scoreboard players reset * tmp
scoreboard players reset * params
scoreboard players reset * result
