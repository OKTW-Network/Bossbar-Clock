function bossbarclock:version

scoreboard players operation #new_x.*.*-* Version = #bossbarclock$version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #bossbarclock$version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #bossbarclock$version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #bossbarclock$version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = #bossbarclock$currently_version_x.*.*-* Meta
scoreboard players operation #currently_*.x.*-* Version = #bossbarclock$currently_version_*.x.*-* Meta
scoreboard players operation #currently_*.*.x-* Version = #bossbarclock$currently_version_*.*.x-* Meta
scoreboard players operation #currently_*.*.*-x Version = #bossbarclock$currently_version_*.*.*-x Meta
function cu:version/check

function cu:version/build-new
function cu:version/build-currently

execute if score #none Version matches 1 if score #bossbarclock$print_version Config matches 1..2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #higher Version matches 1 if score #bossbarclock$print_version Config matches 1..2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"green"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #lower Version matches 1 if score #bossbarclock$print_version Config matches 1..2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"red"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 0 if score #none Version matches 0 if score #bossbarclock$print_version Config matches 2 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]

scoreboard players operation #bossbarclock$currently_version_x.*.*-* Meta = #bossbarclock$version_x.*.*-* Meta
scoreboard players operation #bossbarclock$currently_version_*.x.*-* Meta = #bossbarclock$version_*.x.*-* Meta
scoreboard players operation #bossbarclock$currently_version_*.*.x-* Meta = #bossbarclock$version_*.*.x-* Meta
scoreboard players operation #bossbarclock$currently_version_*.*.*-x Meta = #bossbarclock$version_*.*.*-x Meta
