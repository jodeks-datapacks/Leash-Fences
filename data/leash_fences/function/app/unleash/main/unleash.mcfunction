scoreboard players add @s leash_fences.fail 1
execute if score @s leash_fences.fail matches ..1 run return 0
scoreboard players set @s leash_fences.fail 0

execute as @s run function leash_fences:app/unleash/main/kill_check_unleash with entity @s

execute as @s run function leash_fences:app/unleash/kill_leash_entity