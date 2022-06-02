# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 2t (0.1s) timer
schedule function __:timer/2t 2t

#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager\
    #! |cave_spider|enderman|piglin|spider|zombified_piglin
execute as @e[type=blaze] run function __:timer/2t/all_hostiles

execute as @a run function __:timer/2t/all_players

execute as @e[type=item] run function __:timer/2t/all_items
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
