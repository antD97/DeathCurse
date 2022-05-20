# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# debuffs the player if 3+ hostile mobs are within 5 blocks 

# use to count the number of mobs angered by this player
#!sb global __result1 = 0

# count nearby hostile mobs
#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager
execute as @e[type=minecraft:blaze, distance=..5] run scoreboard players add global __result1 1

#!find=cave_spider
#!replace=cave_spider|enderman|piglin|spider|zombified_piglin
execute as @e[type=minecraft:cave_spider, distance=..5] run function __:curse/effect/helper/count_if_angry

# apply fear
execute if score global __result1 matches 3.. run function __:curse/effect/fear
{
    effect give @s minecraft:slowness 5 0 true
    effect give @s minecraft:blindness 5 0 true
    effect give @s minecraft:weakness 5 0 true
    # reset particle effect
    scoreboard players set @s __feared 1
    scoreboard players operation @s __feared_end = global __effect_timer
    scoreboard players add @s __feared_end 10
}

# Increment __rest1 by 1 if executor is angry
#! __:curse/effect/helper/count_if_angry
{
    execute store result score global __arg1 run data get entity @s AngerTime
    execute if score global __arg1 matches 1.. run scoreboard players add global __result1 1
}
