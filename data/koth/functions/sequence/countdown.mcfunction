scoreboard players remove $countdown koth_vars 1
playsound block.note_block.hat master @a ~ ~ ~ 1 1 1

execute if score $countdown koth_vars > 0 koth_consts run schedule function koth:sequence/countdown 1s