# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 10s (200t) timer
schedule function __:timer/10s 10s

# intro message
#!sb @a __introduced += 0
execute as @a[scores={__introduced=0}] run function __:player/intro

# Execute as every item...
execute as @e[type=minecraft:item] run function __:timer/10s/all_items1
{
    # see timer/10s/_check_curse_ward
    execute as @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379300}}}] run function __:timer/10s/check_curse_ward1
    execute as @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}}] run function __:timer/10s/check_curse_ward2

    # Set every curse ward 3 to never despawn
    execute as @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379302}}}] run data modify entity @s Age set value -32768s

    # see timer/10s/_check_create_cookie
    execute as @s[nbt={Item:{id:"minecraft:cookie",tag:{CustomModelData:379303}}}] run function __:timer/10s/check_create_curse_cookie1
    execute as @s[nbt={Item:{id:"minecraft:cookie",tag:{CustomModelData:379304}}}] run function __:timer/10s/check_create_curse_cookie2

    # see timer/10s/_check_res_abom
    execute as @s[nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}}] run function __:timer/10s/check_res_abom1
    execute as @s[nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}}] run function __:timer/10s/check_res_abom2

    # Set every res. abom. 3 to never despawn
    execute as @s[nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379308}}}] run data modify entity @s Age set value -32768s
}

# see timer/10s/_create_curse_ward
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379300}}},limit=1] run function __:timer/10s/create_curse_ward2
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}},limit=1] run function __:timer/10s/create_curse_ward3

# see timer/10s/_create_res_abom
execute as @e[type=item,scores={__time_alive=2..,__result1=4..,__result2=1},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},limit=1] run function __:timer/10s/create_res_abom2
execute as @e[type=item,scores={__time_alive=2..,__result1=4..,__result2=1},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}},limit=1] run function __:timer/10s/create_res_abom3

# resurrection weather
execute store result score global __result1 run time query daytime

# store if somenoone is under a res. abom. effect in global __result2
#!sb global __result2 = 0
#!find=__res_abom_effect1
#!replace=__res_abom_effect1|__res_abom_effect2|__res_abom_effect3
execute if entity @a[scores={__res_abom_effect1=1..}] run scoreboard players set global __result2 1

# if between sunset & midnight and someone ate a res. abom., make it thunder
execute if score global __result2 matches 1 run execute if score global __result1 matches 12001..18005 run weather thunder 0

# if any other time and someone ate a res. abom., make it rain
#!find=0..12000
#!replace=0..12000|18006..24000
execute if score global __result2 matches 1 run execute if score global __result1 matches 0..12000 run weather rain 0

# random effects for res. abom. effect players
#!find=effect1
#!replace=effect1|effect2|effect3
execute as @a[scores={__res_abom_effect1=1}] run function __:player/res_abom_ambient_slow
{
    #!sb global __arg1 = 10
    function __:util/random

    # 20% random creepy sound and jitter
    execute positioned as @s rotated as @s if score global __result1 matches 0..1 run function __:player/random_creepy_sound
    {
        # save previous random value
        #!sb global __result2 = global __result1

        #!sb global __arg1 = 6
        function __:util/random
        execute if score global __result1 matches 0 run playsound minecraft:entity.strider.ambient ambient @s ^2 ^ ^
        execute if score global __result1 matches 0 run tp @s ~ ~ ~ ~1 ~
        execute if score global __result1 matches 1 run playsound minecraft:entity.strider.ambient ambient @s ^-2 ^ ^
        execute if score global __result1 matches 1 run tp @s ~ ~ ~ ~-1 ~
        execute if score global __result1 matches 2 run playsound minecraft:entity.strider.death ambient @s ^2 ^ ^
        execute if score global __result1 matches 2 run tp @s ~ ~ ~ ~1 ~
        execute if score global __result1 matches 3 run playsound minecraft:entity.strider.death ambient @s ^-2 ^ ^
        execute if score global __result1 matches 3 run tp @s ~ ~ ~ ~-1 ~
        execute if score global __result1 matches 4 run playsound minecraft:entity.strider.hurt ambient @s ^2 ^ ^
        execute if score global __result1 matches 4 run tp @s ~ ~ ~ ~1 ~
        execute if score global __result1 matches 5 run playsound minecraft:entity.strider.hurt ambient @s ^-2 ^ ^
        execute if score global __result1 matches 5 run tp @s ~ ~ ~ ~-1 ~

        # restore previous random value
        #!sb global __result1 = global __result2
    }

    # res. abom. effect 2-3: 10% jitter effect
    #!find=effect2
    #!replace=effect2|effect3
    execute as @s[scores={__res_abom_effect2=1}] positioned as @s rotated as @s if score global __result1 matches 2 run function __:player/res_abom_jitter
    {
        effect give @s minecraft:slowness 10 0 true

        # sound
        execute positioned as @s run playsound minecraft:ambient.basalt_deltas.additions ambient @s ~ ~10000 ~ 100000000 1 1

        # jitter effect
        scoreboard players set @s __jitter_effect 1
        scoreboard players operation @s __jitter_effect_end = global __effect_timer
        scoreboard players add @s __jitter_effect_end 10
    }

    # res. abom. effect 3: 10% fearish effect
    execute as @s[scores={__res_abom_effect3=1}] positioned as @s rotated as @s if score global __result1 matches 3 run function __:player/res_abom_fear
    {
        effect give @s minecraft:jump_boost 5 200 true
        effect give @s minecraft:slowness 5 255 true
        effect give @s minecraft:blindness 6 0 true

        # fear particle & sound effect
        scoreboard players set @s __feared 1
        scoreboard players operation @s __feared_end = global __effect_timer
        scoreboard players add @s __feared_end 10
    }
}
