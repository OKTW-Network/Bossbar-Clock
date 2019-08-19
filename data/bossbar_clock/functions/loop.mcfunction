bossbar set minecraft:clock players @a[scores={showclock=1}]
scoreboard players enable @a showclock
execute store result bossbar minecraft:clock value run time query daytime
execute store result score #daytime bossbar_clock run time query daytime
execute store result score #day bossbar_clock run time query day
execute as @a[scores={showclock=1}] at @s if score #daytime bossbar_clock matches 5 run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 1 1 1
execute if score #daytime bossbar_clock matches 0..4000 run bossbar set clock name [{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"bossbar_clock"},"color":"yellow"},{"text":" 天 早上","color":"yellow"}]
execute if score #daytime bossbar_clock matches 0..4000 run bossbar set clock color green
execute if score #daytime bossbar_clock matches 4001..8000 run bossbar set clock name [{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"bossbar_clock"},"color":"yellow"},{"text":" 天 中午","color":"yellow"}]
execute if score #daytime bossbar_clock matches 4001..8000 run bossbar set clock color white
execute if score #daytime bossbar_clock matches 8001..12000 run bossbar set clock name [{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"bossbar_clock"},"color":"yellow"},{"text":" 天 下午","color":"yellow"}]
execute if score #daytime bossbar_clock matches 8001..12000 run bossbar set clock color blue
execute if score #daytime bossbar_clock matches 12001..16000 run bossbar set clock name [{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"bossbar_clock"},"color":"yellow"},{"text":" 天 傍晚","color":"yellow"}]
execute if score #daytime bossbar_clock matches 12001..16000 run bossbar set clock color yellow
execute if score #daytime bossbar_clock matches 16001..18000 run bossbar set clock name [{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"bossbar_clock"},"color":"yellow"},{"text":" 天 晚上","color":"yellow"}]
execute if score #daytime bossbar_clock matches 16001..18000 run bossbar set clock color purple
execute if score #daytime bossbar_clock matches 18001..23000 run bossbar set clock name [{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"bossbar_clock"},"color":"yellow"},{"text":" 天 午夜","color":"yellow"}]
execute if score #daytime bossbar_clock matches 18001..23000 run bossbar set clock color red
execute if score #daytime bossbar_clock matches 23001..23999 run bossbar set clock name [{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"bossbar_clock"},"color":"yellow"},{"text":" 天 清晨","color":"yellow"}]
execute if score #daytime bossbar_clock matches 23001..23999 run bossbar set clock color pink