# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# buffs hostile mobs within 5 blocks of the executor (be sure to be positioned as the executor)

# use to count the number of mobs angered by this player
scoreboard players set global death_curse_result1 0

# apply the buff
execute as @e[type=minecraft:blaze] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:creeper] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:drowned] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:elder_guardian] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:endermite] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:evoker] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:ghast] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:guardian] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:hoglin] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:husk] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:illusioner] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:magma_cube] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:phantom] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:piglin_brute] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:pillager] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:ravager] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:shulker] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:silverfish] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:skeleton] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:slime] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:stray] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:vex] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:vindicator] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:witch] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:wither] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:wither_skeleton] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:zoglin] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:zombie] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:zombie_villager] run function death_curse:hostile_mob/angry

execute as @e[type=minecraft:cave_spider] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:enderman] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:piglin] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:spider] run function death_curse:hostile_mob/angry
execute as @e[type=minecraft:zombified_piglin] run function death_curse:hostile_mob/angry

execute if score global death_curse_result1 matches 1.. run scoreboard players set @s death_curse_mob_aggression 2
execute if score global death_curse_result1 matches 0 run scoreboard players set @s death_curse_mob_aggression 1
