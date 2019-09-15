# fnmdp:load

scoreboard objectives add fnmdpVx "Vx×100"
scoreboard objectives add fnmdpVy "Vy×100"
scoreboard objectives add fnmdpVz "Vz×100"
scoreboard objectives add fnmdpAx "Ax×100"
scoreboard objectives add fnmdpAy "Ay×100"
scoreboard objectives add fnmdpAz "Az×100"
scoreboard objectives add fnmdpVKeepN "切向速度保留率×100"
scoreboard objectives add fnmdpVKeepT "法向速度保留率×100"

# 1 - 小，可精确判定
# 2 - 大，采用 #.mw:player_through 判定
scoreboard objectives add fnmdpSize "弹射物大小"
