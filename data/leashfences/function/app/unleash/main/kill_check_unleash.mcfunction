scoreboard players set @s leashfences.leash_connected_to_self 1

$execute store result score @s leashfences.leash_connected_to_self run data modify entity @s[tag=leashfences.leash_entity] leash set from entity @e[type=copper_golem,tag=leashfences.dummy_leash_entity,nbt={data:{leash_entity_UUID:$(UUID)}},limit=1] leash

$execute as @s at @s as @e[type=copper_golem,dx=0,dy=0,dz=0,nbt={data:{leash_entity_UUID:$(UUID)}},tag=leashfences.dummy_leash_entity] run function leashfences:app/unleash/kill_leash_entity

execute as @s at @s if score @s leashfences.leash_connected_to_self matches 0 run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},limit=1,dx=0,dy=0,dz=0]

execute as @s at @s run kill @e[type=leash_knot,dx=0,dy=0,dz=0,limit=1]