# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Creates death particle effects for player executors

execute as @s[scores={__time_alive=1..,__deaths=1}] positioned as @s run function __:particle/player/deaths_increase/1
{
    particle minecraft:ambient_entity_effect ~ ~ ~ 170 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=2}] positioned as @s run function __:particle/player/deaths_increase/2
{
    particle minecraft:entity_effect ~ ~ ~ 153 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=3}] positioned as @s run function __:particle/player/deaths_increase/3
{
    #!2x
    particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=4}] positioned as @s run function __:particle/player/deaths_increase/4
{
    #!3x
    particle minecraft:entity_effect ~ ~ ~ 119 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=5}] positioned as @s run function __:particle/player/deaths_increase/5
{
    #!4x
    particle minecraft:entity_effect ~ ~ ~ 102 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=6}] positioned as @s run function __:particle/player/deaths_increase/6
{
    #!5x
    particle minecraft:entity_effect ~ ~ ~ 85 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=7}] positioned as @s run function __:particle/player/deaths_increase/7
{
    #!6x
    particle minecraft:entity_effect ~ ~ ~ 68 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=8}] positioned as @s run function __:particle/player/deaths_increase/8
{
    #!7x
    particle minecraft:entity_effect ~ ~ ~ 51 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=9}] positioned as @s run function __:particle/player/deaths_increase/9
{
    #!8x
    particle minecraft:entity_effect ~ ~ ~ 34 0 0 255 0
}
execute as @s[scores={__time_alive=1..,__deaths=10..}] positioned as @s run function __:particle/player/deaths_increase/10
{
    #!9x
    particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0
}
