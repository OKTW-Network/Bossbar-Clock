# Bossbar Clock

A Minecraft data pack that displays a clock on a bossbar.

## Feature

Displays day and time dynamically to the bossbar.  
*The config file can be found by the path below:*  
`..\data\bossbarclock\functions\config`

### Clock displaying

The config file provides four options for display the clock:

1. `/trigger` command
2. Holding a clock
3. Inventory has a clock
4. Always display the clock

#### Command

Use the `/trigger` command if you are not cheatable nor a server operator:  
`/trigger bossbarclock.showClock set 1` - Enable the clock  
`/trigger bossbarclock.showClock set 0` - Disable the clock  
**Those command required config settings**

You can also use the command below if you have the permissions:  
`/scoreboard players set <ID> bossbarclock.showClock 1` - Enable the clock  
`/scoreboard players set <ID> bossbarclock.showClock 0` - Disable the clock

### 24-hour clock

The clock is displayed as a 12-hour clock by default, but making the clock show as a 24-hour clock is also possible.
