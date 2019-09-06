# player:remove_tags

tag @e remove self
tag @e remove same_team
tag @e remove teammate
tag @e remove enemy
tag @e remove my_char

# Set uid for all my markers.
scoreboard players operation @e[tag=my_marker] uid = @e[tag=self,limit=1] uid
tag @e remove my_marker
