# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# this file is for defining functions only

# arguments:
#   global __temp1: the range the random number should be found within
# result:
#   global __result1: a random number between 0 and __temp1 - 1
#! __:util/random
{
    summon marker ~ ~ ~ {Tags:["__new"]}
    execute store result score global __result1 run data get entity @e[type=marker,tag=__new,limit=1] UUID[0] 1
    #!sb global __result1 %= global __temp1
    kill @e[type=marker,tag=__new]
}

# kills the executor and attempts to hide the death animation
#! __:util/kill_invis
{
    data modify entity @s ArmorItems set value []
    data modify entity @s HandItems set value []
    data modify entity @s Silent set value 1b

    effect give @s invisibility 5 0 true
    kill @s
}

# checks if the executor has a block between them and the sky
# arguments: global __temp1 the executor's y position
# result: global __temp1 is 320 if outside, and less than 320 if inside
#! __:util/check_outside
{
    #!sb global __temp1 += 1
    execute if score global __temp1 matches ..319 positioned ~ ~1 ~ if block ~ ~ ~ air run function __:util/check_outside
}
