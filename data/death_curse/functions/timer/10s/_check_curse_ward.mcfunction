# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# For every curse ward 1...
# - set @s __arg1 = Fire data
# - if on fire, increment time alive
# - if on fire & time alive is 2+, set @s __result1 = number of nearby on fire & __time_alive=2+ curse ward 1s, otherwise @s __result1 = 0
# - also set never despawn
#! __:timer/10s/check_curse_ward1
{
    # set never despawn
    data modify entity @s Age set value -32768s

    # store on fire to @s __arg1
    execute store result score @s __arg1 run data get entity @s Fire

    # increment time alive if on fire
    execute if score @s __arg1 matches 1.. run scoreboard players add @s __time_alive 1

    # 10s till ready particle effect
    execute as @s[scores={__time_alive=1}] run function __:particle/curse_ward1_soon
    {
        #!5x
        execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~0.125 ~ 170 0 0 255 0
    }

    # if on fire & time alive is old enough, count close, old enough, & on fire curse ward 1s into global __result1
    #!sb global __result1 = 0
    execute if score @s __time_alive matches 2.. positioned as @s as @e[type=minecraft:item,scores={__time_alive=2..},nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379300}}},distance=..1] run function __:timer/10s/count_fire_curse_ward1
    {
        execute store result score @s __arg1 run data get entity @s Fire
        execute run scoreboard players add global __result1 1
    }

    # save count to @s __result1
    #!sb @s __result1 = global __result1
}

# For every curse ward 2...
# - set @s __arg1 = Fire data
# - if on fire, increment time alive
# - if on fire, set @s __result1 = number of nearby on fire & __time_alive=2+ curse ward 2s, otherwise @s __result1 = 0
# - also set never despawn
#! __:timer/10s/check_curse_ward2
{
    # set never despawn
    data modify entity @s Age set value -32768s

    # store on fire to @s __arg1
    execute store result score @s __arg1 run data get entity @s Fire

    # increment time alive if on fire
    execute if score @s __arg1 matches 1.. run scoreboard players add @s __time_alive 1

    # 10s till ready particle effect
    execute as @s[scores={__time_alive=1}] run function __:particle/curse_ward2_soon
    {
        #!5x
        execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~0.125 ~ 85 0 0 255 0
    }

    # if on fire & time alive is old enough, count close, old enough, & on fire curse ward 2s into global __result1
    #!sb global __result1 = 0
    execute if score @s __time_alive matches 2.. positioned as @s as @e[type=minecraft:item,scores={__time_alive=2..},nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}},distance=..1] run function __:timer/10s/count_fire_curse_ward2
    {
        execute store result score @s __arg1 run data get entity @s Fire
        execute run scoreboard players add global __result1 1
    }

    # save count to @s __result1
    #!sb @s __result1 = global __result1
}
