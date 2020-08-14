spreadplayers ~ ~ 0 1.5 false @s[tag = koth.blizzard_snowball_temp, tag = !koth.blizzard_snowball_temp_2]
tag @s[tag = koth.blizzard_snowball_temp] add koth.blizzard_snowball_temp_2

execute as @s[tag = !koth.blizzard_snowball_temp] run particle item_snowball ~ ~ ~ 0.1 0.1 0.1 4 5
execute as @s[tag = !koth_blizzard_snowball_temp] unless block ~ ~-1.25 ~ #air run summon creeper ~ ~ ~ {Fuse: 0b, ExplosionRadius: 2b, Silent: 1b, CustomName:'{"text":"Blizzard", "bold":true}'}