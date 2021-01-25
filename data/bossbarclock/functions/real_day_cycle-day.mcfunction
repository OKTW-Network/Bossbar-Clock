scoreboard players operation #1 calcu_temp = #daytime BossbarClock
scoreboard players add #1 calcu_temp 6000
execute if score #1 calcu_temp matches 24000.. run scoreboard players add #day BossbarClock 1
