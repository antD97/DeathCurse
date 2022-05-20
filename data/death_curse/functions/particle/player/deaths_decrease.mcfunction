# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Creates death count decreased particle effects for player executors
# The particle effect I actually want is broken https://bugs.mojang.com/browse/MC-249339 :(

execute as @s[scores={__deaths=0}] positioned as @s run function __:particle/player/deaths_decrease/0
{
    # particle minecraft:ambient_entity_effect ~ ~ ~ 70 0 211 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 1
}
execute as @s[scores={__deaths=1}] positioned as @s run function __:particle/player/deaths_decrease/1
{
    # particle minecraft:entity_effect ~ ~ ~ 34 211 169 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 2
}
execute as @s[scores={__deaths=2}] positioned as @s run function __:particle/player/deaths_decrease/2
{
    #!2x
    # particle minecraft:entity_effect ~ ~ ~ 31 193 155 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 3
}
execute as @s[scores={__deaths=3}] positioned as @s run function __:particle/player/deaths_decrease/3
{
    #!3x
    # particle minecraft:entity_effect ~ ~ ~ 29 175 141 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 4
}
execute as @s[scores={__deaths=4}] positioned as @s run function __:particle/player/deaths_decrease/4
{
    #!4x
    # particle minecraft:entity_effect ~ ~ ~ 26 158 127 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 5
}
execute as @s[scores={__deaths=5}] positioned as @s run function __:particle/player/deaths_decrease/5
{
    #!5x
    # particle minecraft:entity_effect ~ ~ ~ 22 136 110 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 6
}
execute as @s[scores={__deaths=6}] positioned as @s run function __:particle/player/deaths_decrease/6
{
    #!6x
    # particle minecraft:entity_effect ~ ~ ~ 18 114 92 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 7
}
execute as @s[scores={__deaths=7}] positioned as @s run function __:particle/player/deaths_decrease/7
{
    #!7x
    # particle minecraft:entity_effect ~ ~ ~ 15 97 78 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 8
}
execute as @s[scores={__deaths=8}] positioned as @s run function __:particle/player/deaths_decrease/8
{
    #!8x
    # particle minecraft:entity_effect ~ ~ ~ 12 75 60 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 9
}
execute as @s[scores={__deaths=9}] positioned as @s run function __:particle/player/deaths_decrease/9
{
    #!9x
    # particle minecraft:entity_effect ~ ~ ~ 6 41 33 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 10
}
execute as @s[scores={__deaths=10..}] positioned as @s run function __:particle/player/deaths_decrease/10
{
    #!10x
    # particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0
    particle minecraft:happy_villager ~ ~0.9 ~ 0.15 0.45 0.15 0 11
}
