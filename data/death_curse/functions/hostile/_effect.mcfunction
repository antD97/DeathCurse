# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Apply the cloak 1 effect to the executing hostile mob
# Execute positioned as the applying player
# arguments:
#     global __arg1: applying player id
#     global __arg2: applying player curse level
#! __:hostile/effect/cloak1
{
    # apply invisibility
    effect give @s minecraft:invisibility 1199 0 true

    # sound
    execute positioned as @s run playsound minecraft:ambient.nether_wastes.mood ambient @a ~ ~ ~ 1.5

    # set cloak1 id
    #!sb @s __cloak1_id = global __arg1
    # set cloak end time
    #!sb @s __cloak_end = global __effect_timer
    #!sb @s __cloak_end += 1200
    # set cloak level
    #!sb @s __cloak_level = global __arg2

    # kinda ugly way of reselecting the player who cloaked this mob
    # activate cloaking particle effect around the cloaking player
    execute as @p[distance=..1] run function __:curse/effect/helper/cloaking_effect
    {
        #!sb @s __cloaking = 1
        #!sb @s __cloaking_end = global __effect_timer
        #!sb @s __cloaking_end += 3
    }
}

# Apply the cloak 2 effect to the executing hostile mob
# Execute positioned as the applying player
# arguments:
#     global __arg1: applying player id
#     global __arg2: applying player curse level
#! __:hostile/effect/cloak2
{
    # remove cloak1
    effect clear @s minecraft:invisibility
     #!sb @s __cloak1_id = 0

    # apply invisibility
    effect give @s minecraft:invisibility 1199 0 true
    # apply silent effect
    data merge entity @s {Silent:1b}

    # sound
    execute positioned as @s run playsound minecraft:ambient.nether_wastes.mood ambient @a ~ ~ ~ 1.5

    # set cloak2 id
    #!sb @s __cloak2_id = global __arg1
    # set cloak end time
    #!sb @s __cloak_end = global __effect_timer
    #!sb @s __cloak_end += 1200
    # set cloak level
    #!sb @s __cloak_level = global __arg2

    # kinda ugly way of reselecting the player who cloaked this mob
    # activate cloaking particle effect around the cloaking player & play cloaking sound
    execute as @p[distance=..1] run function __:curse/effect/helper/cloaking_effect
}

# Apply the angry effect to the executing hostile mob
# returns: global __result1 += 1 (this is to count the number of angry mobs)
#! __:hostile/effect/angry
{
    # apply regeneration, fire resistance, and speed
    effect give @s minecraft:regeneration 5 0 true
    effect give @s minecraft:fire_resistance 5 0 true
    effect give @s minecraft:speed 5 0 true

    # apply the angry particle effect for 5s
    scoreboard players set @s __angry 1
    scoreboard players operation @s __angry_end = global __effect_timer
    scoreboard players add @s __angry_end 5

    # add to angry mob count
    scoreboard players add global __result1 1
}
