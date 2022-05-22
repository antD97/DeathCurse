# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# resurrection event 1
#! __:player/resurrection_event1
{
    # outside inside
    execute store result score global __arg1 run data get entity @s Pos[1]
    execute as @s at @s run function __:player/check_outside
    # fail if inside
    execute if score global __arg1 matches ..254 run function __:player/resurrection1_failed
    {
        #!sb @s __res_abom_effect1 = -1
        execute positioned as @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~1000 ~ 100000 1 100000
        title @s times 100 50 100
        title @s title {"text":"Resurrection Failed","color":"#AA0000"}
        title @s subtitle ""
    }

    # overworld check
    #!sb global __arg1 = 0
    execute at @s run execute if predicate __:in_overworld run scoreboard players set global __arg1 1
    # fail if not in overworld
    execute if score global __arg1 matches 0 run function __:player/resurrection1_failed
    # dead before lightning
    execute as @s[scores={__time_alive=0,__res_abom_effect1=..33}] run function __:player/resurrection1_failed

    # ----- scripted events ----- #

    # at 2 seconds
    execute as @s[scores={__res_abom_effect1=2}] positioned as @s run function __:player/resurrection_event/init
    {
        # summon __player_lock marker and assign its id
        summon marker ~ ~ ~ {Tags:["__player_lock","__new"]}
        #!sb global __arg1 = @s __id
        execute as @e[type=marker,tag=__new] run function __:player/resurrection_event/marker_id
        {
            #!sb @s __id = global __arg1
            tag @s remove __new
        }
        # sound
        execute positioned as @s run playsound minecraft:entity.elder_guardian.curse ambient @a ~ ~ ~ 3 0.5
        # activate smoke effect
        #!sb @s __smoke = 1
        # prevent fall damage
        effect give @s minecraft:slow_falling 1000000 0 true
    }


    # at 10 seconds
    execute as @s[scores={__res_abom_effect1=10}] positioned as @s run function __:player/resurrection_event/up
    {
        # play sound
        playsound minecraft:entity.ender_dragon.death ambient @a ~ ~ ~ 3 0.5
        # set __result1 of the player-lock to move it up
        execute as @e[type=marker,tag=__player_lock] run execute if score @s __id = global __arg1 run scoreboard players set @s __result1 1

        # smooth lock with levitation
        effect give @s minecraft:levitation 1000000 0 true
        effect clear @s minecraft:slow_falling
    }

    # at 34+ seconds and alive
    execute as @s[scores={__time_alive=1..,__res_abom_effect1=34..}] positioned as @s run function __:player/resurrection_event/finale
    {
        # apply resistance
        effect give @s minecraft:resistance 3 1 true
        # mark for lightning
        #!sb @s __strike = 1
    }

    # --------------------------- #

    # increment timer
    #!sb @s __res_abom_effect1 += 1
}

# resurrection event 2
#! __:player/resurrection_event2
{
    # outside inside
    execute store result score global __arg1 run data get entity @s Pos[1]
    execute as @s at @s run function __:player/check_outside
    # fail if inside
    execute if score global __arg1 matches ..254 run function __:player/resurrection2_failed
    {
        #!sb @s __res_abom_effect2 = -1
        execute positioned as @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~1000 ~ 100000 1 100000
        title @s times 100 50 100
        title @s title {"text":"Resurrection Failed","color":"#440000"}
        title @s subtitle ""
    }

    # overworld check
    #!sb global __arg1 = 0
    execute at @s run execute if predicate __:in_overworld run scoreboard players set global __arg1 1
    # fail if not in overworld
    execute if score global __arg1 matches 0 run function __:player/resurrection2_failed
    # dead before lightning
    execute as @s[scores={__time_alive=0,__res_abom_effect2=..33}] run function __:player/resurrection2_failed

    # ----- scripted events ----- #

    # at 2 seconds
    execute as @s[scores={__res_abom_effect2=2}] positioned as @s run function __:player/resurrection_event/init

    # at 10 seconds
    execute as @s[scores={__res_abom_effect2=10}] positioned as @s run function __:player/resurrection_event/up

    # at 34+ seconds and alive
    execute as @s[scores={__time_alive=1..,__res_abom_effect2=34..}] positioned as @s run function __:player/resurrection_event/finale

    # --------------------------- #

    # increment timer
    #!sb @s __res_abom_effect2 += 1
}

# resurrection event 3
#! __:player/resurrection_event3
{
    # outside inside
    execute store result score global __arg1 run data get entity @s Pos[1]
    execute as @s at @s run function __:player/check_outside
    # fail if inside
    execute if score global __arg1 matches ..254 run function __:player/resurrection3_failed
    {
        #!sb @s __res_abom_effect3 = -1
        execute positioned as @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~1000 ~ 100000 1 100000
        title @s times 100 50 100
        title @s title {"text":"Resurrection Failed","color":"#000000"}
        title @s subtitle ""
    }

    # overworld check
    #!sb global __arg1 = 0
    execute at @s run execute if predicate __:in_overworld run scoreboard players set global __arg1 1
    # fail if not in overworld
    execute if score global __arg1 matches 0 run function __:player/resurrection3_failed
    # dead before lightning
    execute as @s[scores={__time_alive=0,__res_abom_effect3=..33}] run function __:player/resurrection3_failed

    # ----- scripted events ----- #

    # at 2 seconds
    execute as @s[scores={__res_abom_effect3=2}] positioned as @s run function __:player/resurrection_event/init

    # at 10 seconds
    execute as @s[scores={__res_abom_effect3=10}] positioned as @s run function __:player/resurrection_event/up

    # at 34+ seconds and alive
    execute as @s[scores={__time_alive=1..,__res_abom_effect3=34..}] positioned as @s run function __:player/resurrection_event/finale

    # --------------------------- #

    # increment timer
    #!sb @s __res_abom_effect3 += 1
}

# checks if the executing player has a block between them and the sky
# arguments: global __arg1 the player's y position
# result: global __arg1 is 255 if outside, and less than 255 if inside
#! __:player/check_outside
{
    # thank you BunnyMerz for this solution
    # https://gaming.stackexchange.com/questions/357024/how-could-i-check-if-a-player-is-exposed-to-rain

    #!sb global __arg1 += 1
    execute if score global __arg1 matches ..254 positioned ~ ~1 ~ if block ~ ~ ~ air run function __:player/check_outside
}
