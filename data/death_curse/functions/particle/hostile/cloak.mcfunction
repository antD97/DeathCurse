# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Creates a black cloud particle effect around the executor
# Used (mob height)/4 for y delta, but it's not perfect

execute as @s[type=minecraft:blaze] positioned as @s run particle minecraft:squid_ink ~ ~0.9 ~ 0 0.45 0 0 3
execute as @s[type=minecraft:creeper] positioned as @s run particle minecraft:squid_ink ~ ~0.85 ~ 0 0.425 0 0 3
#!find=endermite
#!replace=endermite|silverfish
execute as @s[type=minecraft:endermite] positioned as @s run particle minecraft:squid_ink ~ ~0 ~ 0.01 0.01 0.01 0 1
#!find=evoker
#!replace=evoker|piglin_brute|pillager|vindicator|witch
execute as @s[type=minecraft:evoker] positioned as @s run particle minecraft:squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
execute as @s[type=minecraft:ghast] positioned as @s run particle minecraft:squid_ink ~ ~2 ~ 1 1 1 0 50
execute as @s[type=minecraft:hoglin] positioned as @s run function __:particle/hostile/cloak/hoglin
#!find=husk
#!replace=husk|zombie|zombie_villager|piglin|zombified_piglin
execute as @s[type=minecraft:husk] positioned as @s run function __:particle/hostile/cloak/zombie
#!find=magma_cube
#!replace=magma_cube|slime
execute as @s[type=minecraft:magma_cube] positioned as @s run function __:particle/hostile/cloak/slime
execute as @s[type=minecraft:phantom] positioned as @s run particle minecraft:squid_ink ~ ~0.25 ~ 0.225 0.125 0.225 0 2
execute as @s[type=minecraft:ravager] positioned as @s run particle minecraft:squid_ink ~ ~1.1 ~ 0.4875 0.55 0.4875 0 6
#!find=skeleton
#!replace=skeleton|stray
execute as @s[type=minecraft:skeleton] positioned as @s run particle minecraft:squid_ink ~ ~0.995 ~ 0 0.4975 0 0 3
execute as @s[type=minecraft:vex] positioned as @s run particle minecraft:squid_ink ~ ~0.4 ~ 0 0.2 0 0 1
execute as @s[type=minecraft:wither_skeleton] positioned as @s run particle minecraft:squid_ink ~ ~1.2 ~ 0 0.6 0 0 4
execute as @s[type=minecraft:zoglin] positioned as @s run function __:particle/hostile/cloak/zoglin
execute as @s[type=minecraft:cave_spider] positioned as @s run particle minecraft:squid_ink ~ ~0.25 ~ 0.175 0.125 0.175 0 2
execute as @s[type=minecraft:enderman] positioned as @s run particle minecraft:squid_ink ~ ~1.45 ~ 0 0.725 0 0 5
execute as @s[type=minecraft:spider] positioned as @s run particle minecraft:squid_ink ~ ~0.45 ~ 0.35 0.0 0.35 0 4

# additional cloak level color 
execute as @s[scores={__cloak_level=3}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
execute as @s[scores={__cloak_level=4}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 119 0 0 255 0
execute as @s[scores={__cloak_level=5}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 102 0 0 255 0
execute as @s[scores={__cloak_level=6}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 85 0 0 255 0
execute as @s[scores={__cloak_level=7}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 68 0 0 255 0
execute as @s[scores={__cloak_level=8}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 51 0 0 255 0
execute as @s[scores={__cloak_level=9}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 34 0 0 255 0
execute as @s[scores={__cloak_level=10..}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0

# Creates a black cloud particle effect around the hoglin executor
#! __:particle/hostile/cloak/hoglin
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s Age
    execute if score global __result1 matches ..-1 run scoreboard players set global __result1 1
    # not baby
    execute if score global __result1 matches 0 run particle minecraft:squid_ink ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
    # baby
    execute if score global __result1 matches 1 run particle minecraft:squid_ink ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
}

# Creates a black cloud particle effect around the slime or magma cube executor
#! __:particle/hostile/cloak/slime
{
    # check size (0=small, 1=medium, 3=large)
    execute store result score global __result1 run data get entity @s Size
    execute if score global __result1 matches 0 run particle minecraft:squid_ink ~ ~0.2601 ~ 0.01 0.01 0.01 0 1
    execute if score global __result1 matches 1 run particle minecraft:squid_ink ~ ~0.5202 ~ 0.2601 0.2601 0.2601 0 2
    execute if score global __result1 matches 3 run particle minecraft:squid_ink ~ ~1.0404 ~ 0.5202 0.5202 0.5202 0 6
}

# Creates a black cloud particle effect around the zoglin executor
#! __:particle/hostile/cloak/zoglin
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s IsBaby
    execute if score global __result1 matches 0 run particle minecraft:squid_ink ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
    execute if score global __result1 matches 1 run particle minecraft:squid_ink ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
}

# Creates a black cloud particle effect around the zombie executor
#! __:particle/hostile/cloak/zombie
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s IsBaby
    execute if score global __result1 matches 0 run particle minecraft:squid_ink ~ ~0.95 ~ 0 0.475 0 0 3
    execute if score global __result1 matches 1 run particle minecraft:squid_ink ~ ~0.475 ~ 0 0.2375 0 0 2
}
