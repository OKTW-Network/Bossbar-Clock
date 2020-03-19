# bossbar color
## MC day cycle
execute if score #bossbarclock_day_cycle_real Config matches 0 if score #daytime BossbarClock matches 0..4000 run bossbar set bossbarclock:clock color yellow
execute if score #bossbarclock_day_cycle_real Config matches 0 if score #daytime BossbarClock matches 4001..8000 run bossbar set bossbarclock:clock color white
execute if score #bossbarclock_day_cycle_real Config matches 0 if score #daytime BossbarClock matches 8001..12000 run bossbar set bossbarclock:clock color yellow
execute if score #bossbarclock_day_cycle_real Config matches 0 if score #daytime BossbarClock matches 12001..16000 run bossbar set bossbarclock:clock color pink
execute if score #bossbarclock_day_cycle_real Config matches 0 if score #daytime BossbarClock matches 16001..20000 run bossbar set bossbarclock:clock color purple
execute if score #bossbarclock_day_cycle_real Config matches 0 if score #daytime BossbarClock matches 20001..23999 run bossbar set bossbarclock:clock color pink

## real day cycle
execute if score #bossbarclock_day_cycle_real Config matches 1 if score #daytime BossbarClock matches 0..4000 run bossbar set bossbarclock:clock color purple
execute if score #bossbarclock_day_cycle_real Config matches 1 if score #daytime BossbarClock matches 4001..8000 run bossbar set bossbarclock:clock color pink
execute if score #bossbarclock_day_cycle_real Config matches 1 if score #daytime BossbarClock matches 8001..12000 run bossbar set bossbarclock:clock color yellow
execute if score #bossbarclock_day_cycle_real Config matches 1 if score #daytime BossbarClock matches 12001..16000 run bossbar set bossbarclock:clock color white
execute if score #bossbarclock_day_cycle_real Config matches 1 if score #daytime BossbarClock matches 16001..20000 run bossbar set bossbarclock:clock color yellow
execute if score #bossbarclock_day_cycle_real Config matches 1 if score #daytime BossbarClock matches 20001..23999 run bossbar set bossbarclock:clock color pink

# bossbar value
execute store result bossbar bossbarclock:clock value run scoreboard players get #daytime BossbarClock

# bossbar name
execute if score #bossbarclock_day_cycle_real Config matches 0 run function bossbarclock:real_day_cycle-time
function bossbarclock:calculate-time
execute if score #bossbarclock_time_12hr Config matches 0 run bossbar set bossbarclock:clock name [{"text":"Day ","color":"white"},{"score":{"name":"#day","objective":"BossbarClock"},"color":"yellow"},{"text":" - ","color":"gray"},{"score":{"name":"#calculation_temp1","objective":"numeric"},"color":"yellow"},{"text":":","color":"white"},{"nbt":"time.minute","storage":"bossbarclock:resources","interpret":true,"color":"yellow"}]
execute if score #bossbarclock_time_12hr Config matches 1 if score #AM BossbarClock matches 1 run bossbar set bossbarclock:clock name [{"text":"Day ","color":"white"},{"score":{"name":"#day","objective":"BossbarClock"},"color":"yellow"},{"text":" - ","color":"gray"},{"score":{"name":"#calculation_temp1","objective":"numeric"},"color":"yellow"},{"text":":","color":"white"},{"nbt":"time.minute","storage":"bossbarclock:resources","interpret":true,"color":"yellow"},{"text":" AM","color":"green"}]
execute if score #bossbarclock_time_12hr Config matches 1 if score #AM BossbarClock matches 0 run bossbar set bossbarclock:clock name [{"text":"Day ","color":"white"},{"score":{"name":"#day","objective":"BossbarClock"},"color":"yellow"},{"text":" - ","color":"gray"},{"score":{"name":"#calculation_temp1","objective":"numeric"},"color":"yellow"},{"text":":","color":"white"},{"nbt":"time.minute","storage":"bossbarclock:resources","interpret":true,"color":"yellow"},{"text":" PM","color":"aqua"}]
