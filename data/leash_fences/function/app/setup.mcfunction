scoreboard objectives add jodek.config dummy
execute unless score &leash_fences_load_message jodek.config = &leash_fences_load_message jodek.config run scoreboard players set &leash_fences_load_message jodek.config 1
execute unless score &leash_fences_advancements jodek.config = &leash_fences_advancements jodek.config run scoreboard players set &leash_fences_advancements jodek.config 1

scoreboard objectives add leash_fences.image dummy

scoreboard objectives add leash_fences.raycast_hit dummy
scoreboard objectives add leash_fences.raycast_distance dummy
scoreboard objectives add leash_fences.raycast_check dummy
scoreboard objectives add leash_fences.raycast_start dummy

scoreboard objectives add leash_fences.check dummy

scoreboard objectives add leash_fences.leash_connected_to_self dummy

scoreboard objectives add leash_fences.fail dummy
scoreboard objectives add leash_fences.fail_leash dummy

scoreboard objectives add leash_fences.leash_pos_x dummy
scoreboard objectives add leash_fences.leash_pos_y dummy
scoreboard objectives add leash_fences.leash_pos_z dummy

kill @e[type=interaction,tag=leash_fences.interaction]

function leash_fences:config/image

advancement revoke @s only leash_fences:run_start_ray
advancement revoke @s only leash_fences:kill_interaction
advancement revoke @s only leash_fences:interacted_with_interaction