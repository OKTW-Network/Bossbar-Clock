function #bossbarclock:scoreboard-register
function #bossbarclock:storage-register
function #bossbarclock:bossbar-register

function #bossbarclock:config

function bossbarclock:check-version

execute as @a run function bossbarclock:initial-player

execute if score #bossbarclock$print_init Config matches 1 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]

execute if score #bossbarclock$print_toggle_clock Config matches 1 if score #bossbarclock$display_method Config matches 0 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"> Toggle Clock <","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger showClock add 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle","color":"green"}]}}}]
execute if score #bossbarclock$print_toggle_clock Config matches 2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"> Toggle Clock <","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger showClock add 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle","color":"green"}]}}}]
