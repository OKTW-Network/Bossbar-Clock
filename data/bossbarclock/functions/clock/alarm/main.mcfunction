execute as @a[scores={bossbarclock.clockStatus=1}] at @s run function bossbarclock:clock/alarm/player
execute if score #bossbarclock$alarm_method Config matches 3 as @e[type=#minecraft:item_frame,nbt={Item:{id:"minecraft:clock"}},predicate=minecraft:dimension-overworld] at @s run playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 0.4 0 1.0
