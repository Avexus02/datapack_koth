execute as @e[type = armor_stand, tag = koth.hill] at @s run function koth:behaviors/hill
execute as @a[tag = koth.player] at @s run function koth:behaviors/players/half_second
execute as @e[type = area_effect_cloud, tag = koth.blizzard_set] at @s run function koth:behaviors/blizzard
execute as @e[type = snowball, tag = koth.blizzard_snowball_temp_2] at @s run function koth:events/blizzard_snowball_intermediate_func

schedule function koth:loops/half_second 10t