# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 2t (0.1s) timer
schedule function __:timer/2t 2t

# apply particle effects to players
execute as @a run function __:particle/player

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
    # calculate curse level for each player
    function __:player/calc_level

    # check if eaten a curse cookie & apply effects
    function __:player/curse_cookie
}

# Execute as every item...
execute as @e[type=minecraft:item] run function __:timer/2t/all_items1
{
    # set all curse wards invulnerable
    #!find=379300
    #!replace=379300|379301|379302
    execute as @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379300}}}] run data modify entity @s Invulnerable set value 1b
}
