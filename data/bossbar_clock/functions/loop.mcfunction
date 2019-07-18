bossbar set minecraft:clock players @a[scores={showclock=1}]
execute store result bossbar minecraft:clock value run time query daytime
execute store result score #daytime dummy run time query daytime
execute store result score #day dummy run time query day
execute if score #daytime dummy matches 0..6000 run bossbar set clock name [{"text":"現在時間: ","color":"green"},{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"dummy"},"color":"yellow"},{"text":" 天 早上","color":"yellow"}]
execute if score #daytime dummy matches 0..6000 run bossbar set clock color green
execute if score #daytime dummy matches 6001..13000 run bossbar set clock name [{"text":"現在時間: ","color":"aqua"},{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"dummy"},"color":"yellow"},{"text":" 天 中午","color":"yellow"}]
execute if score #daytime dummy matches 6001..13000 run bossbar set clock color blue
execute if score #daytime dummy matches 13001..18000 run bossbar set clock name [{"text":"現在時間: ","color":"yellow"},{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"dummy"},"color":"yellow"},{"text":" 天 傍晚","color":"yellow"}]
execute if score #daytime dummy matches 13001..18000 run bossbar set clock color yellow
execute if score #daytime dummy matches 18001..23999 run bossbar set clock name [{"text":"現在時間: ","color":"light_purple"},{"text":"第 ","color":"yellow"},{"score":{"name":"#day","objective":"dummy"},"color":"yellow"},{"text":" 天 晚上","color":"yellow"}]
execute if score #daytime dummy matches 18001..23999 run bossbar set clock color purple