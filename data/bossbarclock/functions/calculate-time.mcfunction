scoreboard players operation #1 calcu_temp = #daytime BossbarClock
scoreboard players operation #2 calcu_temp = #daytime BossbarClock
scoreboard players operation #1 calcu_temp /= #1000 num
scoreboard players operation #2 calcu_temp %= #1000 num

# hour
execute if score #bossbarclock$time_12hr Config matches 1 if score #1 calcu_temp matches ..11 run scoreboard players set #AM BossbarClock 1
execute if score #bossbarclock$time_12hr Config matches 1 if score #1 calcu_temp matches 12.. run scoreboard players set #AM BossbarClock 0
execute if score #bossbarclock$time_12hr Config matches 1 if score #1 calcu_temp matches 13.. run scoreboard players remove #1 calcu_temp 12

# minute
scoreboard players operation #2 calcu_temp *= #100 num
scoreboard players set #3 calcu_temp 20
scoreboard players operation #2 calcu_temp /= #3 calcu_temp
scoreboard players set #3 calcu_temp 12
scoreboard players operation #3 calcu_temp *= #2 calcu_temp
scoreboard players operation #3 calcu_temp /= #1000 num
data merge storage bossbarclock:resources {time:{minute:[0]}}
execute store result storage bossbarclock:resources time.minute[0] int 1 run scoreboard players get #3 calcu_temp
execute if score #3 calcu_temp matches ..9 run data modify storage bossbarclock:resources time.minute prepend value 0
