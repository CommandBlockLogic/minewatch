# hh:load

scoreboard objectives add hhHealth dummy "生命值"
scoreboard objectives add hhArmor dummy "护甲"
scoreboard objectives add hhShield dummy "护盾"
scoreboard objectives add hhExtraHealth dummy "附加生命值"
scoreboard objectives add hhExtraArmor dummy "附加护甲"
scoreboard objectives add hhExtraShield dummy "附加护盾"
scoreboard objectives add hhMax dummy "不含附加生命值的最大生命值"
scoreboard objectives add hhTotal dummy "总生命值"
scoreboard objectives add hhReducing dummy "正在减少的生命值"
scoreboard objectives add hhHealed dummy "当前刻治疗生命值"
scoreboard objectives add hhDamaged dummy "当前刻伤害生命值"

# 1：近战
# 2：普通攻击
# 3：主动技能
# 4：被动技能
# 5：终极技能
# 6：地形
# 7：普通攻击（爆头）
# 8：主动技能（爆头）
# 9：被动技能（爆头）
# 10：终极技能（爆头）
# 11：地形（爆头）
scoreboard objectives add hhLastDamageWay dummy "上一次受到伤害的方式"
scoreboard objectives add hhLastDamageTime dummy "距离上一次受到伤害后经过的时间"
scoreboard objectives add hhLastDamageUid dummy "上一次伤害源的玩家标识符"

scoreboard objectives add hhReviveTime dummy "复活剩余时间"
