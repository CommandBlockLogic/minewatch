# hh:vanilla_combat/tick

execute if entity @s[advancements={hh:vanilla_combat/melee_attack=true}] run function hh:vanilla_combat/melee_attack
execute if entity @s[advancements={hh:vanilla_combat/range_attack_by_arrow=true}] run say 1
execute if entity @s[advancements={hh:vanilla_combat/range_attack_by_arrow=true}] run function hh:vanilla_combat/range_attack_by_arrow
execute if entity @s[advancements={hh:vanilla_combat/range_attack_by_trident=true}] run function hh:vanilla_combat/range_attack_by_trident
