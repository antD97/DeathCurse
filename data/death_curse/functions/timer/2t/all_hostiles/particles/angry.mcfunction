# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# creates a smoke cloud particle effect (be sure to execute at the executor)
# used (mob height)/4 for y delta, but it's not perfect

# --- mob clouds --- #

execute as @s[type=blaze] run particle smoke ~ ~0.9 ~ 0.15 0.45 0.15 0 3
execute as @s[type=creeper] run particle smoke ~ ~0.85 ~ 0.15 0.425 0.15 0 3
#!find=drowned
#!replace=drowned|husk|zombie|zombie_villager|piglin|zombified_piglin
execute as @s[type=drowned] run function __:particle/hostile/angry/zombie
execute as @s[type=elder_guardian] run particle smoke ~ ~0.99875 ~ 0.499375 0.499375 0.499375 0 3
#!find=endermite
#!replace=endermite|silverfish
execute as @s[type=endermite] run particle smoke ~ ~0 ~ 0.01 0.01 0.01 0 1
#!find=evoker
#!replace=evoker|illusioner|piglin_brute|vindicator|pillager|witch
execute as @s[type=evoker] run particle smoke ~ ~0.975 ~ 0.15 0.4875 0.15 0 3
execute as @s[type=ghast] run particle smoke ~ ~2 ~ 1 1 1 0 50
execute as @s[type=guardian] run particle smoke ~ ~0.425 ~ 0.2125 0.2125 0.2125 0 3
execute as @s[type=hoglin] run function __:particle/hostile/angry/hoglin
#!find=magma_cube
#!replace=magma_cube|slime
execute as @s[type=magma_cube] run function __:particle/hostile/angry/slime
execute as @s[type=phantom] run particle smoke ~ ~0.25 ~ 0.225 0.125 0.225 0 2
execute as @s[type=ravager] run particle smoke ~ ~1.1 ~ 0.4875 0.55 0.4875 0 6
execute as @s[type=shulker] run particle smoke ~ ~0.5 ~ 0.25 0.25 0.25 0 3
#!find=skeleton
#!replace=skeleton|stray
execute as @s[type=skeleton] run particle smoke ~ ~0.995 ~ 0.15 0.4975 0.15 0 3
execute as @s[type=vex] run particle smoke ~ ~0.4 ~ 0.1 0.2 0.1 0 1
execute as @s[type=wither_skeleton] run particle smoke ~ ~1.2 ~ 0.216 0.6 0.216 0 4
execute as @s[type=zoglin] run function __:particle/hostile/angry/zoglin
execute as @s[type=cave_spider] run particle smoke ~ ~0.25 ~ 0.175 0.125 0.175 0 2
execute as @s[type=enderman] run particle smoke ~ ~1.45 ~ 0.15 0.725 0.15 0 5
execute as @s[type=spider] run particle smoke ~ ~0.45 ~ 0.35 0.225 0.35 0 4

# --- helpers --- #

#! __:particle/hostile/angry/hoglin
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s Age
    execute if score global __result1 matches ..-1 run scoreboard players set global __result1 1
    execute if score global __result1 matches 0 run particle smoke ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
    execute if score global __result1 matches 1 run particle smoke ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
}

#! __:particle/hostile/angry/slime
{
    # check size (0=small, 1=medium, 3=large)
    execute store result score global __result1 run data get entity @s Size
    execute if score global __result1 matches 0 run particle smoke ~ ~0.2601 ~ 0.01 0.01 0.01 0 1
    execute if score global __result1 matches 1 run particle smoke ~ ~0.5202 ~ 0.2601 0.2601 0.2601 0 2
    execute if score global __result1 matches 3 run particle smoke ~ ~1.0404 ~ 0.5202 0.5202 0.5202 0 6
}

#! __:particle/hostile/angry/zoglin
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s IsBaby
    execute if score global __result1 matches 0 run particle smoke ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
    execute if score global __result1 matches 1 run particle smoke ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
}

#! __:particle/hostile/angry/zombie
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __result1 run data get entity @s IsBaby
    execute if score global __result1 matches 0 run particle smoke ~ ~0.95 ~ 0.15 0.475 0.15 0 3
    execute if score global __result1 matches 1 run particle smoke ~ ~0.475 ~ 0.075 0.2375 0.075 0 2
}
