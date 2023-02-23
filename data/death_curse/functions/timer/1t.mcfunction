# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1t (0.05s) timer
schedule function __:timer/1t 1t

# ------------------------------- Kill Creeper Area Effect Cloud --------------------------------- #

# kill clouds
execute as @e[type=marker,tag=__cloud_killer] run function __:timer/1t/all_cloud_killers
{
    execute at @s run kill @e[type=area_effect_cloud,distance=..2]
    kill @s
}

# summon cloud killer
execute as @e[type=creeper] run function __:timer/1t/all_creepers
{
    #!find=__cloak
    #!replace=__cloak|__angry
    execute as @s[scores={__cloak=1..}] at @s run summon marker ~ ~ ~ {Tags:["__cloud_killer"]}
}

# ------------------------------------------- Players -------------------------------------------- #

# __result1 set to 1 if any player is under any res. abom. effect
#!sb global __result1 = 0
#!find=__res_abom_effect1
#!replace=__res_abom_effect1|__res_abom_effect2|__res_abom_effect3
execute if entity @a[scores={__res_abom_effect1=1..}] run scoreboard players set global __result1 1

# execute at midnight
execute store result score global __temp1 run time query daytime
execute if score global __temp1 matches 17990..18000 run function __:timer/1t/midnight
{
    # if there is nobody with res. abom. effect, resume day cycle
    execute if score global __result1 matches 0 run gamerule doDaylightCycle true

    # if there is somebody with res. abom. effect, lock on midnight
    execute if score global __result1 matches 1 run function __:timer/1t/midnight/freeze
    {
        gamerule doDaylightCycle false

        #!sb global __temp2 = 18000
        #!sb global __temp2 -= global __temp1

        # add 1 until daytime is 18000t exactly. needs to be done this way because `time set` changes day count
        execute if score global __temp1 matches ..17999 run function __:timer/1t/midnight/freeze/add_until_midnight
        {
            time add 1t
            execute store result score global __temp1 run time query daytime
            execute if score global __temp1 matches ..17999 run function __:timer/1t/midnight/freeze/add_until_midnight
        }
    }
}

# --------------------------------- Resurrection Event Entities ---------------------------------- #

# player locking markers
execute as @e[type=marker,tag=__res_event] run function __:timer/1t/lock_players
{
    #!sb global __temp1 = @s __id
    execute at @s as @a run execute rotated as @s if score @s __id = global __temp1 run tp ~ ~ ~
    
    # __result1 used as a move up flag
    execute if score @s __result1 matches 1 at @s run tp ~ ~0.02 ~
}

# move resurrection event mobs up (__result1 used as a move up flag)
#!find=skeleton
#!replace=skeleton|wither_skeleton|ghast
execute as @e[type=skeleton,tag=__res_event,scores={__result1=1}] run execute at @s run tp ~ ~0.02 ~
