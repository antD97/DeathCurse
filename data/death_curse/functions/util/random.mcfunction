# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# arguments:
#   global death_curse_arg score: the range the random number should be found within
# result:
#   global death_curse_result score: a random number between 0 and death_curse_arg - 1
summon marker ~ ~ ~ {Tags:["random_uuid"]}
execute store result score death_curse death_curse_result run data get entity @e[type=marker,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation death_curse death_curse_result %= death_curse death_curse_arg
kill @e[type=marker,tag=random_uuid]
