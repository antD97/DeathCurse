# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# cloaks 1 hostile mob within 30 blocks of the executor (be sure to be positioned as the exectuor)

# argument used to identify which player is trying to apply the curse
scoreboard players operation global death_curse_arg1 = @s death_curse_id
# use to count the number cursed by this player
scoreboard players set global death_curse_result1 0

# mark cloakable mobs
# skipped underwater mobs as they don't show particles correctly
# skipped illusioner because cloak makes them easier to fight
# skipped shulker cause the effect wasn't great
execute as @e[type=minecraft:blaze] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:creeper] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
# execute if score global death_curse_result1 matches 0 as @e[type=minecraft:drowned] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
# execute if score global death_curse_result1 matches 0 as @e[type=minecraft:elder_guardian] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:endermite] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:evoker] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:ghast] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
# execute if score global death_curse_result1 matches 0 as @e[type=minecraft:guardian] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:hoglin] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:husk] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
# execute if score global death_curse_result1 matches 0 as @e[type=minecraft:illusioner] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:magma_cube] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:phantom] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:piglin_brute] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:pillager] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:ravager] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:shulker] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:silverfish] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:skeleton] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:slime] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:stray] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:vex] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:vindicator] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:witch] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:wither] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:wither_skeleton] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:zoglin] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:zombie] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:zombie_villager] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile

execute if score global death_curse_result1 matches 0 as @e[type=minecraft:cave_spider] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:enderman] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:piglin] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:spider] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile
execute if score global death_curse_result1 matches 0 as @e[type=minecraft:zombified_piglin] run function death_curse:curse/effect/helper/curse_leak1_mark_hostile

# cloak a random hostile mob
scoreboard players operation global death_curse_arg2 = @s death_curse_level
execute if score global death_curse_result1 matches 0 as @e[scores={death_curse_hostile=1},sort=random,limit=1] run function death_curse:hostile_mob/cloak1

# remove hostile mark
scoreboard players set @e[type=minecraft:blaze] death_curse_hostile 0
scoreboard players set @e[type=minecraft:creeper] death_curse_hostile 0
# scoreboard players set @e[type=minecraft:drowned] death_curse_hostile 0
# scoreboard players set @e[type=minecraft:elder_guardian] death_curse_hostile 0
scoreboard players set @e[type=minecraft:endermite] death_curse_hostile 0
scoreboard players set @e[type=minecraft:evoker] death_curse_hostile 0
scoreboard players set @e[type=minecraft:ghast] death_curse_hostile 0
# scoreboard players set @e[type=minecraft:guardian] death_curse_hostile 0
scoreboard players set @e[type=minecraft:hoglin] death_curse_hostile 0
scoreboard players set @e[type=minecraft:husk] death_curse_hostile 0
# scoreboard players set @e[type=minecraft:illusioner] death_curse_hostile 0
scoreboard players set @e[type=minecraft:magma_cube] death_curse_hostile 0
scoreboard players set @e[type=minecraft:phantom] death_curse_hostile 0
scoreboard players set @e[type=minecraft:piglin_brute] death_curse_hostile 0
scoreboard players set @e[type=minecraft:pillager] death_curse_hostile 0
scoreboard players set @e[type=minecraft:ravager] death_curse_hostile 0
scoreboard players set @e[type=minecraft:shulker] death_curse_hostile 0
scoreboard players set @e[type=minecraft:silverfish] death_curse_hostile 0
scoreboard players set @e[type=minecraft:skeleton] death_curse_hostile 0
scoreboard players set @e[type=minecraft:slime] death_curse_hostile 0
scoreboard players set @e[type=minecraft:stray] death_curse_hostile 0
scoreboard players set @e[type=minecraft:vex] death_curse_hostile 0
scoreboard players set @e[type=minecraft:vindicator] death_curse_hostile 0
scoreboard players set @e[type=minecraft:witch] death_curse_hostile 0
scoreboard players set @e[type=minecraft:wither] death_curse_hostile 0
scoreboard players set @e[type=minecraft:wither_skeleton] death_curse_hostile 0
scoreboard players set @e[type=minecraft:zoglin] death_curse_hostile 0
scoreboard players set @e[type=minecraft:zombie] death_curse_hostile 0
scoreboard players set @e[type=minecraft:zombie_villager] death_curse_hostile 0

scoreboard players set @e[type=minecraft:cave_spider] death_curse_hostile 0
scoreboard players set @e[type=minecraft:enderman] death_curse_hostile 0
scoreboard players set @e[type=minecraft:piglin] death_curse_hostile 0
scoreboard players set @e[type=minecraft:spider] death_curse_hostile 0
scoreboard players set @e[type=minecraft:zombified_piglin] death_curse_hostile 0
