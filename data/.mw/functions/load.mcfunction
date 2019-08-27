# .mw:load

function hh:load
function pah:load
function uid:load

# 记分板
scoreboard objectives add const dummy "常数"
function .mw:define_consts

## 不应跨刻使用，不应跨命名空间使用
scoreboard objectives add tmp dummy "临时"

## 不应跨刻使用
scoreboard objectives add params dummy "参数"
scoreboard objectives add result dummy "返回值"

# 队伍
team add red {"text": "红队", "color": "red"}
team modify red collisionRule pushOtherTeams
team modify red color red
team modify red friendlyFire false
team modify red nametagVisibility hideForOtherTeams
team modify red prefix {"text": "", "color": "red"}
team modify red seeFriendlyInvisibles true
team modify red suffix {"text": "", "color": "reset"}

team add redNameTag {"text": "红队", "color": "red"}
team modify redNameTag collisionRule pushOtherTeams
team modify redNameTag color red
team modify redNameTag friendlyFire false
team modify redNameTag nametagVisibility always
team modify redNameTag prefix {"text": "", "color": "red"}
team modify redNameTag seeFriendlyInvisibles true
team modify redNameTag suffix {"text": "", "color": "reset"}

team add blue {"text": "蓝队", "color": "aqua"}
team modify blue collisionRule pushOtherTeams
team modify blue color aqua
team modify blue friendlyFire false
team modify blue nametagVisibility hideForOtherTeams
team modify blue prefix {"text": "", "color": "aqua"}
team modify blue seeFriendlyInvisibles true
team modify blue suffix {"text": "", "color": "reset"}

team add blueNameTag {"text": "蓝队", "color": "aqua"}
team modify blueNameTag collisionRule pushOtherTeams
team modify blueNameTag color aqua
team modify blueNameTag friendlyFire false
team modify blueNameTag nametagVisibility always
team modify blueNameTag prefix {"text": "", "color": "aqua"}
team modify blueNameTag seeFriendlyInvisibles true
team modify blueNameTag suffix {"text": "", "color": "reset"}

# 区块
forceload add -1 -1 1 1

# 方块
setblock 0 0 0 minecraft:jukebox{RecordItem: {Count: 1b, id: "minecraft:stone", tag: {}}}

tellraw @a "\u00a72Bingo!"
