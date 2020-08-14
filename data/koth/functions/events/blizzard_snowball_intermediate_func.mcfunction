execute positioned ~ ~20 ~ run data modify entity @s Pos[1] set from entity @e[type = area_effect_cloud, tag = koth.blizzard_set, sort = nearest, limit = 1] Pos[1]
data merge entity @s {Item:{id:"minecraft:snowball", Count: 1b}, NoGravity: 0b, Motion:[0d, -1d, 0d]}
tag @s remove koth.blizzard_snowball_temp
tag @s remove koth.blizzard_snowball_temp_2