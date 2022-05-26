# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# outside inside
execute store result score global __arg1 run data get entity @s Pos[1]
execute as @s at @s run function __:player/check_outside
# fail if inside
execute if score global __arg1 matches ..254 run function __:player/resurrection1_failed
{
    #!sb @s __res_abom_effect1 = -1
    execute positioned as @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~10000 ~ 100000000 1 1
    title @s times 100 50 100
    title @s title {"text":"Resurrection Failed","color":"#AA0000"}
    title @s subtitle ""

    # unmark for lightning
    #!sb @s __strike = 0

    # kill player lock and event mobs
    #!sb global __arg1 = @s __id
    execute as @e[type=minecraft:marker,tag=__player_lock] run execute if score @s __id = global __arg1 run function __:player/resurrection1_failed/kill_invis
    {
        data modify entity @s ArmorItems set value []
        data modify entity @s HandItems set value []
        effect give @s invisibility 5 0 true
        kill @s
    }
    execute as @e[type=minecraft:skeleton,tag=__res_event] run execute if score @s __id = global __arg1 run function __:player/resurrection1_failed/kill_invis

    effect clear @s slow_falling
    effect clear @s levitation
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
# resistance for lightning effects
execute as @s[scores={__res_abom_effect1=2}] run effect give @s resistance 5 255 true

# at 3 seconds
execute as @s[scores={__res_abom_effect1=3}] positioned as @s run function __:player/resurrection_event/init1
{
    # summon __player_lock marker and assign its id
    summon marker ~ ~ ~ {Tags:["__player_lock","__new"]}
    #!sb global __arg1 = @s __id
    execute as @e[type=marker,tag=__new] run function __:player/resurrection_event/assign_id
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

    # skeletons
    execute as @s[y_rotation=135..-135] run function __:player/resurrection_event/init1/summon_skeletons_n
    {
        #!sb global __arg1 = @s __id

        summon minecraft:lightning_bolt ~-2 ~ ~
        summon minecraft:skeleton ~-2 ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        summon minecraft:lightning_bolt ~2 ~ ~
        summon minecraft:skeleton ~2 ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        execute as @e[type=skeleton,tag=__new] run function __:player/resurrection_event/init1/summon_skeletons_n_mark
        {
            execute at @s run tp @s ~ ~ ~ 180 0
            function __:player/resurrection_event/assign_id
        }
    }
    execute as @s[y_rotation=-135..-45] run function __:player/resurrection_event/init1/summon_skeletons_e/
    {
        #!sb global __arg1 = @s __id

        summon minecraft:lightning_bolt ~ ~ ~-2
        summon minecraft:skeleton ~ ~ ~-2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        summon minecraft:lightning_bolt ~ ~ ~2
        summon minecraft:skeleton ~ ~ ~2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        execute as @e[type=skeleton,tag=__new] run function __:player/resurrection_event/init1/summon_skeletons_e_mark
        {
            execute at @s run tp @s ~ ~ ~ -90 0
            function __:player/resurrection_event/assign_id
        }
    }
    execute as @s[y_rotation=-45..45] run function __:player/resurrection_event/init1/summon_skeletons_s
    {
        #!sb global __arg1 = @s __id

        summon minecraft:lightning_bolt ~-2 ~ ~
        summon minecraft:skeleton ~-2 ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        summon minecraft:lightning_bolt ~2 ~ ~
        summon minecraft:skeleton ~2 ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        execute as @e[type=skeleton,tag=__new] run function __:player/resurrection_event/init1/summon_skeletons_s_mark
        {
            execute at @s run tp @s ~ ~ ~ 0 0
            function __:player/resurrection_event/assign_id
        }
    }
    execute as @s[y_rotation=45..135] run function __:player/resurrection_event/init1/summon_skeletons_w
    {
        #!sb global __arg1 = @s __id

        summon minecraft:lightning_bolt ~ ~ ~-2
        summon minecraft:skeleton ~ ~ ~-2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        summon minecraft:lightning_bolt ~ ~ ~2
        summon minecraft:skeleton ~ ~ ~2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],DeathLootTable:"minecraft:empty"}

        execute as @e[type=skeleton,tag=__new] run function __:player/resurrection_event/init1/summon_skeletons_w_mark
        {
            execute at @s run tp @s ~ ~ ~ 90 0
            function __:player/resurrection_event/assign_id
        }
    }
}

# 3-5 seconds clear the fire
execute as @s[scores={__res_abom_effect1=3..5}] positioned as @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:fire

# at 11 seconds
execute as @s[scores={__res_abom_effect1=11}] positioned as @s run function __:player/resurrection_event/up
{
    #!sb global __arg1 = @s __id

    # play sound
    playsound minecraft:entity.ender_dragon.death ambient @a ~ ~ ~ 3 0.5
    # set __result1 of the player-lock to move it up
    execute as @e[type=minecraft:marker,tag=__player_lock] run execute if score @s __id = global __arg1 run scoreboard players set @s __result1 1
    # set __result1 of the event mobs to move them up
    execute as @e[type=minecraft:skeleton,tag=__res_event] run execute if score @s __id = global __arg1 run scoreboard players set @s __result1 1
    execute as @e[type=minecraft:wither_skeleton,tag=__res_event] run execute if score @s __id = global __arg1 run scoreboard players set @s __result1 1
    execute as @e[type=minecraft:ghast,tag=__res_event] run execute if score @s __id = global __arg1 run scoreboard players set @s __result1 1

    # smooth lock with levitation
    effect give @s minecraft:levitation 1000000 0 true
    effect clear @s minecraft:slow_falling
}

# at 35+ seconds and alive
execute as @s[scores={__time_alive=1..,__res_abom_effect1=35..}] positioned as @s run function __:player/resurrection_event/finale1
{
    #!sb global __arg1 = @s __id

    # apply resistance
    effect give @s minecraft:resistance 3 0 true
    # mark for lightning
    #!sb @s __strike = 1
    # mark event mobs for lightning?
    # execute as @e[type=minecraft:skeleton,tag=__res_event] run execute if score @s __id = global __arg1 run scoreboard players set @s __strike 1
}

# --------------------------- #

# increment timer
#!sb @s __res_abom_effect1 += 1
