# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Cloaks 1 hostile mob within 30 blocks of the executor (be sure to be positioned as the exectuor)

# argument used to identify which player is trying to apply the curse
#!sb global __arg1 = @s __id
# use to count the number cursed by this player
#!sb global __result1 = 0

# mark cloakable mobs
# skipped underwater mobs as they don't show particles correctly
# skipped illusioner because cloak makes them easier to fight
# skipped shulker cause the effect wasn't great
#!find=blaze
#!replace=blaze|creeper|endermite|evoker|ghast|hoglin|husk|magma_cube|phantom|piglin_brute|pillager\
    #! |ravager|shulker|silverfish|skeleton|slime|stray|vex|vindicator|witch|wither|wither_skeleton\
    #! |zoglin|zombie|zombie_villager
execute if score global __result1 matches ..2 as @e[type=minecraft:blaze] run function __:curse/effect/curse_leak2/mark_hostile

#!find=cave_spider
#!replace=cave_spider|enderman|piglin|spider|zombified_piglin
execute if score global __result1 matches ..2 as @e[type=minecraft:cave_spider] run function __:curse/effect/curse_leak2/mark_hostile

# cloak a random hostile mob
#!sb global __arg2 = @s __curse_level
execute if score global __result1 matches ..2 as @e[scores={__hostile=1},sort=random,limit=1] run function __:hostile/effect/cloak2

# remove hostile mark
#!find=blaze
#!replace=blaze|creeper|endermite|evoker|ghast|hoglin|husk|magma_cube|phantom|piglin_brute|pillager\
    #! |ravager|shulker|silverfish|skeleton|slime|stray|vex|vindicator|witch|wither|wither_skeleton\
    #! |zoglin|zombie|zombie_villager
#!sb @e[type=minecraft:blaze] __hostile = 0

#!find=cave_spider
#!replace=cave_spider|enderman|piglin|spider|zombified_piglin
#!sb @e[type=minecraft:cave_spider] __hostile = 0

# Mark cloak2-able mobs with __hostile score
# arguments: global __arg1 if of cloaking player
# return: global __result1 increments by 1 if the executor is already cloaked by player with id __arg1
#! __:curse/effect/curse_leak2/mark_hostile
{
    # apply hostile mark if not already cloak2'd
    #!sb @s __cloak2_id += 0
    #!sb @s[scores={__cloak2_id=0},distance=..30] __hostile = 1

    # add to cloaked count
    execute if score @s __cloak2_id = global __arg1 run scoreboard players add global __result1 1
}
