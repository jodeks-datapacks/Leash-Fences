data remove entity @s leash
tp @s ~ ~100 ~
effect clear @s
kill @s
execute at @s run kill @e[type=experience_orb,nbt={Age:0s},distance=..2]