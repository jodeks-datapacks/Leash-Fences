$execute as @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}] at @s run summon leash_knot ~ ~ ~ {Tags:["leashfences.leash_knot","leashfences.leash_knot_new"]}

$execute at @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}] as @e[type=leash_knot,tag=leashfences.leash_knot,tag=leashfences.leash_knot_new,dx=0,dy=0,dz=0,limit=1] run function leashfences:app/interacted/summon_dummy_leash_entity with entity @s

$execute at @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}] run function leashfences:app/interacted/summon_leash_entity with entity @s

$execute as @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}] at @s run data modify entity @e[type=leash_knot,tag=leashfences.leash_knot,tag=leashfences.leash_knot_new,dx=0,dy=0,dz=0,limit=1] data.leash_entity_UUID set from entity @e[type=copper_golem,tag=leashfences.dummy_leash_entity,tag=leashfences.dummy_leash_entity_new,dx=0,dy=0,dz=0,limit=1] UUID
$execute as @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}] at @s run data modify entity @e[type=copper_golem,tag=leashfences.dummy_leash_entity,tag=leashfences.dummy_leash_entity_new,dx=0,dy=0,dz=0,limit=1] data.leash_entity_UUID set from entity @e[type=copper_golem,tag=leashfences.leash_entity,tag=leashfences.leash_entity_new,dx=0,dy=0,dz=0,limit=1] UUID
$execute as @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}] at @s run data modify entity @e[type=copper_golem,tag=leashfences.leash_entity,tag=leashfences.leash_entity_new,dx=0,dy=0,dz=0,limit=1] data.leash_entity_UUID set from entity @e[type=copper_golem,tag=leashfences.dummy_leash_entity,tag=leashfences.dummy_leash_entity_new,dx=0,dy=0,dz=0,limit=1] UUID

tag @e[type=leash_knot,tag=leashfences.leash_knot,tag=leashfences.leash_knot_new] remove leashfences.leash_knot_new
tag @e[type=copper_golem,tag=leashfences.dummy_leash_entity,tag=leashfences.dummy_leash_entity_new] remove leashfences.dummy_leash_entity_new
tag @e[type=copper_golem,tag=leashfences.leash_entity,tag=leashfences.leash_entity_new] remove leashfences.leash_entity_new

$execute at @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}] run playsound item.lead.tied block @a[distance=..32]

$kill @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}]