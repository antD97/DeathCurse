# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1s (20t) timer
schedule function __:timer/1s 1s

#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager\
    #! |cave_spider|enderman|piglin|spider|zombified_piglin
execute as @e[type=blaze] run function __:timer/1s/all_hostiles

# __result1 set to 1 if any player is under any res. abom. effect
#!sb global __result1 = 0
execute as @a run function __:timer/1s/all_players

# if someone ate a res. abom...
execute if score global __result1 matches 1.. run function __:timer/1s/disable_sleep
{
    # disable sleeping
    execute as @a[scores={__slept=1..}] run function __:timer/1s/disable_sleep/nightmare
    {
        title @s actionbar {"text":"Nightmares prevent you from sleeping","italic":true}

        effect give @s wither 2 0 true

        # fatigue 3 effect without hunger
        effect give @s nausea 7 0 true
        effect give @s weakness 5 0 true
        effect give @s mining_fatigue 5 1 true
        effect give @s slowness 5 1 true
        effect give @s blindness 5 0 true

        # fear effect
        scoreboard players set @s __feared 10
    }
}
#!sb @a __slept = 0
