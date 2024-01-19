tag @s add bossbarclock._tag.ThisEntity

execute if score #bossbarclock$alarm_method Config matches 1.. run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 6.0 0 1.0
execute if score #bossbarclock$alarm_method Config matches 2.. if predicate bossbarclock:hold-clock run playsound minecraft:entity.player.levelup ambient @a[tag=!bossbarclock._tag.ThisEntity] ~ ~ ~ 0.4 0 1.0

tag @s remove bossbarclock._tag.ThisEntity
