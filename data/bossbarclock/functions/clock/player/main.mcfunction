execute unless score @s bossbarclock.showClock matches 0..1 run scoreboard players set @s bossbarclock.showClock 0

execute if score #bossbarclock$display_method Config matches 0 run scoreboard players enable @s bossbarclock.showClock
execute if score #bossbarclock$display_method Config matches 1 run function bossbarclock:clock/player/hold_clock
execute if score #bossbarclock$display_method Config matches 2 run function bossbarclock:clock/player/have_clock
execute if score #bossbarclock$display_method Config matches 3 run scoreboard players set @s bossbarclock.showClock 1

scoreboard players operation #showClock bossbarclock = @s bossbarclock.showClock
execute if score #showClock bossbarclock matches 0 if score #bossbarclock$item_frame_clock_display Config matches 1 if predicate bossbarclock:looking_at_item_frame_clock run scoreboard players set #showClock bossbarclock 1
scoreboard players operation @s bossbarclock.clockStatus = #showClock bossbarclock
execute if score @s bossbarclock.clockStatus matches 1 if score #bossbarclock$show_orderless Config matches 0 unless predicate minecraft:dimension-overworld run scoreboard players set @s bossbarclock.clockStatus -1
execute if score @s bossbarclock.clockStatus matches 1 if score #bossbarclock$show_orderless Config matches 1 unless predicate minecraft:dimension-overworld run scoreboard players set @s bossbarclock.clockStatus 2
