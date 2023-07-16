data modify storage cu:version broadcast_relation.input.datapack_name set value '{"text":"Bossbar Clock"}'
scoreboard players operation #version.broadcast_relation.input.method cu = #bossbarclock$general.print_version Config
function bossbarclock:version
scoreboard players operation #version.broadcast_relation.input_1.x cu = #bossbarclock$version.x Meta
scoreboard players operation #version.broadcast_relation.input_1.y cu = #bossbarclock$version.y Meta
scoreboard players operation #version.broadcast_relation.input_1.z cu = #bossbarclock$version.z Meta
data modify storage cu:version broadcast_relation.input_1.t set from storage meta:bossbarclock version.t
scoreboard players operation #version.broadcast_relation.input_2.x cu = #bossbarclock$current_version.x Meta
scoreboard players operation #version.broadcast_relation.input_2.y cu = #bossbarclock$current_version.y Meta
scoreboard players operation #version.broadcast_relation.input_2.z cu = #bossbarclock$current_version.z Meta
data modify storage cu:version broadcast_relation.input_2.t set from storage meta:bossbarclock current_version.t
function cu:version/broadcast_relation/main
