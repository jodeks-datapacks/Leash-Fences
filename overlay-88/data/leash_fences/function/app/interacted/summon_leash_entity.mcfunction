$execute align xyz positioned ~0.50001 ~0.385 ~0.5 run summon copper_golem ~ ~ ~ {next_weather_age:-2,DeathLootTable:"",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["leash_fences.leash_entity","leash_fences.leash_entity_new"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.3}],leash:{UUID:$(UUID)}}

scoreboard players add &leashed_entities leash_fences.check 1

item modify entity @s weapon.mainhand leash_fences:remove_one_item