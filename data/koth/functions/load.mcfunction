# Create resources.
scoreboard objectives add koth_points dummy {"text":"Points", "color":"green", "bold":true}
scoreboard objectives add koth_vars dummy {"text":"Variables", "color":"blue", "bold":true}
scoreboard objectives add koth_consts dummy {"text":"Constants", "color":"blue", "bold":true}
scoreboard objectives add koth_jump minecraft.custom:minecraft.jump

team add koth_players {"text":"Players", "color":"green", "bold":true}

bossbar add koth_timer {"text":"Time Remaining", "color":"white", "bold":true}

scoreboard players set $time koth_vars 600
scoreboard players set $in_session koth_vars 0
scoreboard players set 0 koth_consts 0

scoreboard objectives setdisplay sidebar koth_points

# Ensure the hill marker entity is spawned.
execute unless entity @e[type = armor_stand, tag = koth_hill] run summon armor_stand 0 0 0 {Marker: 1b, Invisible: 1b, CustomName:'{"text":"The Hill", "color":"green", "bold":true}', CustomNameVisible: 1b, Tags:["koth_hill"]}

# Run loops.
function #koth:loops

# Set title.
title @a actionbar [{"text":"King of the Hill", "color": "green", "bold": true}, {"text":" has reloaded successfully!", "color": "white", "bold": false}]