# .mw:load

function buff:load
function char:load
function fnmdp:load
function game:load
function gc:load
function hh:load
function pah:load
function spray:load
function uid:load
function world:load

# 记分板
scoreboard objectives add const dummy "常数"
function .mw:define_consts

## 不应跨刻使用，不应跨命名空间使用
scoreboard objectives add tmp dummy "临时"

## 不应跨刻使用
scoreboard objectives add params dummy "参数"
scoreboard objectives add result dummy "返回值"

## 不应跨实体使用
scoreboard objectives add custom1 dummy "自定义1"
scoreboard objectives add custom2 dummy "自定义2"
scoreboard objectives add custom3 dummy "自定义3"
scoreboard objectives add custom4 dummy "自定义4"
scoreboard objectives add custom5 dummy "自定义5"

# 队伍
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

team add blueColor {"text": "红色", "color": "aqua"}
team modify blueColor color aqua
team modify blueColor collisionRule never

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

team add redColor {"text": "红色", "color": "red"}
team modify redColor color red
team modify redColor collisionRule never

# 区块
forceload add -1 -1 1 1

# 方块
setblock 0 0 0 minecraft:jukebox{RecordItem: {Count: 1b, id: "minecraft:stone", tag: { tmp: {} }}}
setblock 0 1 0 minecraft:birch_sign{Text3: '"§bCBL Presents"'}

tellraw @a "§2Bingo!"
