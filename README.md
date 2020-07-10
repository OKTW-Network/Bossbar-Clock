
# Bossbar Clock

A clock on the bossbar.

## Feature

An in-game clock on the bossbar, can display at 12hr-clock or 24hr-clock.

### Clock displaying

The config file provides four options for display the clock:

1. `/trigger` command
2. Holding a clock
3. Inventory has a clock
4. Always display the clock

*The config file can be found by the path below:*  
`..\data\bossbarclock\functions\config`

#### Command

Use the `/trigger` command if you are not cheatable or not a server operator:  
`/trigger showClock set 1` - Enable the clock  
`/trigger showClock set 0` - Disable the clock  
**Those command required config settings**

You can also use the command below if you have the permissions:  
`/scoreboard players set <ID> showClock 1` - Enable the clock  
`/scoreboard players set <ID> showClock 0` - Disable the clock

### Real day cycle

The game's day cycle starts at 6 a.m, this may be weird when display on a clock, so the data pack also has an option in the config file made the day cycle **looks like** starts at midnight.

*The config file can be found by the path below:*  
`..\data\bossbarclock\functions\config`

### 24hr-clock

The clock is display at 12hr-clock by default, but make the clock display at 24hr-clock also possibles, see the option in the config file.

*The config file can be found by the path below:*  
`..\data\bossbarclock\functions\config`

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
