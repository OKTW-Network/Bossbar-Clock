scoreboard players operation #calculation_temp1 numeric = #daytime BossbarClock
scoreboard players add #calculation_temp1 numeric 6000
execute if score #calculation_temp1 numeric matches 24000.. run scoreboard players add #day BossbarClock 1
