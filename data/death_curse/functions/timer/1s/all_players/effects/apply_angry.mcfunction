# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# use to count the number of mobs angered by this player
#!sb global __result1 = 0

# apply the buff
#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager\
    #! |cave_spider|enderman|piglin|spider|zombified_piglin
execute at @s as @e[type=blaze, distance=..5] run function __:timer/1s/all_players/effects/apply_angry/angry
{
    effect give @s regeneration 5 0 true
    effect give @s fire_resistance 5 0 true
    effect give @s speed 5 0 true

    # particle effect
    scoreboard players set @s __angry 5

    # add to angry mob count
    scoreboard players add global __result1 1
}

# set __mob_aggresion mark according to number of mobs angered
execute if score global __result1 matches 1.. run scoreboard players set @s __mob_aggression_close 1
execute if score global __result1 matches 0 run function __:timer/1s/all_players/effects/apply_angry/mob_aggression_0
{
    #!sb @s __mob_aggression_close = 0
    # slow 1s smoke particle effect
    execute at @s run particle smoke ~ ~0.45 ~ 0.15 0.225 0.15 0 3
}
