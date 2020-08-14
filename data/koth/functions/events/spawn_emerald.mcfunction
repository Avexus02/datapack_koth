summon item ~ ~100 ~ {Age: 4740s, Health: -1s, PickupDelay: 60s, Item:{id:"minecraft:emerald", Count: 1b, tag:{koth_item:"emerald", display:{Name:'{"text":"Emerald", "color":"green", "bold":true, "italic":false}', Lore:['[{"text":"Use ten of these to redeem a ", "color":"gray", "italic":false}, {"text":"random item!", "color":"aqua", "bold":true}]']}}}, Tags:["koth.emerald", "koth.emerald_temp"]}

spreadplayers ~ ~ 0 50 false @e[type = item, tag = koth.emerald_temp]
execute as @e[type = item, tag = koth.emerald_temp] at @s run tp ~ ~100 ~
tag @e[type = item, tag = koth.emerald_temp] remove koth.emerald_temp