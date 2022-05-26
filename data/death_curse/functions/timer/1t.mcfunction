# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1t (0.05s) timer
schedule function __:timer/1t 1t

# execute at midnight
execute store result score global __result1 run time query daytime
execute if score global __result1 matches 18000..18010 run function __:timer/1t/midnight
{
    # store if somenoone ate a res. abom. in global __result2
    #!sb global __result2 = 0
    #!find=__res_abom_effect1
    #!replace=__res_abom_effect1|__res_abom_effect2|__res_abom_effect3
    execute if entity @a[scores={__res_abom_effect1=1..}] run scoreboard players set global __result2 1

    # if there is nobody with res. abom. effect, resume day cycle
    execute if score global __result2 matches 0 run gamerule doDaylightCycle true

    # if there is somebody with res. abom. effect...
    execute if score global __result2 matches 1 run function __:timer/1t/resurrection_event
    {
        time set 18000
        gamerule doDaylightCycle false
    }
}

# player locking markers
execute as @e[type=marker,tag=__player_lock] run function __:timer/1t/lock_players
{
    #!sb global __arg1 = @s __id
    execute positioned as @s as @a run execute rotated as @s if score @s __id = global __arg1 run tp ~ ~ ~
    execute if score @s __result1 matches 1 positioned as @s run tp ~ ~0.02 ~
}

# move resurrection event mobs up
#!find=skeleton
#!replace=skeleton|wither_skeleton|ghast
execute as @e[type=skeleton,tag=__res_event,scores={__result1=1}] run execute at @s run tp ~ ~0.02 ~

execute as @a[scores={__time_alive=0}] run function __:player/while_dead
{
    # clear effects
    #!sb @s __cloaking_end = -100
    #!sb @s __fatigue2_end = -100
    #!sb @s __fatigue3_end = -100
    #!sb @s __mob_aggression_end = -100
    #!sb @s __feared_end = -100
    #!sb @s __curse_cookie1_effect = -100
    #!sb @s __curse_cookie2_effect = -100
    #!sb @s __curse_cookie3_effect = -100
    #!sb @s __strike = 0

    #!find=effect1
    #!replace=effect1|effect2|effect3
    execute if score @s __res_abom_effect1 matches 1.. run function __:player/clear_event_mobs
    {
        #!sb global __arg1 = @s __id
        #!find=skeleton
        #!replace=skeleton|wither_skeleton|ghast
        execute as @e[type=minecraft:skeleton,tag=__res_event] run execute if score @s __id = global __arg1 run function __:player/resurrection1_failed/kill_invis
    }

    execute if score @s __res_abom_effect1 matches 36.. run function __:player/decrease_death1
    {
        # reset res. abom. effect
        #!sb @s __res_abom_effect1 = 0
        # remove 1+1 deaths
        #!sb @s __deaths -= 2
        # mark for death decrease effect on respawn
        #!sb @s __deaths_decrease1 = 2

        # advancement
        advancement grant @s only death_curse:resurrection1
    }

    execute if score @s __res_abom_effect2 matches 36.. run function __:player/decrease_death2
    {
        # reset res. abom. effect
        #!sb @s __res_abom_effect2 = 0
        # remove 3+1 deaths
        #!sb @s __deaths -= 4
        # don't allow negative deaths
        execute as @s[scores={__deaths=..0}] run scoreboard players set @s __deaths 0
        # mark for death decrease effect on respawn
        #!sb @s __deaths_decrease2 = 2
        
        # advancement
        advancement grant @s only death_curse:resurrection1
        advancement grant @s only death_curse:resurrection2
    }

    execute if score @s __res_abom_effect3 matches 36.. run function __:player/decrease_death3
    {
        # reset res. abom. effect
        #!sb @s __res_abom_effect3 = 0
        # remove 11+1 deaths
        #!sb @s __deaths -= 12
        # don't allow negative deaths
        execute as @s[scores={__deaths=..0}] run scoreboard players set @s __deaths 0
        # mark for death decrease effect on respawn
        #!sb @s __deaths_decrease3 = 2

        # advancement
        advancement grant @s only death_curse:resurrection1
        advancement grant @s only death_curse:resurrection3
    }

    # remove matching player lock marker
    #!sb global __arg1 = @s __id
    execute as @e[type=marker,tag=__player_lock] run execute if score @s __id = global __arg1 run kill @s
}
