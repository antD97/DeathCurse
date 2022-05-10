# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 2t (0.1s) timer
schedule function death_curse:timer/2t 2t

# apply particle effects to players
execute as @a run function death_curse:particle/player

# apply particle effects to hostile mobs
execute as @e[type=minecraft:blaze] run function death_curse:particle/hostile
execute as @e[type=minecraft:creeper] run function death_curse:particle/hostile
execute as @e[type=minecraft:drowned] run function death_curse:particle/hostile
execute as @e[type=minecraft:elder_guardian] run function death_curse:particle/hostile
execute as @e[type=minecraft:endermite] run function death_curse:particle/hostile
execute as @e[type=minecraft:evoker] run function death_curse:particle/hostile
execute as @e[type=minecraft:ghast] run function death_curse:particle/hostile
execute as @e[type=minecraft:guardian] run function death_curse:particle/hostile
execute as @e[type=minecraft:hoglin] run function death_curse:particle/hostile
execute as @e[type=minecraft:husk] run function death_curse:particle/hostile
execute as @e[type=minecraft:illusioner] run function death_curse:particle/hostile
execute as @e[type=minecraft:magma_cube] run function death_curse:particle/hostile
execute as @e[type=minecraft:phantom] run function death_curse:particle/hostile
execute as @e[type=minecraft:piglin_brute] run function death_curse:particle/hostile
execute as @e[type=minecraft:pillager] run function death_curse:particle/hostile
execute as @e[type=minecraft:ravager] run function death_curse:particle/hostile
execute as @e[type=minecraft:shulker] run function death_curse:particle/hostile
execute as @e[type=minecraft:silverfish] run function death_curse:particle/hostile
execute as @e[type=minecraft:skeleton] run function death_curse:particle/hostile
execute as @e[type=minecraft:slime] run function death_curse:particle/hostile
execute as @e[type=minecraft:stray] run function death_curse:particle/hostile
execute as @e[type=minecraft:vex] run function death_curse:particle/hostile
execute as @e[type=minecraft:vindicator] run function death_curse:particle/hostile
execute as @e[type=minecraft:witch] run function death_curse:particle/hostile
execute as @e[type=minecraft:wither] run function death_curse:particle/hostile
execute as @e[type=minecraft:wither_skeleton] run function death_curse:particle/hostile
execute as @e[type=minecraft:zoglin] run function death_curse:particle/hostile
execute as @e[type=minecraft:zombie] run function death_curse:particle/hostile
execute as @e[type=minecraft:zombie_villager] run function death_curse:particle/hostile

execute as @e[type=minecraft:cave_spider] run function death_curse:particle/hostile
execute as @e[type=minecraft:enderman] run function death_curse:particle/hostile
execute as @e[type=minecraft:piglin] run function death_curse:particle/hostile
execute as @e[type=minecraft:spider] run function death_curse:particle/hostile
execute as @e[type=minecraft:zombified_piglin] run function death_curse:particle/hostile
