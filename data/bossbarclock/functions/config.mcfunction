############################################
# General                                  #
############################################

# Allow version prompt print out while initializing
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #bossbarclock$print_version Config 2

# Allow initial prompt print out while initializing
# boolean, default: 0
scoreboard players set #bossbarclock$print_init Config 0

# Allow config prompt print out while initializing
# boolean, default: 0
scoreboard players set #bossbarclock$print_config Config 0



############################################
# Clock                                    #
############################################

# Display method
# 0 = only toggles by using /trigger, 1 = only if holding a clock(or more than one), 2 = when inventory has a clock(or more than one), 3 = display anyway
# integer, default: 1
scoreboard players set #bossbarclock$display_method Config 1

# Allow toggle clock prompt print out while initializing
# 0 = don't print anything, 1 = only print while display method is 0, 2 = print anyway
# integer, default: 1
scoreboard players set #bossbarclock$print_toggle_clock Config 1

# Enable orderless clock
# controls to show or not the orderless clock when in other dimensions.
# 0 = don't show the orderless clock, 1 = show the orderless clock when in other dimensions
# boolean, default: 0
scoreboard players set #bossbarclock$orderless Config 0

# Enable real day cycle
# make the start of day cycle more real.
# 0 = cycle start at morning(MC time tick: 0), 1 = cycle start at midnight(MC time tick: 18000)
# boolean, default: 0
scoreboard players set #bossbarclock$day_cycle_real Config 0

# Enable 12-hour clock
# boolean, default: 1
scoreboard players set #bossbarclock$time_12hr Config 1
