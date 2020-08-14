execute at @a[tag = koth.loading] run particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.05 50
execute as @e[tag = koth.loading] positioned as @s facing entity @e[type = armor_stand, tag = koth.hill] eyes run tp ~ ~ ~
tag @a remove koth_loading