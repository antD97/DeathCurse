# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# cloaks and silences 1 hostile mob (up to 3) within 30 blocks of the executor (be sure to be positioned as the exectuor)

# which player is trying to apply the curse
#!sb global __temp1 = @s __id
# count the number cursed by this player
#!sb global __result1 = 0

# mark cloakable mobs
# skipped underwater mobs as they don't show particles correctly
# skipped illusioner because cloak makes them easier to fight
# skipped shulker cause the effect wasn't great
#!find=blaze
#!replace=blaze|creeper|endermite|evoker|ghast|hoglin|husk|magma_cube|phantom|piglin_brute|pillager\
    #! |ravager|shulker|silverfish|skeleton|slime|stray|vex|vindicator|witch|wither|wither_skeleton\
    #! |zoglin|zombie|zombie_villager|cave_spider|enderman|piglin|spider|zombified_piglin
execute if score global __result1 matches ..2 as @e[type=blaze] run function __:timer/1s/all_players/manage_effects/curse/curse_leak2/mark_hostile
{
    # apply hostile mark if not already cloak2'd
    #!sb @s __cloak2_id += 0
    #!sb @s[scores={__cloak2_id=0},distance=..30] __hostile = 1

    # add to cloaked count
    execute if score @s __cloak2_id = global __temp1 run scoreboard players add global __result1 1
}

# cloak a random hostile mob
#!sb global __temp2 = @s __curse_level
execute if score global __result1 matches ..2 as @e[scores={__hostile=1},sort=random,limit=1] run function __:timer/1s/all_players/manage_effects/curse/curse_leak2/cloak2
{
    # remove cloak 1
    effect clear @s invisibility
    #!sb @s __cloak1_id = 0

    # apply invisibility, silence, resistance, & strength
    effect give @s invisibility 1199 0 true
    effect give @s resistance 1199 0 true
    effect give @s strength 1199 0 true
    data merge entity @s {Silent:1b}

    # sound
    execute at @s run playsound ambient.nether_wastes.mood ambient @a ~ ~ ~ 1.5

    # cloak2 duration, id, and level
    #!sb @s __cloak = 1200
    #!sb @s __cloak2_id = global __temp1
    #!sb @s __cloak_level = global __temp2

    # activate cloaking particle effect around the cloaking player
    execute as @a run execute if score @s __id = global __temp1 run scoreboard players set @s __cloaking 3
}

# remove hostile mark
#!find=blaze
#!replace=blaze|creeper|endermite|evoker|ghast|hoglin|husk|magma_cube|phantom|piglin_brute|pillager\
    #! |ravager|shulker|silverfish|skeleton|slime|stray|vex|vindicator|witch|wither|wither_skeleton\
    #! |zoglin|zombie|zombie_villager|cave_spider|enderman|piglin|spider|zombified_piglin
#!sb @e[type=blaze] __hostile = 0
