# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# creates a black cloud particle effect (be sure to execute at the executor)
# used (mob height)/4 for y delta, but it's not perfect

# --- mob clouds --- #

execute as @s[type=blaze] run particle squid_ink ~ ~0.9 ~ 0 0.45 0 0 3
execute as @s[type=creeper] run particle squid_ink ~ ~0.85 ~ 0 0.425 0 0 3
#!find=endermite
#!replace=endermite|silverfish
execute as @s[type=endermite] run particle squid_ink ~ ~0 ~ 0.01 0.01 0.01 0 1
#!find=evoker
#!replace=evoker|piglin_brute|pillager|vindicator|witch
execute as @s[type=evoker] run particle squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
execute as @s[type=ghast] run particle squid_ink ~ ~2 ~ 1 1 1 0 50
execute as @s[type=hoglin] run function __:timer/2t/all_hostiles/particles/cloak/hoglin
#!find=husk
#!replace=husk|zombie|zombie_villager|piglin|zombified_piglin
execute as @s[type=husk] run function __:timer/2t/all_hostiles/particles/cloak/zombie
#!find=magma_cube
#!replace=magma_cube|slime
execute as @s[type=magma_cube] run function __:timer/2t/all_hostiles/particles/cloak/slime
execute as @s[type=phantom] run particle squid_ink ~ ~0.25 ~ 0.225 0.125 0.225 0 2
execute as @s[type=ravager] run particle squid_ink ~ ~1.1 ~ 0.4875 0.55 0.4875 0 6
#!find=skeleton
#!replace=skeleton|stray
execute as @s[type=skeleton] run particle squid_ink ~ ~0.995 ~ 0 0.4975 0 0 3
execute as @s[type=vex] run particle squid_ink ~ ~0.4 ~ 0 0.2 0 0 1
execute as @s[type=wither_skeleton] run particle squid_ink ~ ~1.2 ~ 0 0.6 0 0 4
execute as @s[type=zoglin] run function __:timer/2t/all_hostiles/particles/cloak/zoglin
execute as @s[type=cave_spider] run particle squid_ink ~ ~0.25 ~ 0.175 0.125 0.175 0 2
execute as @s[type=enderman] run particle squid_ink ~ ~1.45 ~ 0 0.725 0 0 5
execute as @s[type=spider] run particle squid_ink ~ ~0.45 ~ 0.35 0.0 0.35 0 4

# --- additional cloak level color --- #

execute as @s[scores={__cloak_level=3}] run particle entity_effect ~ ~ ~ 136 0 0 255 0
execute as @s[scores={__cloak_level=4}] run particle entity_effect ~ ~ ~ 119 0 0 255 0
execute as @s[scores={__cloak_level=5}] run particle entity_effect ~ ~ ~ 102 0 0 255 0
execute as @s[scores={__cloak_level=6}] run particle entity_effect ~ ~ ~ 85 0 0 255 0
execute as @s[scores={__cloak_level=7}] run particle entity_effect ~ ~ ~ 68 0 0 255 0
execute as @s[scores={__cloak_level=8}] run particle entity_effect ~ ~ ~ 51 0 0 255 0
execute as @s[scores={__cloak_level=9}] run particle entity_effect ~ ~ ~ 34 0 0 255 0
execute as @s[scores={__cloak_level=10..}] run particle entity_effect ~ ~ ~ 1 0 0 255 0

# --- helpers --- #

#! __:timer/2t/all_hostiles/particles/cloak/hoglin
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __temp1 run data get entity @s Age
    execute if score global __temp1 matches ..-1 run scoreboard players set global __temp1 1
    # not baby
    execute if score global __temp1 matches 0 run particle squid_ink ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
    # baby
    execute if score global __temp1 matches 1 run particle squid_ink ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
}

#! __:timer/2t/all_hostiles/particles/cloak/slime
{
    # check size (0=small, 1=medium, 3=large)
    execute store result score global __temp1 run data get entity @s Size
    execute if score global __temp1 matches 0 run particle squid_ink ~ ~0.2601 ~ 0.01 0.01 0.01 0 1
    execute if score global __temp1 matches 1 run particle squid_ink ~ ~0.5202 ~ 0.2601 0.2601 0.2601 0 2
    execute if score global __temp1 matches 3 run particle squid_ink ~ ~1.0404 ~ 0.5202 0.5202 0.5202 0 6
}

#! __:timer/2t/all_hostiles/particles/cloak/zoglin
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __temp1 run data get entity @s IsBaby
    execute if score global __temp1 matches 0 run particle squid_ink ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
    execute if score global __temp1 matches 1 run particle squid_ink ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
}

#! __:timer/2t/all_hostiles/particles/cloak/zombie
{
    # check if baby (0=not baby, 1=baby)
    execute store result score global __temp1 run data get entity @s IsBaby
    execute if score global __temp1 matches 0 run particle squid_ink ~ ~0.95 ~ 0 0.475 0 0 3
    execute if score global __temp1 matches 1 run particle squid_ink ~ ~0.475 ~ 0 0.2375 0 0 2
}
