# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# Find 1 res. abom. 1 whose nearby on fire res. abom. 1s count (__result1) is 4+ and time alive is 2+
# - as that res. abom. 1, destroy 4 closest (including itself), within 1 block, on fire, & time alive 2+ res. abom. 1 items
# - drop res. abom. 2 with particle & sound effect
# - if there were any remaining res. abom. 1s that wanted to try creating a res. abom. 2, re-count nearby on fire res. abom. 1s (__result1) for every remaining res. abom. 1
#   - and try to create a res. abom. 2 again by repeating this function
#   - repeat again if necessary
#! __:timer/10s/create_res_abom2
{
    # destroy 4 closest (including itself), within 1 block, on fire, res. abom. 1 items
    execute positioned as @s as @e[type=item,scores={__time_alive=2..,__arg1=1..},distance=..1,nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},sort=nearest,limit=4] run kill @s

    # drop res. abom. 2
    execute positioned as @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot_soup",Count:1,tag:{display:{Name:'[{"text":"Re","color":"#440000","bold":true,"italic":true},{"text":"su","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"rrection Abomina","color":"#440000","bold":true,"italic":true},{"text":"t","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"ion II","color":"#440000","bold":true,"italic":true}]',Lore:['[{"text":"-3 D"},{"text":"e","obfuscated":true},{"text":"aths"}]']},CustomModelData:379307,Enchantments:[{}]}}}

    #!20x
    execute positioned as @s run particle minecraft:entity_effect ~ ~0.125 ~ 85 0 0 255 0
    execute positioned as @s run playsound minecraft:entity.elder_guardian.hurt ambient @a

    # if there was a res. abom. 1 remaining that wanted to create a res. abom. 2...
    execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},limit=1] run function __:timer/10s/retry_res_abom2
    {
        # recount close & on fire res. abom.s 1s into their __result1 score
        execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}}] run function __:timer/10s/check_res_abom1
        # try to create a res. abom. 2 again!
        execute as @e[type=item,scores={__time_alive=2..,__result1=4..,__result2=1},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},limit=1] run function __:timer/10s/create_res_abom2
    }
}

# Find 1 res. abom. 2 whose nearby on fire res. abom. 2s count (__result1) is 4+ and time alive is 2+
# - as that res. abom. 2, destroy 4 closest (including itself), within 1 block, on fire, & time alive 2+ res. abom. 2 items
# - drop res. abom. 3 with particle & sound effect
# - if there were any remaining res. abom. 2s that wanted to try creating a res. abom. 3, re-count nearby on fire res. abom. 2s (__result1) for every remaining res. abom. 2
#   - and try to create a res. abom. 3 again by repeating this function
#   - repeat again if necessary
#! __:timer/10s/create_res_abom3
{
    # destroy 4 closest (including itself), within 1 block, on fire, res. abom. 2 items
    execute positioned as @s as @e[type=item,scores={__time_alive=2..,__arg1=1..},distance=..1,nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}},sort=nearest,limit=4] run kill @s

    # drop res. abom. 3
    execute positioned as @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:beetroot_soup",Count:1,tag:{display:{Name:'[{"text":"R","color":"#000000","bold":true,"italic":true},{"text":"es","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"urre","color":"#000000","bold":true,"italic":true},{"text":"c","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"tion Abom","color":"#000000","bold":true,"italic":true},{"text":"i","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"nati","color":"#000000","bold":true,"italic":true},{"text":"o","color":"black","bold":true,"italic":true,"obfuscated":true},{"text":"n III","color":"#000000","bold":true,"italic":true}]',Lore:['[{"text":"-9 Dea"},{"text":"th","obfuscated":true},{"text":"s"}]']},CustomModelData:379308,Enchantments:[{}]}}}

    #!20x
    execute positioned as @s run particle minecraft:entity_effect ~ ~0.125 ~ 1 0 0 255 0
    execute positioned as @s run playsound minecraft:entity.elder_guardian.ambient ambient @a ~ ~ ~ 0.5

    # if there was a res. abom. 2 remaining that wanted to create a res. abom. 3...
    execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}},limit=1] run function __:timer/10s/retry_res_abom3
    {
        # recount close & on fire res. abom.s 2s into their __result1 score
        execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}}] run function __:timer/10s/check_res_abom2
        # try to create a res. abom. 3 again!
        execute as @e[type=item,scores={__time_alive=2..,__result1=4..,__result2=1},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}},limit=1] run function __:timer/10s/create_res_abom3
    }
}
