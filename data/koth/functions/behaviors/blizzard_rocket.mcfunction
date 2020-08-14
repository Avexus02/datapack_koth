execute store result score @s koth.fw.life run data get entity @s Life
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.05 2

execute if score @s koth.fw.life >= @s koth.fw.lifetime run function koth:events/form_blizzard