execute at @a[tag = koth_player, scores = {koth_jump = 1}] run function koth:events/player_jump
execute at @e[type = item, tag = koth_emerald, nbt = {Age: 5999s}] run function koth:events/emerald_vanish

scoreboard players reset @a koth_jump