function bossbarclock:meta/scoreboard/register
function bossbarclock:config
function bossbarclock:check-version

execute as @a[tag=!InitializedBossbarclockScore] run function bossbarclock:meta/scoreboard/set_player_score
function bossbarclock:meta/scoreboard/set_score

function bossbarclock:meta/storage/register

function bossbarclock:meta/bossbar/register
execute as @a[tag=!InitializedBossbarclockBossbar] run function bossbarclock:meta/bossbar/set_player_visible

execute if score #bossbarclock_print_init Config matches 1 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
execute if score #bossbarclock_print_toggle_clock Config matches 1 if score #bossbarclock_display_method Config matches 0 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"> Toggle Clock <","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger showClock add 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle","color":"green"}]}}}]
execute if score #bossbarclock_print_toggle_clock Config matches 2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"> Toggle Clock <","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger showClock add 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle","color":"green"}]}}}]
