scoreboard players operation #calculation_temp1 numeric = #daytime BossbarClock
scoreboard players operation #calculation_temp2 numeric = #daytime BossbarClock
scoreboard players operation #calculation_temp1 numeric /= #static_1000 numeric
scoreboard players operation #calculation_temp2 numeric %= #static_1000 numeric

# hour
execute if score #bossbarclock_time_12hr Config matches 1 if score #calculation_temp1 numeric matches ..11 run scoreboard players set #AM BossbarClock 1
execute if score #bossbarclock_time_12hr Config matches 1 if score #calculation_temp1 numeric matches 12.. run scoreboard players set #AM BossbarClock 0
execute if score #bossbarclock_time_12hr Config matches 1 if score #calculation_temp1 numeric matches 13.. run scoreboard players remove #calculation_temp1 numeric 12

# minute
scoreboard players operation #calculation_temp2 numeric *= #static_100 numeric
scoreboard players set #calculation_temp3 numeric 20
scoreboard players operation #calculation_temp2 numeric /= #calculation_temp3 numeric
scoreboard players set #calculation_temp3 numeric 12
scoreboard players operation #calculation_temp3 numeric *= #calculation_temp2 numeric
scoreboard players operation #calculation_temp3 numeric /= #static_1000 numeric
data merge storage bossbarclock:resources {time:{minute:[0]}}
execute store result storage bossbarclock:resources time.minute[0] int 1 run scoreboard players get #calculation_temp3 numeric
execute if score #calculation_temp3 numeric matches ..9 run data modify storage bossbarclock:resources time.minute prepend value 0
