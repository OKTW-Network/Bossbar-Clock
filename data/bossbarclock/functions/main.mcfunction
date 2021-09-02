execute if score #bossbarclock$display_method Config matches 0 as @a run function bossbarclock:toggle-clock
execute if score #bossbarclock$display_method Config matches 1 as @a run function bossbarclock:meta/detector/hand-clock
execute if score #bossbarclock$display_method Config matches 2 as @a run function bossbarclock:meta/detector/have-clock
execute if score #bossbarclock$display_method Config matches 3 run scoreboard players set @a showClock 1
scoreboard players set @a[scores={showClock=2..}] showClock 0
scoreboard players set @a[scores={showClock=..-1}] showClock 1
bossbar set bossbarclock:clock players @a[scores={showClock=1},predicate=minecraft:dimension-overworld]
bossbar set bossbarclock:orderless_clock players @a[scores={showClock=1},predicate=!minecraft:dimension-overworld]

execute store result score #daytime BossbarClock run time query daytime
execute store result score #day BossbarClock run time query day
execute if score #bossbarclock$day_cycle_real Config matches 1 run function bossbarclock:real_day_cycle-day
execute if score #bossbarclock$day_cycle_real Config matches 1 run function bossbarclock:real_day_cycle-time

# alarm
execute if score #daytime BossbarClock matches 0 if score #alarm BossbarClock matches 0 run function bossbarclock:alarm-start
execute unless score #daytime BossbarClock matches 0 if score #alarm BossbarClock matches 1 run function bossbarclock:alarm-lift

execute if entity @a[scores={showClock=1},predicate=minecraft:dimension-overworld] run function bossbarclock:bossbar/clock
