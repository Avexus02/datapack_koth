execute as @e[type = armor_stand, tag = koth.hill] at @s run function koth:behaviors/hill
execute as @a[tag = koth.player] at @s run function koth:behaviors/players/half_second
execuet as @e[type = area_effect_cloud, tag = koth.blizzard_set] at @s run function koth:behaviors/blizzard

schedule function koth:loops/half_second 10t