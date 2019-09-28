# gc:load

scoreboard objectives add tps dummy "TPS"

scoreboard players set gcLimit const 1024

bossbar add .mw:tps "TPS"
bossbar set .mw:tps max 20
