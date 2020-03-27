bossbar add bossbarclock:clock ""
bossbar set bossbarclock:clock visible true
bossbar set bossbarclock:clock max 24000
bossbar set bossbarclock:clock style notched_6

bossbar add bossbarclock:orderless_clock [{"text":"Day ","color":"white"},{"text":"??","color":"yellow","obfuscated":true},{"text":" - ","color":"gray"},{"text":"??","color":"yellow","obfuscated":true},{"text":":","color":"white"},{"text":"??","color":"yellow","obfuscated":true},{"text":" ??","color":"gray","obfuscated":true}]
bossbar set bossbarclock:orderless_clock visible true
bossbar set bossbarclock:orderless_clock max 1
bossbar set bossbarclock:orderless_clock value 1
bossbar set bossbarclock:orderless_clock style notched_6
bossbar set bossbarclock:orderless_clock color red
