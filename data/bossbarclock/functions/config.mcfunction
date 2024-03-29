############################################
# General                                  #
############################################

# Print version on initializing
# integer, 0 ~ 2, default: 2
# values:
#  0: Do not print anything.
#  1: Only print if the version changed.
#  2: Always.
scoreboard players set #bossbarclock$general.print_version Config 2

############################################
# Clock                                    #
############################################

# Display method
# integer, 0 ~ 3, default: 1
# values:
#  0: Only toggles by using /trigger command.
#  1: Only if holding a clock.
#  2: Only if inventory has a clock.
#  3: Display anyway.
scoreboard players set #bossbarclock$display_method Config 1

# Print clock toggle on initializing
# integer, 0 ~ 2, default: 1
# values:
#  0: Do not print anything.
#  1: Only print if display method is 0.
#  2: Always.
scoreboard players set #bossbarclock$print_clock_toggle Config 1

# Alarm method
# How the clock sounds the alarm when a new day comes.
# integer, default: 3
# values:
#  0: Do not sound the alarm.
#  1: When displaying the clock, and only heard by self.
#  2: Based on 1, alarms by players who hold and display the clock can be heard by others.
#  3: Based on 2, item frames can sound the alarm individually.
scoreboard players set #bossbarclock$alarm_method Config 3

# Enable item frame clock display
# Displays when looking at the clock in the item frame.
# Boolean, default: 1
scoreboard players set #bossbarclock$item_frame_clock_display Config 1

# Enable orderless clock
# Show an orderless clock while in other dimensions.
# Boolean, default: 1
scoreboard players set #bossbarclock$show_orderless Config 1

# Enable real day cycle
# Starts the day at midnight(daytime: 18000) instead morning(daytime: 0).
# Boolean, default: 1
scoreboard players set #bossbarclock$real_day_cycle Config 1

# Enable 12-hour clock
# Boolean, default: 1
scoreboard players set #bossbarclock$12hr_clock Config 1
