scoreboard players set @s leashfences.raycast_hit 0
scoreboard players set @s leashfences.raycast_distance 0

tag @s add leashfences.raycasting

function leashfences:app/raycast/ray

tag @s remove leashfences.raycasting