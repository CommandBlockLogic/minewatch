# health:load

scoreboard objectives add health dummy "生命值"
scoreboard objectives add healthMax dummy "最大生命值"
scoreboard objectives add healthSum dummy "总生命值"
scoreboard objectives add healthReducing dummy "正在减少的生命值"
scoreboard objectives add healthExtra dummy "附加生命值"
scoreboard objectives add healthRestored dummy "恢复生命值"
scoreboard objectives add healthDamaged dummy "损伤生命值"

scoreboard objectives add lastDamagedTime dummy "上一次受到伤害的时间"

scoreboard objectives add killerUid dummy "杀手的标识符"
# 1：近战
# 2：远程
# 3：主动技能
# 4：被动技能
# 5：终极技能
# 6：远程（爆头）
# 7：主动技能（爆头）
# 8：被动技能（爆头）
# 9：终极技能（爆头）
scoreboard objectives add dyingMethod dummy "死亡方式"

scoreboard objectives add reviveTime dummy "复活剩余时间"
