# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# outside inside
execute store result score global __arg1 run data get entity @s Pos[1]
execute as @s at @s run function __:player/check_outside
# fail if inside
execute if score global __arg1 matches ..254 run function __:player/resurrection3_failed
{
    #!sb @s __res_abom_effect3 = -1
    execute positioned as @s run playsound minecraft:entity.wither.spawn ambient @s ~ ~10000 ~ 100000000 1 1
    title @s times 100 50 100
    title @s title {"text":"Resurrection Failed","color":"#000000"}
    title @s subtitle ""

    # unmark for lightning
    #!sb @s __strike = 0

    # kill player lock and event mobs
    #!sb global __arg1 = @s __id
    execute as @e[type=minecraft:marker,tag=__player_lock] run execute if score @s __id = global __arg1 run function __:player/resurrection1_failed/kill_invis
    execute as @e[type=minecraft:skeleton,tag=__res_event] run execute if score @s __id = global __arg1 run function __:player/resurrection1_failed/kill_invis
    execute as @e[type=minecraft:wither_skeleton,tag=__res_event] run execute if score @s __id = global __arg1 run function __:player/resurrection1_failed/kill_invis
    execute as @e[type=minecraft:ghast,tag=__res_event] run execute if score @s __id = global __arg1 run function __:player/resurrection1_failed/kill_invis

    effect clear @s slow_falling
    effect clear @s levitation
    effect clear @s invisibility
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
# resistance for lightning effects
execute as @s[scores={__res_abom_effect3=2}] run effect give @s resistance 5 255 true

# at 3 seconds
execute as @s[scores={__res_abom_effect3=3}] positioned as @s run function __:player/resurrection_event/init3
{
    # summon __player_lock marker and assign its id
    summon marker ~ ~ ~ {Tags:["__player_lock","__new"]}
    #!sb global __arg1 = @s __id
    execute as @e[type=marker,tag=__new] run function __:player/resurrection_event/assign_id
    # sound
    execute positioned as @s run playsound minecraft:entity.elder_guardian.curse ambient @a ~ ~ ~ 3 0.5
    # activate smoke effect
    #!sb @s __smoke = 3
    # prevent fall damage
    effect give @s minecraft:slow_falling 1000000 0 true

    effect give @s invisibility 1000000 0 true

    # player skeleton
    #!sb global __arg1 = @s __id

    summon minecraft:lightning_bolt ~ ~ ~
    summon minecraft:skeleton ~ ~ ~ {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}

    execute as @s[y_rotation=135..-135] run execute as @e[type=skeleton,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_n
    {
        execute at @s run execute at @s run tp @s ~ ~ ~ 180 0
        function __:player/resurrection_event/assign_id
    }
    execute as @s[y_rotation=-135..-45] run execute as @e[type=skeleton,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_e
    {
        execute at @s run execute at @s run tp @s ~ ~ ~ -90 0
        function __:player/resurrection_event/assign_id
    }
    execute as @s[y_rotation=-45..45] run execute as @e[type=skeleton,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_s
    {
        execute at @s run execute at @s run tp @s ~ ~ ~ 0 0
        function __:player/resurrection_event/assign_id
    }
    execute as @s[y_rotation=45..135] run execute as @e[type=skeleton,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_w
    {
        execute at @s run execute at @s run tp @s ~ ~ ~ 90 0
        function __:player/resurrection_event/assign_id
    }

    # wither skeletons

    summon minecraft:lightning_bolt ~-2 ~ ~-2
    summon minecraft:wither_skeleton ~-2 ~ ~-2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}],DeathLootTable:"minecraft:empty"}

    summon minecraft:lightning_bolt ~2 ~ ~-2
    summon minecraft:wither_skeleton ~2 ~ ~-2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}],DeathLootTable:"minecraft:empty"}

    summon minecraft:lightning_bolt ~-2 ~ ~2
    summon minecraft:wither_skeleton ~-2 ~ ~2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}],DeathLootTable:"minecraft:empty"}

    summon minecraft:lightning_bolt ~2 ~ ~2
    summon minecraft:wither_skeleton ~2 ~ ~2 {CanPickUpLoot:0,Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b}],DeathLootTable:"minecraft:empty"}

    execute as @s[y_rotation=135..-135] run execute as @e[type=wither_skeleton,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_n
    execute as @s[y_rotation=-135..-45] run execute as @e[type=wither_skeleton,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_e
    execute as @s[y_rotation=-45..45] run execute as @e[type=wither_skeleton,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_s
    execute as @s[y_rotation=45..135] run execute as @e[type=wither_skeleton,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_w

    # ghasts

    # north
    execute as @s[y_rotation=135..-135] run summon ghast ~7 ~5 ~ {Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}
    execute as @s[y_rotation=135..-135] run summon ghast ~-7 ~5 ~ {Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}
    # east
    execute as @s[y_rotation=-135..-45] run summon ghast ~ ~5 ~7 {Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}
    execute as @s[y_rotation=-135..-45] run summon ghast ~ ~5 ~-7 {Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}
    # south
    execute as @s[y_rotation=-45..45] run summon ghast ~7 ~5 ~ {Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}
    execute as @s[y_rotation=-45..45] run summon ghast ~-7 ~5 ~ {Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}
    # west
    execute as @s[y_rotation=45..135] run summon ghast ~ ~5 ~7 {Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}
    execute as @s[y_rotation=45..135] run summon ghast ~ ~5 ~-7 {Invulnerable:1b,NoAI:1,Tags:["__res_event","__new"],DeathLootTable:"minecraft:empty"}

    execute as @s[y_rotation=135..-135] run execute as @e[type=ghast,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_n
    execute as @s[y_rotation=-135..-45] run execute as @e[type=ghast,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_e
    execute as @s[y_rotation=-45..45] run execute as @e[type=ghast,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_s
    execute as @s[y_rotation=45..135] run execute as @e[type=ghast,tag=__new] run function __:player/resurrection_event/init2/mark_and_turn_w
}

# 3-5 seconds clear the fire
execute as @s[scores={__res_abom_effect3=3..5}] positioned as @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:fire

# at 11 seconds
execute as @s[scores={__res_abom_effect3=11}] positioned as @s run function __:player/resurrection_event/up

# at 35+ seconds and alive
execute as @s[scores={__time_alive=1..,__res_abom_effect3=35..}] positioned as @s run function __:player/resurrection_event/finale3
{
    #!sb global __arg1 = @s __id

    # apply resistance
    effect give @s minecraft:resistance 3 2 true
    # mark for lightning
    #!sb @s __strike = 3
    # mark event mobs for lightning?
    # execute as @e[type=minecraft:wither_skeleton,tag=__res_event] run execute if score @s __id = global __arg1 run scoreboard players set @s __strike 3
    # execute as @e[type=minecraft:ghast,tag=__res_event] run execute if score @s __id = global __arg1 run scoreboard players set @s __strike 3
}

# --------------------------- #

# increment timer
#!sb @s __res_abom_effect3 += 1
