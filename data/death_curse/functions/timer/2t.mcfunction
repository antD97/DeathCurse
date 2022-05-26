# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 2t (0.1s) timer
schedule function __:timer/2t 2t

# apply particle effects to hostile mobs
#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager
execute as @e[type=minecraft:blaze] run function __:particle/hostile

# apply particle effects to hostile mobs
#!find=cave_spider
#!replace=cave_spider|enderman|piglin|spider|zombified_piglin
execute as @e[type=minecraft:cave_spider] run function __:particle/hostile

execute as @a run function __:timer/2t/player
{
    # apply particle effects to players
    execute as @a run function __:particle/player

    # calculate curse level for each player
    function __:player/calc_level

    # check if eaten a curse cookie & apply effects
    function __:player/curse_cookie

    # check if eaten a curse cookie & apply effects
    function __:player/res_abom
}

# Execute as every item...
execute as @e[type=minecraft:item] run function __:timer/2t/all_items1
{
    # set all curse wards invulnerable
    #!find=379300
    #!replace=379300|379301|379302
    execute as @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379300}}}] run data modify entity @s Invulnerable set value 1b

    # set all res. aboms. invulnerable
    #!find=379306
    #!replace=379306|379307|379308
    execute as @s[nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}}] run data modify entity @s Invulnerable set value 1b
}

execute as @a[scores={__jitter_effect=1}] run function __:player/jitter
{
    #!sb global __arg1 = 4
    function __:util/random
    execute positioned as @s rotated as @s if score global __result1 matches 0 run tp @s ~ ~ ~ ~0.2 ~
    execute positioned as @s rotated as @s if score global __result1 matches 1 run tp @s ~ ~ ~ ~-0.2 ~
    execute positioned as @s rotated as @s if score global __result1 matches 2 run tp @s ~ ~ ~ ~ ~0.2
    execute positioned as @s rotated as @s if score global __result1 matches 3 run tp @s ~ ~ ~ ~ ~-0.2
}

# strike with lightning
# didn't end up using different strike levels, but the option is there
execute as @a[scores={__strike=1..,__time_alive=1..}] run execute positioned as @s run summon minecraft:lightning_bolt
execute as @e[type=minecraft:skeleton,scores={__strike=1..}] run execute positioned as @s run summon minecraft:lightning_bolt
execute as @e[type=minecraft:wither_skeleton,scores={__strike=1..}] run execute positioned as @s run summon minecraft:lightning_bolt
execute as @e[type=minecraft:ghast,scores={__strike=1..}] run execute positioned as @s run summon minecraft:lightning_bolt
