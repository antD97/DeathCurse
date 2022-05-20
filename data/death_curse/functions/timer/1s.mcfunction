# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1s (20t) timer
schedule function __:timer/1s 1s

# curse
execute as @a[scores={__time_alive=1..}] run function __:curse/tick

# slow curse cookie particle effects
execute as @a[scores={__curse_cookie1_effect=1..}] run execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 1
execute as @a[scores={__curse_cookie2_effect=1..}] run execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 2
execute as @a[scores={__curse_cookie3_effect=1..}] run execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 3

# curse effect timer
#!sb global __effect_timer += 1

# check player particle durations
execute as @a run function __:player/check_particle

# play heartbeat sounds
execute as @a run execute positioned as @s run function __:player/heartbeat

# check hostile mob particle durations
#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager
execute as @e[type=minecraft:blaze] run function __:hostile/check_particle

#!find=cave_spider
#!replace=cave_spider|enderman|piglin|spider|zombified_piglin
execute as @e[type=minecraft:cave_spider] run function __:hostile/check_particle
