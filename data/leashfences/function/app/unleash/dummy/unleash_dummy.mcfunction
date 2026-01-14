scoreboard players add @s leashfences.fail_leash 1
execute if score @s leashfences.fail_leash matches ..1 run return 0
scoreboard players set @s leashfences.fail_leash 0

execute as @s run function leashfences:app/unleash/dummy/kill_check_unleash_dummy with entity @s

execute as @s run function leashfences:app/unleash/kill_leash_entity