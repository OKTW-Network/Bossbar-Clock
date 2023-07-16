scoreboard players set #check_player_version.diff bossbarclock 0
execute unless score @s bossbarclock.meta.version.x = #bossbarclock$current_version.x Meta run scoreboard players set #check_player_version.diff bossbarclock 1
execute unless score @s bossbarclock.meta.version.y = #bossbarclock$current_version.y Meta run scoreboard players set #check_player_version.diff bossbarclock 1
execute unless score @s bossbarclock.meta.version.z = #bossbarclock$current_version.z Meta run scoreboard players set #check_player_version.diff bossbarclock 1
execute unless data storage meta:bossbarclock current_version{t:''} run scoreboard players set #check_player_version.diff bossbarclock 2
execute unless data storage meta:bossbarclock previous_version{t:''} run scoreboard players set #check_player_version.diff bossbarclock 2

# execute if score #check_player_version.diff bossbarclock matches 1 run
# execute if score #check_player_version.diff bossbarclock matches 2 run

scoreboard players operation @s bossbarclock.meta.version.x = #bossbarclock$current_version.x Meta
scoreboard players operation @s bossbarclock.meta.version.y = #bossbarclock$current_version.y Meta
scoreboard players operation @s bossbarclock.meta.version.z = #bossbarclock$current_version.z Meta
