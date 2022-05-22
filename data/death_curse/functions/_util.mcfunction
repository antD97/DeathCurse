# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# arguments: global __arg1: the range the random number should be found within
# result: global __result1: a random number between 0 and __arg1 - 1
#! __:util/random
{
    summon marker ~ ~ ~ {Tags:["__random_uuid"]}
    execute store result score global __result1 run data get entity @e[type=marker,tag=__random_uuid,limit=1] UUID[0] 1
    #!sb global __result1 %= global __arg1
    kill @e[type=marker,tag=__random_uuid]
}
