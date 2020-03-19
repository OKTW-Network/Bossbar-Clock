execute if score #bossbarclock_display_method Config matches 0 as @a run function bossbarclock:toggle-clock
execute if score #bossbarclock_display_method Config matches 1 as @a run function bossbarclock:meta/detector/hand-clock
execute if score #bossbarclock_display_method Config matches 2 as @a run function bossbarclock:meta/detector/have-clock
execute if score #bossbarclock_display_method Config matches 3 run scoreboard players set @a showClock 1
scoreboard players set @a[scores={showClock=2..}] showClock 0
scoreboard players set @a[scores={showClock=..-1}] showClock 1
bossbar set bossbarclock:clock players @a[scores={showClock=1}]

execute store result score #daytime BossbarClock run time query daytime
execute store result score #day BossbarClock run time query day
execute if score #bossbarclock_day_cycle_real Config matches 1 run function bossbarclock:real_day_cycle-day
execute if score #bossbarclock_day_cycle_real Config matches 1 run function bossbarclock:real_day_cycle-time

# sound effect
execute if score #daytime BossbarClock matches 0 as @a[scores={showClock=1}] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~

execute if entity @a[scores={showClock=1}] run function bossbarclock:bossbar/clock
