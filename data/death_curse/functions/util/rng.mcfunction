# arguments:
#   global death_curse_arg1 score: the range the random number should be found within
# result:
#   global death_curse_rng score: a random number between 0 and death_curse_rng_arg1 - 1
summon marker ~ ~ ~ {Tags:["random_uuid"]}
execute store result score death_curse death_curse_rng run data get entity @e[type=marker,tag=random_uuid,limit=1] UUID[0] 1
scoreboard players operation death_curse death_curse_rng %= death_curse death_curse_rng_arg1
kill @e[type=marker,tag=random_uuid]
