execute unless score #bossbarclock$general.print_version Config matches 0..2 run scoreboard players set #bossbarclock$general.print_version Config 2

execute unless score #bossbarclock$display_method Config matches 0..3 run scoreboard players set #bossbarclock$display_method Config 1
execute unless score #bossbarclock$print_clock_toggle Config matches 0..2 run scoreboard players set #bossbarclock$print_clock_toggle Config 1
execute unless score #bossbarclock$show_orderless Config matches 0..1 run scoreboard players set #bossbarclock$show_orderless Config 1
execute unless score #bossbarclock$real_day_cycle Config matches 0..1 run scoreboard players set #bossbarclock$real_day_cycle Config 1
execute unless score #bossbarclock$12hr_clock Config matches 0..1 run scoreboard players set #bossbarclock$12hr_clock Config 1
