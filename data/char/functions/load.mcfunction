# char:load

scoreboard objectives add charID dummy "角色标识符"
scoreboard objectives add charSkillAChosen dummy "玩家选择的主动技能"
scoreboard objectives add charSkillPChosen dummy "玩家选择的被动技能"
scoreboard objectives add charSkillUChosen dummy "玩家选择的终极技能"

# 正数为正在使用，负数为正在冷却，0 为可释放。
# 正负两向都是向着正方向自然变化。
scoreboard objectives add charWeaponCool dummy "玩家武器冷却时间"
scoreboard objectives add charSkillACool dummy "玩家主动技能冷却时间"
scoreboard objectives add charSkillPCool dummy "玩家被动技能冷却时间"
scoreboard objectives add charSkillUCool dummy "玩家终极技能冷却时间"
