$execute as @e[type=interaction,tag=leashfences.interaction,nbt={data:{player_UUID:$(UUID)}}] run kill @s

$execute align xyz positioned ~0.5 ~0 ~0.5 run summon interaction ~ ~ ~ {width:1f,height:1.1f,response:1b,Tags:["leashfences.interaction"],data:{player_UUID:$(UUID)}}