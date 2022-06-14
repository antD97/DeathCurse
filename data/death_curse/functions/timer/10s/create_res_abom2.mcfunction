# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# as a resurrection abomination 1 that satisfies the conditions to create a resurrection abomination 2,
# - destroy 4 closest (including itself), within 1 block, time alive 2+ resurrection abomination 1 items
# - drop a resurrection abomination 2 with particle & sound effect
# - if there were any remaining resurrection abomination 1s that wanted to try creating a resurrection abomination 2, re-count nearby on fire resurrection abomination 1s (__result1) for every remaining resurrection abomination 1
#   - and try to create a resurrection abomination 2 again by repeating this function
#   - repeat again if necessary

# destroy 4 closest (including itself), within 1 block, cooked enough, resurrection abomination 1 items
execute at @s run kill @e[type=item,scores={__time_alive=2..},distance=..1,nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},sort=nearest,limit=4]

# drop resurrection abomination 2
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:beetroot_soup",Count:1,tag:{display:{Name:'[{"text":"Re","color":"#440000","bold":true,"italic":true},{"text":"su","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"rrection Abomina","color":"#440000","bold":true,"italic":true},{"text":"t","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"ion II","color":"#440000","bold":true,"italic":true}]',Lore:['[{"text":"-3 D"},{"text":"e","obfuscated":true},{"text":"aths"}]']},CustomModelData:379307,Enchantments:[{}]}}}

#!20x
execute at @s run particle entity_effect ~ ~0.125 ~ 85 0 0 255 0
execute at @s run playsound entity.elder_guardian.hurt ambient @a

# if there was a resurrection abomination 1 remaining that wanted to create a resurrection abomination 2...
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},limit=1] run function __:timer/10s/create_res_abom2/retry
{
    # recount close & on fire resurrection abominations 1s into their __result1 score
    execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}}] run function __:timer/10s/all_items/res_abom1
    # try to create a resurrection abomination 2 again
    execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}},limit=1] run function __:timer/10s/create_res_abom2
}
