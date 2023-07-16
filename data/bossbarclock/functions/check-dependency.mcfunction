execute store success score #bossbarclock$dependency-math Meta run function math:meta/exist
execute store success score #bossbarclock$dependency-cu Meta run function cu:meta/exist

scoreboard players set #bossbarclock$dependency_missing Meta 0
execute if score #bossbarclock$dependency-math Meta matches 0 run scoreboard players set #bossbarclock$dependency_missing Meta 1
execute if score #bossbarclock$dependency-cu Meta matches 0 run scoreboard players set #bossbarclock$dependency_missing Meta 1

execute if score #bossbarclock$dependency_missing Meta matches 1 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Missing dependency: ","color":"red"}]
execute if score #bossbarclock$dependency-math Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Math Integraion","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Math-Integration"}}]
execute if score #bossbarclock$dependency-cu Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Creative Utilities","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Creative-Utilities"}}]

execute unless entity @a if score #bossbarclock$dependency_missing Meta matches 1 run say [Bossbar Clock] Missing dependency:
execute unless entity @a if score #bossbarclock$dependency-math Meta matches 0 run say  - Math Integraion (https://github.com/OKTW-Network/Math-Integration)
execute unless entity @a if score #bossbarclock$dependency-cu Meta matches 0 run say  - Creative Utilities (https://github.com/OKTW-Network/Creative-Utilities)
