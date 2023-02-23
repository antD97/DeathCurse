# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# outside inside
execute store result score global __temp1 run data get entity @s Pos[1]
execute as @s at @s run function __:util/check_outside

# fail if inside
execute if score global __temp1 matches ..319 run function __:timer/1s/all_players/resurrection_event1/failed
{
    # remove effects
    #!sb @s __res_abom_effect1 = 0
    #!sb @s __strike = 0
    #!sb @s __smoke = 0

    execute at @s run playsound entity.wither.spawn ambient @s ~ ~10000 ~ 100000000 1 1

    title @s times 100 50 100
    title @s title {"text":"Resurrection Failed","color":"#AA0000"}
    title @s subtitle ""

    effect clear @s slow_falling
    effect clear @s levitation

    # kill player lock and event mobs
    #!sb global __temp1 = @s __id
    #!find=marker
    #!replace=marker|skeleton
    execute as @e[type=marker,tag=__res_event] run execute if score @s __id = global __temp1 run function __:util/kill_invis
}

# fail if not in overworld
#!sb global __temp1 = 0
execute at @s run execute if predicate __:in_overworld run scoreboard players set global __temp1 1
execute if score global __temp1 matches 0 run function __:timer/1s/all_players/resurrection_event1/failed

# --------------------------------------- scripted events ---------------------------------------- #

# at 2 seconds
# resistances for lightning effects
execute as @s[scores={__res_abom_effect1=2}] run function __:timer/1s/all_players/resurrection_event/2s

# at 3 seconds
execute as @s[scores={__res_abom_effect1=3}] at @s run function __:timer/1s/all_players/resurrection_event1/3s
{
    # summon __res_event marker and assign its id
    summon marker ~ ~ ~ {Tags:["__res_event","__new"]}
    #!sb global __temp1 = @s __id
    execute as @e[type=marker,tag=__new] run function __:timer/1s/all_players/resurrection_event/assign_id
    {
        #!sb @s __id = global __temp1
        tag @s remove __new
    }

    # sound
    execute at @s run playsound entity.elder_guardian.curse ambient @a ~ ~ ~ 3 0.5

    # activate smoke effect
    #!sb @s __smoke = 1

    # prevent fall damage
    effect give @s slow_falling 1000000 0 true

    # --- skeletons --- #
    execute as @s[y_rotation=135..-135] run function __:timer/1s/all_players/resurrection_event1/3s/summon_skeletons_n
    {
        #!sb global __temp1 = @s __id

        summon lightning_bolt ~-2 ~ ~
        summon skeleton ~-2 ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        summon lightning_bolt ~2 ~ ~
        summon skeleton ~2 ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        execute as @e[type=skeleton,tag=__new] run function __:timer/1s/all_players/resurrection_event1/3s/summon_skeletons_n/turn_and_assign_id
        {
            execute at @s run tp @s ~ ~ ~ 180 0
            function __:timer/1s/all_players/resurrection_event/assign_id
        }
    }
    execute as @s[y_rotation=-135..-45] run function __:timer/1s/all_players/resurrection_event1/3s/summon_skeletons_e
    {
        #!sb global __temp1 = @s __id

        summon lightning_bolt ~ ~ ~-2
        summon skeleton ~ ~ ~-2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        summon lightning_bolt ~ ~ ~2
        summon skeleton ~ ~ ~2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        execute as @e[type=skeleton,tag=__new] run function __:timer/1s/all_players/resurrection_event1/3s/summon_skeletons_e/turn_and_assign_id
        {
            execute at @s run tp @s ~ ~ ~ -90 0
            function __:timer/1s/all_players/resurrection_event/assign_id
        }
    }
    execute as @s[y_rotation=-45..45] run function __:timer/1s/all_players/resurrection_event1/3s/summon_skeletons_s
    {
        #!sb global __temp1 = @s __id

        summon lightning_bolt ~-2 ~ ~
        summon skeleton ~-2 ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        summon lightning_bolt ~2 ~ ~
        summon skeleton ~2 ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        execute as @e[type=skeleton,tag=__new] run function __:timer/1s/all_players/resurrection_event1/3s/summon_skeletons_s/turn_and_assign_id
        {
            execute at @s run tp @s ~ ~ ~ 0 0
            function __:timer/1s/all_players/resurrection_event/assign_id
        }
    }
    execute as @s[y_rotation=45..135] run function __:timer/1s/all_players/resurrection_event1/3s/summon_skeletons_w
    {
        #!sb global __temp1 = @s __id

        summon lightning_bolt ~ ~ ~-2
        summon skeleton ~ ~ ~-2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        summon lightning_bolt ~ ~ ~2
        summon skeleton ~ ~ ~2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        execute as @e[type=skeleton,tag=__new] run function __:timer/1s/all_players/resurrection_event1/3s/summon_skeletons_w/turn_and_assign_id
        {
            execute at @s run tp @s ~ ~ ~ 90 0
            function __:timer/1s/all_players/resurrection_event/assign_id
        }
    }

    # ----------------- #
}

# 3-5 seconds clear the fire
execute as @s[scores={__res_abom_effect1=3..5}] at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace fire

# at 11 seconds
execute as @s[scores={__res_abom_effect1=11}] at @s run function __:timer/1s/all_players/resurrection_event/up
{
    # play sound
    playsound entity.ender_dragon.death ambient @a ~ ~ ~ 3 0.5

    #!sb global __temp1 = @s __id

    # set __result1 of the player lock to move it up
    execute as @e[type=marker,tag=__res_event] run execute if score @s __id = global __temp1 run scoreboard players set @s __result1 1

    # set __result1 of the event mobs to move them up
    execute as @e[type=skeleton,tag=__res_event] run execute if score @s __id = global __temp1 run scoreboard players set @s __result1 1
    execute as @e[type=wither_skeleton,tag=__res_event] run execute if score @s __id = global __temp1 run scoreboard players set @s __result1 1
    execute as @e[type=ghast,tag=__res_event] run execute if score @s __id = global __temp1 run scoreboard players set @s __result1 1

    # smooth lock with levitation
    effect clear @s slow_falling
    effect give @s levitation 1000000 0 true
}

# at 35+ seconds and alive
execute as @s[scores={__time_alive=1..,__res_abom_effect1=35..}] at @s run function __:timer/1s/all_players/resurrection_event1/35s
{
    # apply resistance
    effect give @s resistance 3 0 true

    # mark for lightning
    #!sb @s __strike = 1
}

# ------------------------------------------------------------------------------------------------ #

# increment timer
execute as @s[scores={__res_abom_effect1=1..}] run scoreboard players add @s __res_abom_effect1 1
