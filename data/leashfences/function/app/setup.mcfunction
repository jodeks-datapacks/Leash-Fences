scoreboard objectives add leashfences.image dummy

scoreboard objectives add leashfences.raycast_hit dummy
scoreboard objectives add leashfences.raycast_distance dummy
scoreboard objectives add leashfences.raycast_check dummy
scoreboard objectives add leashfences.raycast_start dummy

scoreboard objectives add leashfences.check dummy

scoreboard objectives add leashfences.leash_connected_to_self dummy

scoreboard objectives add leashfences.fail dummy
scoreboard objectives add leashfences.fail_leash dummy

scoreboard objectives add leashfences.leash_pos_x dummy
scoreboard objectives add leashfences.leash_pos_y dummy
scoreboard objectives add leashfences.leash_pos_z dummy

kill @e[type=interaction,tag=leashfences.interaction]

function leashfences:config/image

advancement revoke @s only leashfences:run_start_ray
advancement revoke @s only leashfences:kill_interaction
advancement revoke @s only leashfences:interacted_with_interaction