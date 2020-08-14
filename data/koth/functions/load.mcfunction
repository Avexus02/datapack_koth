# Create resources.
scoreboard objectives add koth.points dummy {"text":"Points", "color":"green", "bold":true}
scoreboard objectives add koth.vars dummy {"text":"Variables", "color":"blue", "bold":true}
scoreboard objectives add koth.consts dummy {"text":"Constants", "color":"blue", "bold":true}
scoreboard objectives add koth.jump minecraft.custom:minecraft.jump

scoreboard objectives add koth.fw.life dummy
scoreboard objectives add koth.fw.lifetime dummy

team add koth_players {"text":"Players", "color":"green", "bold":true}

bossbar add koth_timer {"text":"Time Remaining", "color":"white", "bold":true}

scoreboard players set $time koth.vars 600
scoreboard players set $in_session koth.vars 0

scoreboard players set 0 koth.consts 0
scoreboard players set 15 koth.consts 15

scoreboard objectives setdisplay sidebar koth.points

# Ensure the hill marker entity is spawned.
execute unless entity @e[type = armor_stand, tag = koth.hill] run summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, CustomName:'{"text":"The Hill", "color":"green", "bold":true}', CustomNameVisible: 1b, Tags:["koth.hill"]}

# Ensure other entities are spawned.
# execute unless entity @e[type = area_effect_cloud, tag = ]

# Run loops.
function #koth:loops

# Set title.
title @a actionbar [{"text":"King of the Hill", "color": "green", "bold": true}, {"text":" has reloaded successfully!", "color": "white", "bold": false}]