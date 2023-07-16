execute store result score #daytime bossbarclock run time query daytime
execute store result score #day bossbarclock run time query day

execute if score #daytime bossbarclock matches 0..3999 run bossbar set bossbarclock:clock color yellow
execute if score #daytime bossbarclock matches 4000..7999 run bossbar set bossbarclock:clock color white
execute if score #daytime bossbarclock matches 8000..11999 run bossbar set bossbarclock:clock color yellow
execute if score #daytime bossbarclock matches 12000..15999 run bossbar set bossbarclock:clock color pink
execute if score #daytime bossbarclock matches 16000..19999 run bossbar set bossbarclock:clock color purple
execute if score #daytime bossbarclock matches 20000..23999 run bossbar set bossbarclock:clock color pink

execute if score #bossbarclock$real_day_cycle Config matches 1 run function bossbarclock:clock/real_day_cycle
execute store result bossbar bossbarclock:clock value run scoreboard players get #daytime bossbarclock

data modify storage bossbarclock:temp time set value {hour:0,12hr_hour:0,minute:[0]}
execute store result score #time.minute bossbarclock run scoreboard players operation #time.hour bossbarclock = #daytime bossbarclock
scoreboard players operation #time.hour bossbarclock /= #1000 num
execute store result storage bossbarclock:temp time.hour int 1 store result score #time.12hr_hour bossbarclock run scoreboard players get #time.hour bossbarclock
execute if score #time.12hr_hour bossbarclock matches 13.. run scoreboard players remove #time.12hr_hour bossbarclock 12
execute store result storage bossbarclock:temp time.12hr_hour int 1 run scoreboard players get #time.12hr_hour bossbarclock
scoreboard players operation #time.minute bossbarclock %= #1000 num
scoreboard players operation #time.minute bossbarclock *= #100 num
scoreboard players operation #time.minute bossbarclock /= #20 num
scoreboard players operation #time.minute bossbarclock *= #12 num
execute store result storage bossbarclock:temp time.minute[0] int 1 run scoreboard players operation #time.minute bossbarclock /= #1000 num
execute if score #time.minute bossbarclock matches ..9 run data modify storage bossbarclock:temp time.minute prepend value 0

execute if score #bossbarclock$12hr_clock Config matches 0 run bossbar set bossbarclock:clock name {"translate":"%s - %s","with":[{"translate":"Day %s","with":[{"score":{"name":"#day","objective":"bossbarclock"},"color":"yellow"}],"color":"white"},{"translate":"%s:%s","with":[{"storage":"bossbarclock:temp","nbt":"time.hour","interpret":true,"color":"yellow"},{"storage":"bossbarclock:temp","nbt":"time.minute","interpret":true,"color":"yellow"}],"color":"white"}],"color":"dark_gray"}
execute if score #bossbarclock$12hr_clock Config matches 1 if score #time.hour bossbarclock matches ..11 run bossbar set bossbarclock:clock name {"translate":"%s - %s","with":[{"translate":"Day %s","with":[{"score":{"name":"#day","objective":"bossbarclock"},"color":"yellow"}],"color":"white"},{"translate":"%s:%s %s","with":[{"storage":"bossbarclock:temp","nbt":"time.12hr_hour","interpret":true,"color":"yellow"},{"storage":"bossbarclock:temp","nbt":"time.minute","interpret":true,"color":"yellow"},{"text":"AM","color":"green"}],"color":"white"}],"color":"dark_gray"}
execute if score #bossbarclock$12hr_clock Config matches 1 if score #time.hour bossbarclock matches 12.. run bossbar set bossbarclock:clock name {"translate":"%s - %s","with":[{"translate":"Day %s","with":[{"score":{"name":"#day","objective":"bossbarclock"},"color":"yellow"}],"color":"white"},{"translate":"%s:%s %s","with":[{"storage":"bossbarclock:temp","nbt":"time.12hr_hour","interpret":true,"color":"yellow"},{"storage":"bossbarclock:temp","nbt":"time.minute","interpret":true,"color":"yellow"},{"text":"PM","color":"aqua"}],"color":"white"}],"color":"dark_gray"}

execute unless score #daytime bossbarclock matches 0 unless score #alarm bossbarclock matches 0 run scoreboard players set #alarm bossbarclock 0
execute if score #daytime bossbarclock matches 0 if score #alarm bossbarclock matches 0 store success score #alarm bossbarclock as @a[scores={bossbarclock.clockStatus=1}] at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 4.0 0 1.0
