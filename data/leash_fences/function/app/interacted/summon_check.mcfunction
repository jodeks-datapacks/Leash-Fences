$execute as @e[type=interaction,tag=leash_fences.interaction,nbt={data:{player_UUID:$(UUID)}}] at @s run summon leash_knot ~ ~ ~ {Tags:["leash_fences.leash_knot","leash_fences.leash_knot_new"]}

$execute at @e[type=interaction,tag=leash_fences.interaction,nbt={data:{player_UUID:$(UUID)}}] as @e[type=leash_knot,tag=leash_fences.leash_knot,tag=leash_fences.leash_knot_new,dx=0,dy=0,dz=0,limit=1] run function leash_fences:app/interacted/summon_dummy_leash_entity with entity @s

$execute at @e[type=interaction,tag=leash_fences.interaction,nbt={data:{player_UUID:$(UUID)}}] run function leash_fences:app/interacted/summon_leash_entity with entity @s

$execute as @e[type=interaction,tag=leash_fences.interaction,nbt={data:{player_UUID:$(UUID)}}] at @s run data modify entity @e[type=leash_knot,tag=leash_fences.leash_knot,tag=leash_fences.leash_knot_new,dx=0,dy=0,dz=0,limit=1] data.leash_entity_UUID set from entity @e[type=parrot,tag=leash_fences.dummy_leash_entity,tag=leash_fences.dummy_leash_entity_new,dx=0,dy=0,dz=0,limit=1] UUID
$execute as @e[type=interaction,tag=leash_fences.interaction,nbt={data:{player_UUID:$(UUID)}}] at @s run data modify entity @e[type=parrot,tag=leash_fences.dummy_leash_entity,tag=leash_fences.dummy_leash_entity_new,dx=0,dy=0,dz=0,limit=1] data.leash_entity_UUID set from entity @e[type=parrot,tag=leash_fences.leash_entity,tag=leash_fences.leash_entity_new,dx=0,dy=0,dz=0,limit=1] UUID
$execute as @e[type=interaction,tag=leash_fences.interaction,nbt={data:{player_UUID:$(UUID)}}] at @s run data modify entity @e[type=parrot,tag=leash_fences.leash_entity,tag=leash_fences.leash_entity_new,dx=0,dy=0,dz=0,limit=1] data.leash_entity_UUID set from entity @e[type=parrot,tag=leash_fences.dummy_leash_entity,tag=leash_fences.dummy_leash_entity_new,dx=0,dy=0,dz=0,limit=1] UUID

tag @e[type=leash_knot,tag=leash_fences.leash_knot,tag=leash_fences.leash_knot_new] remove leash_fences.leash_knot_new
tag @e[type=parrot,tag=leash_fences.dummy_leash_entity,tag=leash_fences.dummy_leash_entity_new] remove leash_fences.dummy_leash_entity_new
tag @e[type=parrot,tag=leash_fences.leash_entity,tag=leash_fences.leash_entity_new] remove leash_fences.leash_entity_new

$execute at @e[type=interaction,tag=leash_fences.interaction,nbt={data:{player_UUID:$(UUID)}}] run playsound item.lead.tied block @a[distance=..32]

$kill @e[type=interaction,tag=leash_fences.interaction,nbt={data:{player_UUID:$(UUID)}}]