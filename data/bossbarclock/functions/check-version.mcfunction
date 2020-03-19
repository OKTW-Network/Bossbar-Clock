function bossbarclock:version

scoreboard players operation #new_x.*.*-* Version = #bossbarclock_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #bossbarclock_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #bossbarclock_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #bossbarclock_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = #bossbarclock_currently_version_x.*.*-* Meta
scoreboard players operation #currently_*.x.*-* Version = #bossbarclock_currently_version_*.x.*-* Meta
scoreboard players operation #currently_*.*.x-* Version = #bossbarclock_currently_version_*.*.x-* Meta
scoreboard players operation #currently_*.*.*-x Version = #bossbarclock_currently_version_*.*.*-x Meta
function cu:version/check

function cu:version/build-new
function cu:version/build-currently

execute if score #none Version matches 1 if score #bossbarclock_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #higher Version matches 1 if score #bossbarclock_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"green"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #lower Version matches 1 if score #bossbarclock_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"red"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 0 if score #none Version matches 0 if score #bossbarclock_print_version Config matches 2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]

execute if score #change Version matches 1 run function bossbarclock:debug/clean_up-scoreboard

# execute if score #change Version matches 1 as @a run function bossbarclock:debug/clean_up-tag
execute if score #change Version matches 1 as @a run function bossbarclock:debug/remove-init_tag

scoreboard players operation #bossbarclock_currently_version_x.*.*-* Meta = #bossbarclock_version_x.*.*-* Meta
scoreboard players operation #bossbarclock_currently_version_*.x.*-* Meta = #bossbarclock_version_*.x.*-* Meta
scoreboard players operation #bossbarclock_currently_version_*.*.x-* Meta = #bossbarclock_version_*.*.x-* Meta
scoreboard players operation #bossbarclock_currently_version_*.*.*-x Meta = #bossbarclock_version_*.*.*-x Meta
