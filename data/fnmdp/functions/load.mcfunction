#> fnmdp:load

scoreboard objectives add fnmdpVx dummy "Vx×100"
scoreboard objectives add fnmdpVy dummy "Vy×100"
scoreboard objectives add fnmdpVz dummy "Vz×100"
scoreboard objectives add fnmdpAx dummy "Ax×100"
scoreboard objectives add fnmdpAy dummy "Ay×100"
scoreboard objectives add fnmdpAz dummy "Az×100"
scoreboard objectives add fnmdpVKeepN dummy "切向速度保留率×100"
scoreboard objectives add fnmdpVKeepT dummy "法向速度保留率×100"
scoreboard objectives add fnmdpAge dummy "当前存活刻"
scoreboard objectives add fnmdpLife dummy "最大存活刻"

# 1 - 小，可精确判定
# 2 - 大，采用 #.mw:player_through 判定
scoreboard objectives add fnmdpSize dummy "弹射物大小"
