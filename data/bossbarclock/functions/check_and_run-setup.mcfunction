scoreboard objectives add Meta dummy

function bossbarclock:check-dependency

execute if score #bossbarclock$dependency_missing Meta matches 0 if score #math$setup Meta matches 1 if score #cu$setup Meta matches 1 unless score #bossbarclock$setup Meta matches 1 run function bossbarclock:setup
