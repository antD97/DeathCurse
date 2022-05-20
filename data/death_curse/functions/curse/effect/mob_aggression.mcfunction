# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Buffs hostile mobs within 5 blocks of the executor (be sure to be positioned as the executor)

# use to count the number of mobs angered by this player
#!sb global __result1 = 0

# apply the buff
#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager
execute as @e[type=minecraft:blaze, distance=..5] run function __:hostile/effect/angry

#!find=cave_spider
#!replace=cave_spider|enderman|piglin|spider|zombified_piglin
execute as @e[type=minecraft:cave_spider, distance=..5] run function __:hostile/effect/angry

# set __mob_aggresion mark according to number of mobs angered
execute if score global __result1 matches 1.. run scoreboard players set @s __mob_aggression 2
execute if score global __result1 matches 0 run function __:curse/effect/helper/mob_aggression_1
{
    #!sb @s __mob_aggression = 1
    # slow 1s smoke particle effect
    particle minecraft:smoke ~ ~0.45 ~ 0.15 0.225 0.15 0 3
}
