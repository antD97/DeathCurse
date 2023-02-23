# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 10t (0.5s) timer
schedule function __:timer/10t 10t

execute as @a run function __:timer/10t/all_players

# remove event mobs with no match
#!find=skeleton
#!replace=skeleton|wither_skeleton|ghast|marker
execute as @e[type=skeleton,tag=__res_event] run function __:timer/10t/all_event_mobs/kill_if_no_match
{
    # store player id
    #!sb global __temp1 = @s __id

    # 0 if player not found, 1 if player found
    #!sb global __result1 = 0
    execute as @a run execute if score @s __id = global __temp1 run scoreboard players set global __result1 1

    # if player matching id not found (__result1 = 0) kill
    execute if score global __result1 matches 0 run function __:util/kill_invis
}
