# Check for emeralds, and clear them accordingly.
execute store result score @s koth.consts run clear @s emerald{koth_item:"emerald"} 0
execute if score @s koth.consts >= 15 koth.consts run function koth:events/players/give_item