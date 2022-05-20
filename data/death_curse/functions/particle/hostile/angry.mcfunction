# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Creates a smoke cloud particle effect around the hostile mob executor
# Used (mob height)/4 for y delta, but it's not perfect

execute as @s[type=minecraft:blaze] positioned as @s run particle minecraft:smoke ~ ~0.9 ~ 0.15 0.45 0.15 0 3
execute as @s[type=minecraft:creeper] positioned as @s run particle minecraft:smoke ~ ~0.85 ~ 0.15 0.425 0.15 0 3
#!find=drowned
#!replace=drowned|husk|zombie|zombie_villager|piglin|zombified_piglin
execute as @s[type=minecraft:drowned] positioned as @s run function __:particle/hostile/angry/zombie
execute as @s[type=minecraft:elder_guardian] positioned as @s run particle minecraft:smoke ~ ~0.99875 ~ 0.499375 0.499375 0.499375 0 3
#!find=endermite
#!replace=endermite|silverfish
execute as @s[type=minecraft:endermite] positioned as @s run particle minecraft:smoke ~ ~0 ~ 0.01 0.01 0.01 0 1
#!find=evoker
#!replace=evoker|illusioner|piglin_brute|vindicator|pillager|witch
execute as @s[type=minecraft:evoker] positioned as @s run particle minecraft:smoke ~ ~0.975 ~ 0.15 0.4875 0.15 0 3
execute as @s[type=minecraft:ghast] positioned as @s run particle minecraft:smoke ~ ~2 ~ 1 1 1 0 50
execute as @s[type=minecraft:guardian] positioned as @s run particle minecraft:smoke ~ ~0.425 ~ 0.2125 0.2125 0.2125 0 3
execute as @s[type=minecraft:hoglin] positioned as @s run function __:particle/hostile/angry/hoglin
#!find=magma_cube
#!replace=magma_cube|slime
execute as @s[type=minecraft:magma_cube] positioned as @s run function __:particle/hostile/angry/slime
execute as @s[type=minecraft:phantom] positioned as @s run particle minecraft:smoke ~ ~0.25 ~ 0.225 0.125 0.225 0 2
execute as @s[type=minecraft:ravager] positioned as @s run particle minecraft:smoke ~ ~1.1 ~ 0.4875 0.55 0.4875 0 6
execute as @s[type=minecraft:shulker] positioned as @s run particle minecraft:smoke ~ ~0.5 ~ 0.25 0.25 0.25 0 3
#!find=skeleton
#!replace=skeleton|stray
execute as @s[type=minecraft:skeleton] positioned as @s run particle minecraft:smoke ~ ~0.995 ~ 0.15 0.4975 0.15 0 3
execute as @s[type=minecraft:vex] positioned as @s run particle minecraft:smoke ~ ~0.4 ~ 0.1 0.2 0.1 0 1
execute as @s[type=minecraft:wither_skeleton] positioned as @s run particle minecraft:smoke ~ ~1.2 ~ 0.216 0.6 0.216 0 4
execute as @s[type=minecraft:zoglin] positioned as @s run function __:particle/hostile/angry/zoglin
execute as @s[type=minecraft:cave_spider] positioned as @s run particle minecraft:smoke ~ ~0.25 ~ 0.175 0.125 0.175 0 2
execute as @s[type=minecraft:enderman] positioned as @s run particle minecraft:smoke ~ ~1.45 ~ 0.15 0.725 0.15 0 5
execute as @s[type=minecraft:spider] positioned as @s run particle minecraft:smoke ~ ~0.45 ~ 0.35 0.225 0.35 0 4

# Creates a smoke cloud particle effect around the hoglin executor
#! __:particle/hostile/angry/hoglin
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s Age
    execute if score global __result1 matches ..-1 run scoreboard players set global __result1 1
    execute if score global __result1 matches 0 run particle minecraft:smoke ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
    execute if score global __result1 matches 1 run particle minecraft:smoke ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
}

# Creates a smoke cloud particle effect around the slime or magma cube executor
#! __:particle/hostile/angry/slime
{
    # check size (0=small, 1=medium, 3=large)
    execute store result score global __result1 run data get entity @s Size
    execute if score global __result1 matches 0 run particle minecraft:smoke ~ ~0.2601 ~ 0.01 0.01 0.01 0 1
    execute if score global __result1 matches 1 run particle minecraft:smoke ~ ~0.5202 ~ 0.2601 0.2601 0.2601 0 2
    execute if score global __result1 matches 3 run particle minecraft:smoke ~ ~1.0404 ~ 0.5202 0.5202 0.5202 0 6
}

# Creates a smoke cloud particle effect around the zoglin executor
#! __:particle/hostile/angry/zoglin
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s IsBaby
    execute if score global __result1 matches 0 run particle minecraft:smoke ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
    execute if score global __result1 matches 1 run particle minecraft:smoke ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
}

# Creates a smoke cloud particle effect around the zombie executor
#! __:particle/hostile/angry/zombie
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s IsBaby
    execute if score global __result1 matches 0 run particle minecraft:smoke ~ ~0.95 ~ 0.15 0.475 0.15 0 3
    execute if score global __result1 matches 1 run particle minecraft:smoke ~ ~0.475 ~ 0.075 0.2375 0.075 0 2
}
