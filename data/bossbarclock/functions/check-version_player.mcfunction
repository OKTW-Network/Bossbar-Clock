scoreboard players operation #new_x.*.*-* Version = #bossbarclock$currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #bossbarclock$currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #bossbarclock$currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #bossbarclock$currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionBbClockX
scoreboard players operation #currently_*.x.*-* Version = @s VersionBbClockY
scoreboard players operation #currently_*.*.x-* Version = @s VersionBbClockZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionBbClockA
function cu:version/check

execute if score #change Version matches 1 run function bossbarclock:debug/clean_up-init_tag

scoreboard players operation @s VersionBbClockX = #bossbarclock$currently_version_x.*.*-* Meta
scoreboard players operation @s VersionBbClockY = #bossbarclock$currently_version_*.x.*-* Meta
scoreboard players operation @s VersionBbClockZ = #bossbarclock$currently_version_*.*.x-* Meta
scoreboard players operation @s VersionBbClockA = #bossbarclock$currently_version_*.*.*-x Meta
