execute at @a[tag = koth.player, scores = {koth.jump = 1}] run function koth:events/players/jump
execute at @e[type = item, tag = koth.emerald, nbt = {Age: 5999s}] run function koth:events/emerald_vanish

# Spread the powerups.
execute at @e[type = armor_stand, tag = koth.hill] run spreadplayers ~ ~ 0 50 false @e[type = item, tag = koth.powerup_temp]
tag @e[type = item, tag = koth.powerup] remove koth.powerup_temp

execute as @a[predicate = koth:has_powerup] at @s run function koth:events/powerup

execute as @e[type = firework_rocket, tag = !rocket_checked] store result score @s koth.fw.lifetime run data get entity @s LifeTime 1
scoreboard players remove @e[type = firework_rocket, tag = !rocket_checked] koth.fw.lifetime
tag @e[type = firework_rocket] add rocket_checked
execute as @e[type = firework_rocket, tag = rocket_checked] at @s run function koth:behaviors/blizzard_rocket

execute as @e[type = item, tag = !item_processed] run data modify entity @s Owner set from entity @s Thrower
execute as @e[type = item, tag = !item_processed] run data modify entity @s PickupDelay set value 0
tag @e[type = item] add item_processed

scoreboard players reset @a koth.jump