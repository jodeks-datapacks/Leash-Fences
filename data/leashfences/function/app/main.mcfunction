execute as @e[type=copper_golem,tag=leashfences.leash_entity] unless data entity @s leash run function leashfences:app/unleash/main/unleash

execute as @e[type=copper_golem,tag=leashfences.dummy_leash_entity] unless data entity @s leash run function leashfences:app/unleash/dummy/unleash_dummy