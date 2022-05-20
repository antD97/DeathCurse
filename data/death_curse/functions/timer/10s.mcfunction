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
    execute as @s[nbt={Item:{tag:{CustomModelData:379300}}}] run function __:timer/10s/check_curse_ward1
    execute as @s[nbt={Item:{tag:{CustomModelData:379301}}}] run function __:timer/10s/check_curse_ward2

    # see timer/10s/_check_create_cookie
    execute as @s[nbt={Item:{tag:{CustomModelData:379303}}}] run function __:timer/10s/check_create_curse_cookie1
    execute as @s[nbt={Item:{tag:{CustomModelData:379304}}}] run function __:timer/10s/check_create_curse_cookie2

    # Set every curse ward 3 to never despawn
    execute as @s[nbt={Item:{tag:{CustomModelData:379302}}}] run data modify entity @s Age set value -32768s
}

# see timer/10s/_create_curse_ward
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{tag:{CustomModelData:379300}}},limit=1] run function __:timer/10s/create_curse_ward2
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{tag:{CustomModelData:379301}}},limit=1] run function __:timer/10s/create_curse_ward3
