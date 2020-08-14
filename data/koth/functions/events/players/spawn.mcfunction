summon area_effect_cloud ~ ~ ~ {Duration: 2s, Tags:["koth.temp_aec"]}
tag @s add koth.temp_aec
execute at @e[type = armor_stand, tag = koth.hill] run spreadplayers ~ ~ 80 40 false @e[tag = koth.temp_aec]
tag @s remove koth.temp_aec

gamemode adventure
tag @s add koth.loading
schedule function koth:events/players/spawn_load 1t