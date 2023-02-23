# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# use to count the number of mobs angered by this player
#!sb global __result1 = 0

# count nearby hostile mobs
#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager
execute at @s as @e[type=blaze,distance=..5,tag=!__res_event] run scoreboard players add global __result1 1

#!find=cave_spider
#!replace=cave_spider|enderman|piglin|spider|zombified_piglin
execute at @s as @e[type=cave_spider,distance=..5,tag=!__res_event] run function __:timer/1s/all_players/manage_effects/curse/fear_check/count_if_angry
{
    execute store result score global __temp1 run data get entity @s AngerTime
    execute if score global __temp1 matches 1.. run scoreboard players add global __result1 1
}

# apply fear
execute if score global __result1 matches 3.. run function __:timer/1s/all_players/manage_effects/curse/fear_check/fear
{
    effect give @s slowness 5 0 true
    effect give @s blindness 5 0 true
    effect give @s weakness 5 0 true

    # particle effect
    #!sb @s __feared = 10
}
