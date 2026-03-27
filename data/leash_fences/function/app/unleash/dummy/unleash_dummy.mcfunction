scoreboard players add @s leash_fences.fail_leash 1
execute if score @s leash_fences.fail_leash matches ..1 run return 0
scoreboard players set @s leash_fences.fail_leash 0

execute as @s run function leash_fences:app/unleash/dummy/kill_check_unleash_dummy with entity @s

execute as @s run function leash_fences:app/unleash/kill_leash_entity