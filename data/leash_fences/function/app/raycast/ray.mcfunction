execute if block ~ ~ ~ #minecraft:fences run function leash_fences:app/raycast/hit_block

scoreboard players add @s leash_fences.raycast_distance 1

execute if score @s leash_fences.raycast_hit matches 0 if score @s leash_fences.raycast_distance matches ..50 positioned ^ ^ ^0.1 run function leash_fences:app/raycast/ray