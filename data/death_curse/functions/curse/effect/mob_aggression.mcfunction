# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# buffs hostile mobs within 5 blocks of the executor (be sure to be positioned as the executor)

# use to count the number of mobs angered by this player
scoreboard players set global death_curse_result1 0

# apply the buff
execute as @e[type=minecraft:blaze, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:creeper, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:drowned, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:elder_guardian, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:endermite, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:evoker, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:ghast, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:guardian, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:hoglin, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:husk, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:illusioner, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:magma_cube, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:phantom, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:piglin_brute, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:pillager, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:ravager, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:shulker, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:silverfish, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:skeleton, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:slime, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:stray, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:vex, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:vindicator, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:witch, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:wither, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:wither_skeleton, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:zoglin, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:zombie, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:zombie_villager, distance=..5] run function death_curse:hostile_mob/angry

execute as @e[type=minecraft:cave_spider, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:enderman, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:piglin, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:spider, distance=..5] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:zombified_piglin, distance=..5] run function death_curse:hostile_mob/angry

execute if score global death_curse_result1 matches 1.. run scoreboard players set @s death_curse_mob_aggression 2
execute if score global death_curse_result1 matches 0 run scoreboard players set @s death_curse_mob_aggression 1
