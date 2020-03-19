############################################
# General                                  #
############################################

# Allow version prompt print out
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #bossbarclock_print_version Config 2

# Allow initial prompt print out
# boolean, default: 0
scoreboard players set #bossbarclock_print_init Config 0

# Allow config prompt print out
# boolean, default: 0
scoreboard players set #bossbarclock_print_config Config 0



############################################
# Clock                                    #
############################################

# Display method
# 0 = only toggles by using /trigger, 1 = only if holding a clock(or more than one), 2 = when inventory has a clock(or more than one), 3 = display anyway
# integer, default: 1
scoreboard players set #bossbarclock_display_method Config 1

# Allow toggle clock prompt print out
# 0 = don't print anything, 1 = only print while display method is 0, 2 = print anyway
# boolean, default: 1
scoreboard players set #bossbarclock_print_toggle_clock Config 1

# Enable real day cycle
# make the start of day cycle more real
# 0 = cycle start at morning(MC time tick: 0), 1 = cycle start at midnight(MC time tick: 18000)
# boolean, default: 0
scoreboard players set #bossbarclock_day_cycle_real Config 0

# Enable 12-hour clock
# boolean, default: 1
scoreboard players set #bossbarclock_time_12hr Config 1



############# DO NOT MODIFY #############

execute if score #bossbarclock_print_config Config matches 1 run tellraw @a ["",{"text":"[Bossbar Clock]: ","color":"yellow","bold":true},{"text":"Config: "},{"text":"Settings loaded!"}]
