# health:health/display_health_bar

scoreboard players operation health:health/display_health_bar$health tmp = @s health
scoreboard players operation health:health/display_health_bar$health tmp *= 100 const
scoreboard players operation health:health/display_health_bar$health tmp /= @s healthSum

scoreboard players operation health:health/display_health_bar$healthExtra tmp = @s healthExtra
scoreboard players operation health:health/display_health_bar$healthExtra tmp *= 100 const
scoreboard players operation health:health/display_health_bar$healthExtra tmp /= @s healthSum

scoreboard players operation health:health/display_health_bar$healthReducing tmp = @s healthReducing
scoreboard players operation health:health/display_health_bar$healthReducing tmp *= 100 const
scoreboard players operation health:health/display_health_bar$healthReducing tmp /= @s healthSum

scoreboard players set health:health/display_health_bar$healthLost tmp 100
scoreboard players operation health:health/display_health_bar$healthLost tmp -= health:health/display_health_bar$health tmp
scoreboard players operation health:health/display_health_bar$healthLost tmp -= health:health/display_health_bar$healthExtra tmp
scoreboard players operation health:health/display_health_bar$healthLost tmp -= health:health/display_health_bar$healthReducing tmp

tellraw @s [{"score":{"name":"health:health/display_health_bar$health","objective":"tmp"}},{"score":{"name":"health:health/display_health_bar$healthExtra","objective":"tmp"}},{"score":{"name":"health:health/display_health_bar$healthReducing","objective":"tmp"}},{"score":{"name":"health:health/display_health_bar$healthLost","objective":"tmp"}}]
