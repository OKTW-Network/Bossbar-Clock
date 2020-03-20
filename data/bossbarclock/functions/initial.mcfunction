function bossbarclock:meta/scoreboard/register
function bossbarclock:config
function bossbarclock:check-version

execute as @a[tag=!InitializedBossbarclockScore] run function bossbarclock:meta/scoreboard/set_player_score
function bossbarclock:meta/scoreboard/set_score

function bossbarclock:meta/storage/register

function bossbarclock:meta/bossbar/register
execute as @a[tag=!InitializedBossbarclockBossbar] run function bossbarclock:meta/bossbar/set_player_visible

# summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"Bossbar Clock\",\"color\":\"gold\"}]",Tags:["clock_temp"]}
# execute as @e[tag=clock_temp] run say Bossbar Clock Initialized!
# kill @e[type=minecraft:armor_stand,tag=clock_temp]
# tellraw @a [{"text":"[","color":"white"},{"text":"Bossbar Clock","color":"gold"},{"text":"] ","color":"white"},{"text":"顯示時鐘","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger showclock set 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"點一下即可設置","color":"gold"}]}}},{"text":"，","color":"white"},{"text":"關閉時鐘","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger showclock set 0"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"點一下即可設置","color":"gold"}]}}}]

execute if score #bossbarclock_print_init Config matches 1 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
execute if score #bossbarclock_print_toggle_clock Config matches 1 if score #bossbarclock_display_method Config matches 0 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"> Toggle Clock <","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger showClock add 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle","color":"green"}]}}}]
execute if score #bossbarclock_print_toggle_clock Config matches 2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"> Toggle Clock <","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger showClock add 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle","color":"green"}]}}}]
