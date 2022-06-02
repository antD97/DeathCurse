# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 10s (200t) timer
schedule function __:timer/10s 10s

# -------------------------------------------- Items --------------------------------------------- #

execute as @e[type=item] run function __:timer/10s/all_items
# pick one curse ward that can create an upgraded one, create it, and repeat recursively
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379300}}},limit=1] run function __:timer/10s/create_curse_ward2
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}},limit=1] run function __:timer/10s/create_curse_ward3
# pick one resurrection abomination that can create an upgraded one, create it, and repeat recursively
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},limit=1] run function __:timer/10s/create_res_abom2
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}},limit=1] run function __:timer/10s/create_res_abom3

# ------------------------------------------- Players -------------------------------------------- #

# __result1 set to 1 if any player is under any res. abom. effect
#!sb global __result1 = 0
execute as @a run function __:timer/10s/all_players

# if between sunset & midnight and someone ate a res. abom., make it thunder
execute store result score global __temp1 run time query daytime
execute if score global __result1 matches 1 run execute if score global __temp1 matches 12001..18005 run weather thunder 0

# if any other time and someone ate a res. abom., make it rain
#!find=0..12000
#!replace=0..12000|18006..24000
execute if score global __result1 matches 1 run execute if score global __temp1 matches 0..12000 run weather rain 0
