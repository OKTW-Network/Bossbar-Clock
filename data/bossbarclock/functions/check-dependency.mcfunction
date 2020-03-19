scoreboard players set #galaxy_dependency_missing Meta 0

execute store success score #galaxy_dependency-math Meta run function math:version
execute store success score #galaxy_dependency-cu Meta run function cu:version

execute if score #galaxy_dependency-math Meta matches 0 run scoreboard players set #galaxy_dependency_missing Meta 1
execute if score #galaxy_dependency-cu Meta matches 0 run scoreboard players set #galaxy_dependency_missing Meta 1
execute if score #galaxy_dependency_missing Meta matches 1 run tellraw @a ["",{"text":"[Galaxy]: ","color":"yellow","bold":true},{"text":"Missing dependency: ","color":"red"}]
execute if score #galaxy_dependency-math Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Math Integraion","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Math-integration"}}]
execute if score #galaxy_dependency-cu Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Creative Utilities","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Creative-utilities"}}]
