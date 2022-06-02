# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# For every resurrection abomination 1...
# - if on fire & in nether, increment @s __time_alive, otherwise @s __time_alive = 0
# - if __time_alive is 2+, set @s __result1 = number of nearby __time_alive=2+ resurrection abomination 1s, otherwise @s __result1 = 0
# - also set never despawn

# set never despawn
data modify entity @s Age set value -32768s

# store on fire to global __temp1
execute store result score global __temp1 run data get entity @s Fire

# save in nether to global __temp2
#!sb global __temp2 = 0
execute if predicate __:in_nether run scoreboard players set global __temp2 1

# increment time alive if on fire
execute if score global __temp1 matches 1.. run scoreboard players add @s __time_alive 1
# reset time alive if not on fire
execute if score global __temp1 matches ..0 run scoreboard players set @s __time_alive 0
# reset time alive if not in nether
execute if score global __temp2 matches ..0 run scoreboard players set @s __time_alive 0

# 10s till ready particle effect
execute as @s[scores={__time_alive=1}] run function __:timer/10s/all_items/res_abom1/soon_particle
{
    #!5x
    execute at @s run particle ambient_entity_effect ~ ~0.125 ~ 170 0 0 255 0
}

# if time alive is cooked enough, count close and cooked enough resurrection abomination 1s into global __result1
#!sb global __result1 = 0
execute if score @s __time_alive matches 2.. at @s as @e[type=item,scores={__time_alive=2..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},distance=..1] run scoreboard players add global __result1 1

# save count to @s __result1
#!sb @s __result1 = global __result1
