# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# as a resurrection abomination 2 that satisfies the conditions to create a resurrection abomination 3,
# - destroy 4 closest (including itself), within 1 block, time alive 2+ resurrection abomination 2 items
# - drop a resurrection abomination 3 with particle & sound effect
# - if there were any remaining resurrection abomination 2s that wanted to try creating a resurrection abomination 3, re-count nearby on fire resurrection abomination 2s (__result1) for every remaining resurrection abomination 2
#   - and try to create a resurrection abomination 3 again by repeating this function
#   - repeat again if necessary

# destroy 4 closest (including itself), within 1 block, cooked enough, resurrection abomination 2 items
execute at @s run kill @e[type=item,scores={__time_alive=2..},distance=..1,nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}},sort=nearest,limit=4]

# drop resurrection abomination 3
execute at @s run summon item ~ ~ ~ {Item:{id:"minecraft:beetroot_soup",Count:1,tag:{display:{Name:'[{"text":"R","color":"#000000","bold":true,"italic":true},{"text":"es","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"urre","color":"#000000","bold":true,"italic":true},{"text":"c","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"tion Abom","color":"#000000","bold":true,"italic":true},{"text":"i","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"nati","color":"#000000","bold":true,"italic":true},{"text":"o","color":"black","bold":true,"italic":true,"obfuscated":true},{"text":"n III","color":"#000000","bold":true,"italic":true}]',Lore:['[{"text":"-11 Dea"},{"text":"th","obfuscated":true},{"text":"s"}]']},CustomModelData:379308,Enchantments:[{}]}}}

#!20x
execute at @s run particle entity_effect ~ ~0.125 ~ 0 0 0 255 0
execute at @s run playsound entity.elder_guardian.ambient ambient @a ~ ~ ~ 0.5

# if there was a resurrection abomination 2 remaining that wanted to create a resurrection abomination 2...
execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}},limit=1] run function __:timer/10s/create_res_abom3/retry
{
    # recount close & on fire resurrection abominations 2s into their __result1 score
    execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}}] run function __:timer/10s/all_items/res_abom2
    # try to create a resurrection abomination 3 again
    execute as @e[type=item,scores={__time_alive=2..,__result1=4..},nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}},limit=1] run function __:timer/10s/create_res_abom3
}
