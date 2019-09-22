# hh:load

scoreboard objectives add hhInnateHealth dummy "固有生命"
scoreboard objectives add hhInnateArmor dummy "固有护甲"
scoreboard objectives add hhInnateShield dummy "固有护盾"
scoreboard objectives add hhInnateMax dummy "固有最大生命"
scoreboard objectives add hhInnateTotal dummy "固有总生命"
scoreboard objectives add hhTempArmor dummy "临时护甲"
scoreboard objectives add hhTempShield dummy "临时护盾"
scoreboard objectives add hhTempShieldTime dummy "临时护盾剩余时间"
scoreboard objectives add hhTempTotal dummy "临时总生命"
scoreboard objectives add hhTotal dummy "总生命"
scoreboard objectives add hhReducing dummy "正在减少的生命值"
scoreboard objectives add hhHealed dummy "当前刻治疗生命值"
scoreboard objectives add hhDamagedR dummy "由远程攻击造成的当前刻伤害生命值"
scoreboard objectives add hhDamagedM dummy "由近战攻击造成的当前刻伤害生命值"
scoreboard objectives add hhDamagedB dummy "当前剩余的流血伤害生命值"
scoreboard objectives add hhDamagedBTime dummy "当前剩余的流血伤害时长"
scoreboard objectives add hhLastTotal dummy "上一刻总生命"
scoreboard objectives add hhLastHurtTime dummy "上一次娇喘到现在的时间"
scoreboard objectives add hhShouldRerender dummy "是否应当重绘血量条"
scoreboard objectives add hhMeleeDamage dummy "本人对他人近战攻击所造成的伤害"

# 1：近战攻击
# 2：普通攻击
# 3：主动技能A
# 4：主动技能B
# 5：被动技能A
# 6：被动技能B
# 7：终极技能A
# 8：终极技能B
# 9 / 未设置：地形
# 10：普通攻击（爆头）
# 11：主动技能A（爆头）
# 12：主动技能B（爆头）
# 13：被动技能A（爆头）
# 14：被动技能B（爆头）
# 15：终极技能A（爆头）
# 16：终极技能B（爆头）
# 17：地形（爆头）
scoreboard objectives add hhLastDamageWay dummy "上一次受到伤害的方式"
scoreboard objectives add hhLastDamageTime dummy "距离上一次受到伤害后经过的时间"
scoreboard objectives add hhLastDamageUid dummy "上一次伤害源的玩家标识符"

scoreboard objectives add hhReviveTime dummy "复活剩余时间"

scoreboard players set $hhReviveTime custom1 200
