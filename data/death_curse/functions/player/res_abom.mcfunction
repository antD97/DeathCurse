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
execute as @s[scores={__eaten_beetroot_soup=1..,__holding_res_abom1=1..}] run function __:player/ate_res_abom1
{
    playsound minecraft:entity.ghast.hurt ambient @s ~ ~1000 ~ 100000 0.7

    # clear bowl (technially not perfect, but it's fine)
    clear @s minecraft:bowl 1

    # is already under the effects of res. abom. 1-3
    #!find=__res_abom_effect1=1
    #!replace=__res_abom_effect1=1|__res_abom_effect2=1|__res_abom_effect3=1
    execute as @s[scores={__res_abom_effect1=1..}] run title @s actionbar {"text":"Nothing happened...","italic":true}
    # has no deaths
    execute as @s[scores={__deaths=0}] run title @s actionbar {"text":"Nothing happened...","italic":true}

    # has deaths and is not under the effects of res. abom. 1-3
    execute as @s[scores={__deaths=1..,__res_abom_effect1=0,__res_abom_effect2=0,__res_abom_effect3=0}] run function __:player/apply_res_abom1
    {
        title @s actionbar {"text":"You feel uneasy","italic":true,"bold":true,"color":"#AA0000"}
        #!sb @s __res_abom_effect1 = 1
    }
}

# player ate a beetroot_soup and is holding a res. abom. 2
execute as @s[scores={__eaten_beetroot_soup=1..,__holding_res_abom2=1..}] run function __:player/ate_res_abom2
{
    playsound minecraft:entity.ghast.hurt ambient @s ~ ~1000 ~ 100000 0.6

    # clear bowl (technially not perfect, but it's fine)
    clear @s minecraft:bowl 1

    # is already under the effects of res. abom. 2-3
    #!find=__res_abom_effect2=1
    #!replace=__res_abom_effect2=1|__res_abom_effect3=1
    execute as @s[scores={__res_abom_effect2=1..}] run title @s actionbar {"text":"Nothing happened...","italic":true}
    # has no deaths
    execute as @s[scores={__deaths=0}] run title @s actionbar {"text":"Nothing happened...","italic":true}

    # has deaths and is not under the effects of res. abom. 2-3
    execute as @s[scores={__deaths=1..,__res_abom_effect2=0,__res_abom_effect3=0}] run function __:player/apply_res_abom2
    {
        title @s actionbar {"text":"You feel dread","italic":true,"bold":true,"color":"#440000"}
        # overwrite res. abom. 1 if need be
        #!sb @s __res_abom_effect1 = 0
        #!sb @s __res_abom_effect2 = 1
    }
}

# player ate a beetroot_soup and is holding a res. abom. 3
execute as @s[scores={__eaten_beetroot_soup=1..,__holding_res_abom3=1..}] run function __:player/ate_res_abom3
{
        playsound minecraft:entity.ghast.hurt ambient @s ~ ~1000 ~ 100000 0.5
        
    # clear bowl (technially not perfect, but it's fine)
    clear @s minecraft:bowl 1

    # is already under the effects of res. abom. 3
    execute as @s[scores={__res_abom_effect3=1..}] run title @s actionbar {"text":"Nothing happened...","italic":true}
    # has no deaths
    execute as @s[scores={__deaths=0}] run title @s actionbar {"text":"Nothing happened...","italic":true}

    # has deaths and is not under the effects of res. abom. 3
    execute as @s[scores={__deaths=1..,__res_abom_effect3=0}] run function __:player/apply_res_abom3
    {
        title @s actionbar {"text":"You feel terrified","italic":true,"bold":true,"color":"#000000"}
        # overwrite res. abom. 1-2 if need be
        #!sb @s __res_abom_effect1 = 0
        #!sb @s __res_abom_effect2 = 0
        #!sb @s __res_abom_effect3 = 1
    }
}

# decay holding res. abom. timer
#!sb @s __holding_res_abom1 -= 1
#!sb @s __holding_res_abom2 -= 1
#!sb @s __holding_res_abom3 -= 1

# reset eaten cookie score
#!sb reset @s __eaten_beetroot_soup
