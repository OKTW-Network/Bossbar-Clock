scoreboard players operation #new_x.*.*-* Version = #math_currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #math_currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #math_currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #math_currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionBbClockX
scoreboard players operation #currently_*.x.*-* Version = @s VersionBbClockY
scoreboard players operation #currently_*.*.x-* Version = @s VersionBbClockZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionBbClockA
function cu:version/check

execute if score #change Version matches 1 run function math:debug/remove-init_tag

scoreboard players operation @s VersionBbClockX = #math_currently_version_x.*.*-* Meta
scoreboard players operation @s VersionBbClockY = #math_currently_version_*.x.*-* Meta
scoreboard players operation @s VersionBbClockZ = #math_currently_version_*.*.x-* Meta
scoreboard players operation @s VersionBbClockA = #math_currently_version_*.*.*-x Meta
