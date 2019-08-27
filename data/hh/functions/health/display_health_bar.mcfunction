# hh:health/display_health_bar

scoreboard players operation hh:health/display_health_bar$health tmp = @s hhHealth
scoreboard players operation hh:health/display_health_bar$health tmp *= 100 const
scoreboard players operation hh:health/display_health_bar$health tmp /= @s healthSum

# scoreboard players operation hh:health/display_health_bar$healthExtra tmp = @s hhExtra
# scoreboard players operation hh:health/display_health_bar$healthExtra tmp *= 100 const
# scoreboard players operation hh:health/display_health_bar$healthExtra tmp /= @s healthSum

# scoreboard players operation hh:health/display_health_bar$healthReducing tmp = @s healthReducing
# scoreboard players operation hh:health/display_health_bar$healthReducing tmp *= 100 const
# scoreboard players operation hh:health/display_health_bar$healthReducing tmp /= @s healthSum

# scoreboard players set hh:health/display_health_bar$healthLost tmp 100
# scoreboard players operation hh:health/display_health_bar$healthLost tmp -= hh:health/display_health_bar$health tmp
# scoreboard players operation hh:health/display_health_bar$healthLost tmp -= hh:health/display_health_bar$healthExtra tmp
# scoreboard players operation hh:health/display_health_bar$healthLost tmp -= hh:health/display_health_bar$healthReducing tmp

# tellraw @s [{"score":{"name":"health:health/display_health_bar$health","objective":"tmp"}},{"score":{"name":"health:health/display_health_bar$healthExtra","objective":"tmp"}},{"score":{"name":"health:health/display_health_bar$healthReducing","objective":"tmp"}},{"score":{"name":"health:health/display_health_bar$healthLost","objective":"tmp"}}]
