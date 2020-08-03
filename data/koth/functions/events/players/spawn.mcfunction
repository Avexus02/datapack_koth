execute at @e[type = armor_stand, tag = koth_hill] run spreadplayers ~ ~ 25 50 false @s

execute facing entity @e[type = armor_stand, tag = koth_hill, limit = 1] eyes run tp ~ ~ ~
gamemode adventure
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.05 50
