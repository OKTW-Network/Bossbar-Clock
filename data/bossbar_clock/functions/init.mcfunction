scoreboard objectives add bossbar_clock dummy
scoreboard objectives add showclock dummy
bossbar add clock ""
bossbar set minecraft:clock visible true
bossbar set minecraft:clock max 24000
bossbar set minecraft:clock style notched_6
summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"Bossbar Clock\",\"color\":\"gold\"}]",Tags:["temp"]}
execute as @e[tag=temp] run say Bossbar Clock Initialized!
kill @e[type=minecraft:armor_stand,tag=temp]
tellraw @a [{"text":"[","color":"white"},{"text":"Bossbar Clock","color":"gold"},{"text":"] ","color":"white"},{"text":"將自己的分數 [","color":"white"},{"text":"showclock","color":"yellow"},{"text":"] ","color":"white"},{"text":"設置成 1 以顯示時鐘","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set @s showclock 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"點一下即可立即設置","color":"gold"}]}}},{"text":"，","color":"white"},{"text":"設置為 0 即可關閉","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set @s showclock 0"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"點一下即可立即設置","color":"gold"}]}}}]