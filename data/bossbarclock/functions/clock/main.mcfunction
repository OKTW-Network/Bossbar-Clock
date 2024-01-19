execute as @a at @s run function bossbarclock:clock/player/main

function bossbarclock:clock/refresh

bossbar set bossbarclock:clock players @a[scores={bossbarclock.clockStatus=1}]
bossbar set bossbarclock:orderless_clock players @a[scores={bossbarclock.clockStatus=2}]
