bossbar add bossbarclock:clock ""
bossbar set bossbarclock:clock max 24000
bossbar set bossbarclock:clock style notched_6

bossbar remove bossbarclock:orderless_clock
execute if score #bossbarclock$12hr_clock Config matches 0 run bossbar add bossbarclock:orderless_clock {"translate":"%s - %s","with":[{"translate":"Day %s","with":[{"text":"??","color":"yellow","obfuscated":true}],"color":"white"},{"translate":"%1$s:%1$s","with":[{"text":"??","color":"yellow","obfuscated":true}],"color":"white"}],"color":"dark_gray"}
execute if score #bossbarclock$12hr_clock Config matches 1 run bossbar add bossbarclock:orderless_clock {"translate":"%s - %s","with":[{"translate":"Day %s","with":[{"text":"??","color":"yellow","obfuscated":true}],"color":"white"},{"translate":"%1$s:%1$s %2$s","with":[{"text":"??","color":"yellow","obfuscated":true},{"text":"??","color":"gray","obfuscated":true}],"color":"white"}],"color":"dark_gray"}
bossbar set bossbarclock:orderless_clock max 1
bossbar set bossbarclock:orderless_clock value 1
bossbar set bossbarclock:orderless_clock style notched_6
bossbar set bossbarclock:orderless_clock color red
