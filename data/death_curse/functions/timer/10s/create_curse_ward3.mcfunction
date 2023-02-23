# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# as a curse ward 2 that satisfies the conditions to create a curse ward 3,
# - destroy 4 closest (including itself), within 1 block, time alive 2+ curse ward 2 items
# - drop a curse ward 3 with particle & sound effect
# - if there were any remaining curse ward 2s that wanted to try creating a curse ward 3, re-count nearby on fire curse ward 2s (__result1) for every remaining curse ward 2
#   - and try to create a curse ward 3 again by repeating this function
#   - repeat again if necessary

# destroy 4 closest (including itself), within 1 block, cooked enough, curse ward 2 items
execute at @s run kill @e[type=item,scores={__time_alive=2..},distance=..1,nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}},sort=nearest,limit=4]

# drop curse ward 2
execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",Count:1,tag:{display:{Name:'{"text":"Curse Ward III","color":"#000000","bold":true,"italic":true}',Lore:['{"text":"-11 Death Curse Levels"}']},CustomModelData:379302}}}

#!20x
execute at @s run particle entity_effect ~ ~0.125 ~ 85 0 0 255 0
execute at @s run playsound block.beacon.activate ambient @a

# if there was a curse ward 2 remaining that wanted to create a curse ward 3...
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}},limit=1] run function __:timer/10s/create_curse_ward3/retry
{
    # recount close & on fire curse wards 2s into their __result1 score
    execute as @e[type=item,nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}}] run function __:timer/10s/all_items/curse_ward2
    # try to create a curse ward 3 again
    execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}},limit=1] run function __:timer/10s/create_curse_ward3
}
