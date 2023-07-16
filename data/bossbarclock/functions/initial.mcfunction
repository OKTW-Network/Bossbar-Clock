function #bossbarclock:config

function #bossbarclock:scoreboard-register
function #bossbarclock:bossbar-register

function bossbarclock:check-version

execute as @a run function bossbarclock:initial-player

execute if score #bossbarclock$print_clock_toggle Config matches 1 if score #bossbarclock$display_method Config matches 0 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"> Toggle Clock <","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger bossbarclock.showClock add 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle","color":"green"}]}}}]
execute if score #bossbarclock$print_clock_toggle Config matches 2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"> Toggle Clock <","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger bossbarclock.showClock add 1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Click to toggle","color":"green"}]}}}]
