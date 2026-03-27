scoreboard players set @s leash_fences.raycast_hit 0
scoreboard players set @s leash_fences.raycast_distance 0

tag @s add leash_fences.raycasting

function leash_fences:app/raycast/ray

tag @s remove leash_fences.raycasting