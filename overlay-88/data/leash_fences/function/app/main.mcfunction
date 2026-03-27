execute as @e[type=copper_golem,tag=leash_fences.leash_entity] unless data entity @s leash run function leash_fences:app/unleash/main/unleash

execute as @e[type=copper_golem,tag=leash_fences.dummy_leash_entity] unless data entity @s leash run function leash_fences:app/unleash/dummy/unleash_dummy