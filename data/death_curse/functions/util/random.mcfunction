# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# arguments:
#   global death_curse_arg1 score: the range the random number should be found within
# result:
#   global death_curse_result1 score: a random number between 0 and death_curse_arg1 - 1
summon marker ~ ~ ~ {Tags:["random_uuid"]}
execute store result score global death_curse_result1 run data get entity @e[type=marker,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation global death_curse_result1 %= global death_curse_arg1
kill @e[type=marker,tag=random_uuid]
