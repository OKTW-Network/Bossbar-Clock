
# Bossbar_Clock

A clock on the bossbar.

## Feature

### Clock displaying

The config file provides four options for display the clock:

1. `/trigger` command
2. Holding a clock
3. Inventory has a clock
4. Always display the clock

The config file can be found by the path below:  
`..\data\bossbarclock\functions\config`

#### Command

Use the `/trigger` command if you are not cheatable or not a server operator:  
`/trigger showClock set 1` - Enable the clock  
`/trigger showClock set 0` - Disable the clock  
**Those command required config settings**

You can also use the command below if you have the permissions:  
`/scoreboard players set <ID> showClock 1` - Enable the clock  
`/scoreboard players set <ID> showClock 0` - Disable the clock

## Required dependency

* [Math integration](https://github.com/OKTW-Network/Math-integration)
* [Creative utilities](https://github.com/OKTW-Network/Creative-utilities)

## Compatibility information

### Namespace

* bossbarclock

### Scoreboard objective

* BossbarClock
* showClock

### Tags

* InitializedBossbarclockScore
* InitializedBossbarclockBossbar
