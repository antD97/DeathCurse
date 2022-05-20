# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# Find 1 curse ward 1 whose nearby on fire curse ward 1s count (__result1) is 4+ and time alive is 2+
# - as that curse ward 1, destroy 4 closest (including itself), within 1 block, on fire, & time alive 2+ curse ward 1 items
# - drop curse ward 2 with particle & sound effect
# - if there were any remaining curse ward 1s that wanted to try creating a curse ward 2, re-count nearby on fire curse ward 1s (__result1) for every remaining curse ward 1
#   - and try to create a curse ward 2 again by repeating this function
#   - repeat again if necessary
#! __:timer/10s/create_curse_ward2
{
    # destroy 4 closest (including itself), within 1 block, on fire, curse ward 1 items
    execute positioned as @s as @e[type=item,scores={__time_alive=2..,__arg1=1..},distance=..1,nbt={Item:{tag:{CustomModelData:379300}}},sort=nearest,limit=4] run kill @s

    # drop curse ward 2
    execute positioned as @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",Count:1,tag:{display:{Name:'{"text":"Curse Ward II","color":"#440000","bold":true,"italic":true}',Lore:['{"text":"-3 Death Curse Levels"}']},CustomModelData:379301}}}

    #!20x
    execute positioned as @s run particle minecraft:entity_effect ~ ~0.125 ~ 85 0 0 255 0
    execute positioned as @s run playsound minecraft:block.beacon.activate ambient @a

    # if there was a curse ward 1 remaining that wanted to create a curse ward 2...
    execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{tag:{CustomModelData:379300}}},limit=1] run function __:timer/10s/retry_curse_ward2
    {
        # recount close & on fire curse wards 1s into their __result1 score
        execute as @e[type=minecraft:item,nbt={Item:{tag:{CustomModelData:379300}}}] run function __:timer/10s/check_curse_ward1
        # try to create a curse ward 2 again!
        execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{tag:{CustomModelData:379300}}},limit=1] run function __:timer/10s/create_curse_ward2
    }
}

# Find 1 curse ward 2 whose nearby on fire curse ward 2s count (__result1) is 4+ and time alive is 2+
# - as that curse ward 2, destroy 4 closest (including itself), within 1 block, on fire, & time alive 2+ curse ward 2 items
# - drop curse ward 3 with particle & sound effect
# - if there were any remaining curse ward 2s that wanted to try creating a curse ward 3, re-count nearby on fire curse ward 2s (__result1) for every remaining curse ward 2
#   - and try to create a curse ward 3 again by repeating this function
#   - repeat again if necessary
#! __:timer/10s/create_curse_ward3
{
    # destroy 4 closest (including itself), within 1 block, on fire, curse ward 2 items
    execute positioned as @s as @e[type=item,scores={__time_alive=2..,__arg1=1..},distance=..1,nbt={Item:{tag:{CustomModelData:379301}}},sort=nearest,limit=4] run kill @s

    # drop curse ward 3
    execute positioned as @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",Count:1,tag:{display:{Name:'{"text":"Curse Ward III","color":"#000000","bold":true,"italic":true}',Lore:['{"text":"-9 Death Curse Levels"}']},CustomModelData:379302}}}

    #!20x
    execute positioned as @s run particle minecraft:entity_effect ~ ~0.125 ~ 1 0 0 255 0
    execute positioned as @s run playsound minecraft:block.beacon.power_select ambient @a

    # if there was a curse ward 2 remaining that wanted to create a curse ward 3...
    execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{tag:{CustomModelData:379301}}},limit=1] run function __:timer/10s/retry_curse_ward3
    {
        # recount close & on fire curse wards 2s into their __result1 score
        execute as @e[type=minecraft:item,nbt={Item:{tag:{CustomModelData:379301}}}] run function __:timer/10s/check_curse_ward2
        # try to create a curse ward 3 again!
        execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{tag:{CustomModelData:379301}}},limit=1] run function __:timer/10s/create_curse_ward3
    }
}
