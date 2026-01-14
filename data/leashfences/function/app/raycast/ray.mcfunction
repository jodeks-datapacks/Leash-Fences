execute if block ~ ~ ~ #minecraft:fences run function leashfences:app/raycast/hit_block

scoreboard players add @s leashfences.raycast_distance 1

execute if score @s leashfences.raycast_hit matches 0 if score @s leashfences.raycast_distance matches ..50 positioned ^ ^ ^0.1 run function leashfences:app/raycast/ray