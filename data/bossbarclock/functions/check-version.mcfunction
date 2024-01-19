execute if score #bossbarclock$general.print_version Config matches 1..2 run function bossbarclock:broadcast_version

function bossbarclock:version
scoreboard players operation #bossbarclock$previous_version.x Meta = #bossbarclock$current_version.x Meta
scoreboard players operation #bossbarclock$previous_version.y Meta = #bossbarclock$current_version.y Meta
scoreboard players operation #bossbarclock$previous_version.z Meta = #bossbarclock$current_version.z Meta
data modify storage meta:bossbarclock previous_version.t set from storage meta:bossbarclock current_version.t
scoreboard players operation #bossbarclock$current_version.x Meta = #bossbarclock$version.x Meta
scoreboard players operation #bossbarclock$current_version.y Meta = #bossbarclock$version.y Meta
scoreboard players operation #bossbarclock$current_version.z Meta = #bossbarclock$version.z Meta
data modify storage meta:bossbarclock current_version.t set from storage meta:bossbarclock version.t
