# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Apply res. abom. effects to player executors who just ate a res. abom.

# check if holding res. abom.
#!sb @s[nbt={SelectedItem:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}}] __holding_res_abom1 = 2
#!sb @s[nbt={SelectedItem:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}}] __holding_res_abom2 = 2
#!sb @s[nbt={SelectedItem:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379308}}}] __holding_res_abom3 = 2

#!sb @s __res_abom_effect1 += 0
#!sb @s __res_abom_effect2 += 0
#!sb @s __res_abom_effect3 += 0

# player ate a beetroot_soup and is holding a res. abom. 1
execute as @s[scores={__eaten_beetroot_soup=1..,__holding_res_abom1=1..}] run function __:timer/2t/all_players/res_abom/ate_res_abom1
{
    execute at @s run playsound entity.ghast.hurt ambient @a ~ ~ ~ 1 0.7

    # clear bowl (technially not perfect, but it's fine)
    clear @s bowl 1

    # is already under the effects of res. abom. 1-3
    #!find=__res_abom_effect1=1
    #!replace=__res_abom_effect1=1|__res_abom_effect2=1|__res_abom_effect3=1
    execute as @s[scores={__res_abom_effect1=1..}] run title @s actionbar {"text":"Nothing happened...","italic":true}

    # is not under the effects of res. abom. 1-3
    execute as @s[scores={__res_abom_effect1=0,__res_abom_effect2=0,__res_abom_effect3=0}] run function __:timer/2t/all_players/res_abom/apply_res_abom1
    {
        title @s actionbar {"text":"The ritual has begun","italic":true,"bold":true,"color":"#AA0000"}
        #!sb @s __res_abom_effect1 = 1
    }
}

# player ate a beetroot_soup and is holding a res. abom. 2
execute as @s[scores={__eaten_beetroot_soup=1..,__holding_res_abom2=1..}] run function __:timer/2t/all_players/res_abom/ate_res_abom2
{
    execute at @s run playsound entity.ghast.hurt ambient @a ~ ~ ~ 1 0.6

    # clear bowl (technially not perfect, but it's fine)
    clear @s bowl 1

    # is already under the effects of res. abom. 2-3
    #!find=__res_abom_effect2=1
    #!replace=__res_abom_effect2=1|__res_abom_effect3=1
    execute as @s[scores={__res_abom_effect2=1..}] run title @s actionbar {"text":"Nothing happened...","italic":true}

    # is not under the effects of res. abom. 2-3
    execute as @s[scores={__res_abom_effect2=0,__res_abom_effect3=0}] run function __:timer/2t/all_players/res_abom/apply_res_abom2
    {
        title @s actionbar ["",{"text":"Th","bold":true,"italic":true,"color":"#440000"},{"text":"e","bold":true,"italic":true,"obfuscated":true,"color":"#440000"},{"text":" ritual has b","bold":true,"italic":true,"color":"#440000"},{"text":"e","bold":true,"italic":true,"obfuscated":true,"color":"#440000"},{"text":"gun","bold":true,"italic":true,"color":"#440000"}]
        # overwrite res. abom. 1 if need be
        #!sb @s __res_abom_effect1 = 0
        #!sb @s __res_abom_effect2 = 1
    }

    # advancement
    advancement grant @s only __:eat_abomination
}

# player ate a beetroot_soup and is holding a res. abom. 3
execute as @s[scores={__eaten_beetroot_soup=1..,__holding_res_abom3=1..}] run function __:timer/2t/all_players/res_abom/ate_res_abom3
{
    execute at @s run playsound entity.ghast.hurt ambient @a ~ ~ ~ 1 0.5
        
    # clear bowl (technially not perfect, but it's fine)
    clear @s bowl 1

    # is already under the effects of res. abom. 3
    execute as @s[scores={__res_abom_effect3=1..}] run title @s actionbar {"text":"Nothing happened...","italic":true}

    # is not under the effects of res. abom. 3
    execute as @s[scores={__res_abom_effect3=0}] run function __:timer/2t/all_players/res_abom/apply_res_abom3
    {
        title @s actionbar ["",{"text":"Th","bold":true,"italic":true,"color":"black"},{"text":"e","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":" rit","bold":true,"italic":true,"color":"black"},{"text":"ua","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"l ","bold":true,"italic":true,"color":"black"},{"text":"h","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"as b","bold":true,"italic":true,"color":"black"},{"text":"eg","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"un","bold":true,"italic":true,"color":"black"}]
        # overwrite res. abom. 1-2 if need be
        #!sb @s __res_abom_effect1 = 0
        #!sb @s __res_abom_effect2 = 0
        #!sb @s __res_abom_effect3 = 1
    }

    # advancement
    advancement grant @s only __:eat_abomination
}

# decay holding res. abom. timer
#!sb @s __holding_res_abom1 -= 1
#!sb @s __holding_res_abom2 -= 1
#!sb @s __holding_res_abom3 -= 1

# reset eaten cookie score
#!sb reset @s __eaten_beetroot_soup
