scoreboard players add @s leashfences.fail 1
execute if score @s leashfences.fail matches ..1 run return 0
scoreboard players set @s leashfences.fail 0

execute as @s run function leashfences:app/unleash/main/kill_check_unleash with entity @s

execute as @s run function leashfences:app/unleash/kill_leash_entity