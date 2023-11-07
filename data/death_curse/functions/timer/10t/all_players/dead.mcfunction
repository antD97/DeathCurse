# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# clear effect and make resurrection event changes while the player is dead

scoreboard players set @s[scores={__disable=1}] __deaths 0

# clear effects
#!sb @s __fatigue1 = 0
#!sb @s __fatigue2 = 0
#!sb @s __fatigue3 = 0
#!sb @s __poison = 0
#!sb @s __cloaking = 0
#!sb @s __mob_aggression = 0
#!sb @s __feared = 0
#!sb @s __feared_init = 0

#!sb @s __curse_cookie1_effect = 0
#!sb @s __curse_cookie2_effect = 0
#!sb @s __curse_cookie3_effect = 0

#!sb @s __twitch = 0
#!sb @s __shiver = 0
#!sb @s __panic = 0

#!sb @s __smoke = 0
#!sb @s __strike = 0

#!sb @s __deaths_increase = 0
#!sb @s __deaths_decrease1 = 0
#!sb @s __deaths_decrease2 = 0
#!sb @s __deaths_decrease3 = 0

# remove matching player lock marker
#!sb global __temp1 = @s __id
execute as @e[type=marker,tag=__res_event] run execute if score @s __id = global __temp1 run kill @s

# ---------------------------- resurrection event ---------------------------- #

# clear event mobs
#!find=effect1
#!replace=effect1|effect2|effect3
execute if score @s __res_abom_effect1 matches 1.. run function __:timer/10t/all_players/dead/clear_event_mobs
{
    #!sb global __temp1 = @s __id
    #!find=skeleton
    #!replace=skeleton|wither_skeleton|ghast
    execute as @e[type=skeleton,tag=__res_event] run execute if score @s __id = global __temp1 run function __:util/kill_invis
}

execute if score @s __res_abom_effect1 matches 36.. run function __:timer/10t/all_players/dead/decrease_death1
{
    # remove 1+1 deaths
    #!sb @s __deaths -= 2
    # don't allow negative deaths
    execute as @s[scores={__deaths=..0}] run scoreboard players set @s __deaths 0
    # mark for death decrease effect on respawn
    #!sb @s __resurrected1 = 1

    # advancement
    advancement grant @s only __:resurrection1
}

execute if score @s __res_abom_effect2 matches 36.. run function __:timer/10t/all_players/dead/decrease_death2
{
    # remove 3+1 deaths
    #!sb @s __deaths -= 4
    # don't allow negative deaths
    execute as @s[scores={__deaths=..0}] run scoreboard players set @s __deaths 0
    # mark for death decrease effect on respawn
    #!sb @s __resurrected2 = 1
    
    # advancement
    advancement grant @s only __:resurrection1
    advancement grant @s only __:resurrection2
}

execute if score @s __res_abom_effect3 matches 36.. run function __:timer/10t/all_players/dead/decrease_death3
{
    # remove 11+1 deaths
    #!sb @s __deaths -= 12
    # don't allow negative deaths
    execute as @s[scores={__deaths=..0}] run scoreboard players set @s __deaths 0
    # mark for death decrease effect on respawn
    #!sb @s __resurrected3 = 1

    # advancement
    advancement grant @s only __:resurrection1
    advancement grant @s only __:resurrection2
    advancement grant @s only __:resurrection3
}

# fail if resurrection event if dead before lightning
execute as @s[scores={__res_abom_effect1=2..34}] run function __:timer/1s/all_players/resurrection_event1/failed
execute as @s[scores={__res_abom_effect2=2..34}] run function __:timer/1s/all_players/resurrection_event2/failed
execute as @s[scores={__res_abom_effect3=2..34}] run function __:timer/1s/all_players/resurrection_event3/failed

#!sb @s __res_abom_effect1 = 0
#!sb @s __res_abom_effect2 = 0
#!sb @s __res_abom_effect3 = 0
