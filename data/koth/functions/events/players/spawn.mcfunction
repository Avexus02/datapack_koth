execute at @e[type = armor_stand, tag = koth_hill, limit = 1] run summon armor_stand ~ ~ ~ {Marker: 1b, Invisible: 1b, Tags:["koth_spawn"]}
execute as @e[type = armor_stand, tag = koth_spawn] at @s run spreadplayers ~ ~ 25 50 false @s

execute positioned as @e[type = armor_stand, tag = koth_spawn] facing entity @e[type = armor_stand, tag = koth_hill, limit = 1] eyes run tp ~ ~ ~
gamemode adventure
kill @e[type = armor_stand, tag = koth_spawn]
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.05 50
