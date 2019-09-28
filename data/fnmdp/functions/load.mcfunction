#> fnmdp:load

# Objectives.
scoreboard objectives add fnmdpVx dummy "Vx×1000"
scoreboard objectives add fnmdpVy dummy "Vy×1000"
scoreboard objectives add fnmdpVz dummy "Vz×1000"
scoreboard objectives add fnmdpAx dummy "Ax×1000"
scoreboard objectives add fnmdpAy dummy "Ay×1000"
scoreboard objectives add fnmdpAz dummy "Az×1000"
scoreboard objectives add fnmdpVKeepN dummy "切向速度保留率×100"
scoreboard objectives add fnmdpVKeepT dummy "法向速度保留率×100"
scoreboard objectives add fnmdpAge dummy "当前存活刻"
scoreboard objectives add fnmdpLife dummy "最大存活刻"

# Consts.
## Scale: ×1000.
scoreboard players set fnmdpVSmallMax const 250
scoreboard players set fnmdpVSmallMin const -250

# 1 - 小，可精确判定
# 2 - 大，采用 #.mw:player_through 判定
scoreboard objectives add fnmdpSize dummy "弹射物大小"
