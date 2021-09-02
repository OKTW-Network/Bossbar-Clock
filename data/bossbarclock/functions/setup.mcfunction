gamerule maxCommandChainLength 2147483647

scoreboard objectives add Config dummy

datapack disable "file/Bossbar-Clock"
datapack disable "file/Bossbar-Clock.zip"

execute store result score #bossbarclock$fileIsZip Meta run scoreboard players set #bossbarclock$fileType Meta 0

execute if score #cu$fileType Meta matches 1 store success score #bossbarclock$fileType Meta run datapack enable "file/Bossbar-Clock" after "file/Creative-utilities"
execute if score #cu$fileType Meta matches 0 store success score #bossbarclock$fileType Meta run datapack enable "file/Bossbar-Clock" after "file/Creative-utilities.zip"
execute unless score #bossbarclock$fileType Meta matches 1 if score #cu$fileType Meta matches 1 store success score #bossbarclock$fileIsZip Meta run datapack enable "file/Bossbar-Clock.zip" after "file/Creative-utilities"
execute unless score #bossbarclock$fileType Meta matches 1 if score #cu$fileType Meta matches 0 store success score #bossbarclock$fileIsZip Meta run datapack enable "file/Bossbar-Clock.zip" after "file/Creative-utilities.zip"

scoreboard players set #bossbarclock$setup Meta 1
execute if score #bossbarclock$fileType Meta matches 0 if score #bossbarclock$fileIsZip Meta matches 0 run scoreboard players set #bossbarclock$setup Meta -1
