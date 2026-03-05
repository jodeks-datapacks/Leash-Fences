scoreboard players set @s leashfences.raycast_hit 1

# Prüfe ob bereits Interaction an dieser aligned Position existiert
execute align xyz positioned ~0.5 ~0 ~0.5 if entity @e[type=interaction,tag=leashfences.interaction,distance=..0.1] run return fail

# Nur wenn keine existiert: summon
function leashfences:app/raycast/summon_interaction with entity @s