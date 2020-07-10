execute as @a[scores={showClock=1},predicate=minecraft:dimension-overworld] at @s run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~
scoreboard players set #alarm BossbarClock 1
