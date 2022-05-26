# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# curse reds
# 2     #AA0000 170 0 0
# 2     #990000 153 0 0
# 3     #880000 136 0 0
# 4     #770000 119 0 0
# 5     #660000 102 0 0
# 6     #550000 85 0 0
# 7     #440000 68 0 0
# 8     #330000 51 0 0
# 9     #220000 34 0 0
# 10+   #000000 1 0 0

# heal greens
# 0     #46ffd3 70 0 211
# 1     #22D3A9 34 211 169
# 2     #1FC19B 70 0 211
# 3     #1DAF8D 29 175 141
# 4     #1A9E7F 26 158 127
# 5     #16886E 22 136 110
# 6     #12725C 18 114 92
# 7     #0F614E 15 97 78
# 8     #0c4b3c 12 75 60
# 9     #062921 6 41 33
# 10+   #000000 1 0 0

# Creates particle effects for the player executor

#!find=effect
#!replace=deaths_increase\
    #! |deaths_decrease1|deaths_decrease2|deaths_decrease3\
    #! |fatigue1|fatigue2|fatigue3|cloaking|poison
execute as @s[scores={__effect=1}] positioned as @s run function __:particle/player/effect

# mob aggression
execute as @s[scores={__mob_aggression=2}] positioned as @s run particle minecraft:smoke ~ ~0.45 ~ 0.15 0.225 0.15 0 1

# fear only while it's being applied
#!sb global __result1 = @s __feared_end
#!sb global __result1 -= global __effect_timer
execute if score global __result1 matches 9 positioned as @s run particle minecraft:ambient_entity_effect ~ ~ ~ 1 0 0 255 0

# Creates the fatiuge1 particle effects for the player executor
#! __:particle/player/fatigue1
{
    execute as @s[scores={__curse_level=2}] run particle minecraft:ambient_entity_effect ~ ~ ~ 153 0 0 255 0
    execute as @s[scores={__curse_level=3}] run particle minecraft:ambient_entity_effect ~ ~ ~ 136 0 0 255 0
}

# Creates the fatigue2 particle effects for the player executor
#! __:particle/player/fatigue2
{
    execute as @s[scores={__curse_level=1}] run particle minecraft:entity_effect ~ ~ ~ 170 0 0 255 0
    execute as @s[scores={__curse_level=2}] run particle minecraft:entity_effect ~ ~ ~ 153 0 0 255 0
    execute as @s[scores={__curse_level=3}] run particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
    execute as @s[scores={__curse_level=4}] run particle minecraft:entity_effect ~ ~ ~ 119 0 0 255 0
    execute as @s[scores={__curse_level=5}] run particle minecraft:entity_effect ~ ~ ~ 102 0 0 255 0
    execute as @s[scores={__curse_level=6}] run particle minecraft:entity_effect ~ ~ ~ 85 0 0 255 0
    execute as @s[scores={__curse_level=7}] run particle minecraft:entity_effect ~ ~ ~ 68 0 0 255 0
    execute as @s[scores={__curse_level=8}] run particle minecraft:entity_effect ~ ~ ~ 51 0 0 255 0
    execute as @s[scores={__curse_level=9}] run particle minecraft:entity_effect ~ ~ ~ 34 0 0 255 0
    execute as @s[scores={__curse_level=10..}] run particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0
}

# Creates the fatigue3 particle effects for the player executor
#! __:particle/player/fatigue3
{
    #!2x
    execute as @s[scores={__curse_level=7}] run particle minecraft:entity_effect ~ ~ ~ 68 0 0 255 0
    #!2x
    execute as @s[scores={__curse_level=8}] run particle minecraft:entity_effect ~ ~ ~ 51 0 0 255 0
    #!2x
    execute as @s[scores={__curse_level=9}] run particle minecraft:entity_effect ~ ~ ~ 34 0 0 255 0
    #!2x
    execute as @s[scores={__curse_level=10..}] run particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0
}

# Creates a cloaking particle effects for the player executor
#! __:particle/player/cloaking
{
    particle minecraft:squid_ink ~ ~0.9 ~ 0.15 0.45 0.15 0 3
    execute as @s[scores={__curse_level=3}] run particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
    execute as @s[scores={__curse_level=4}] run particle minecraft:entity_effect ~ ~ ~ 119 0 0 255 0
    execute as @s[scores={__curse_level=5}] run particle minecraft:entity_effect ~ ~ ~ 102 0 0 255 0
    execute as @s[scores={__curse_level=6}] run particle minecraft:entity_effect ~ ~ ~ 85 0 0 255 0
    execute as @s[scores={__curse_level=7}] run particle minecraft:entity_effect ~ ~ ~ 68 0 0 255 0
    execute as @s[scores={__curse_level=8}] run particle minecraft:entity_effect ~ ~ ~ 51 0 0 255 0
    execute as @s[scores={__curse_level=9}] run particle minecraft:entity_effect ~ ~ ~ 34 0 0 255 0
    execute as @s[scores={__curse_level=10..}] run particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0
}

# Creates a poison particle effect for the player executor
#! __:particle/player/poison
{
    #!5x
    execute as @s[scores={__curse_level=5}] run particle minecraft:entity_effect ~ ~ ~ 102 0 0 255 0
    #!5x
    execute as @s[scores={__curse_level=6}] run particle minecraft:entity_effect ~ ~ ~ 85 0 0 255 0
    #!5x
    execute as @s[scores={__curse_level=7}] run particle minecraft:entity_effect ~ ~ ~ 68 0 0 255 0
    #!5x
    execute as @s[scores={__curse_level=8}] run particle minecraft:entity_effect ~ ~ ~ 51 0 0 255 0
    #!5x
    execute as @s[scores={__curse_level=9}] run particle minecraft:entity_effect ~ ~ ~ 34 0 0 255 0
    #!5x
    execute as @s[scores={__curse_level=10..}] run particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0
}

# res. abom. effect 1 particles
execute as @s[scores={__res_abom_effect1=1..3}] positioned as @s run function __:particle/player/res_abom_effect1
{
    particle minecraft:ash ~ ~0.9 ~ 0.15 0.45 0.15 0 2
}

# res. abom. effect 2 particles
execute as @s[scores={__res_abom_effect2=1..3}] positioned as @s run function __:particle/player/res_abom_effect2
{
    particle minecraft:falling_obsidian_tear ~ ~0.9 ~ 0.15 0.45 0.15 0 1
}

# res. abom. effect 3 particles
execute as @s[scores={__res_abom_effect3=1..3}] positioned as @s run function __:particle/player/res_abom_effect3
{
    particle minecraft:enchant ~ ~0.9 ~ 0.15 0.45 0.15 0 1
}

#! __:particle/player/deaths_decrease1
{
    #!5x
    particle minecraft:entity_effect ~ ~ ~ 0 0 0 1 1
}

#! __:particle/player/deaths_decrease2
{
    #!10x
    particle minecraft:entity_effect ~ ~ ~ 0 0 0 1 1
}

#! __:particle/player/deaths_decrease3
{
    #!15x
    particle minecraft:entity_effect ~ ~ ~ 0 0 0 1 1
}


execute as @s[scores={__smoke=1}] positioned as @s run function __:particle/player/smoke1
{
    particle minecraft:cloud ~ ~-0.5 ~ 0.25 0.25 0.25 0 3 force
    #!3x
    particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 1
    particle minecraft:mycelium ~ ~0.9 ~ 4 2 4 0 20 force
}
execute as @s[scores={__smoke=2}] positioned as @s run function __:particle/player/smoke2
{
    particle minecraft:cloud ~ ~-0.5 ~ 0.25 0.25 0.25 0 3 force
    #!3x
    particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 1
    particle minecraft:falling_obsidian_tear ~ ~0.9 ~ 4 2 4 0 10 force
}
execute as @s[scores={__smoke=3}] positioned as @s run function __:particle/player/smoke3
{
    particle minecraft:cloud ~ ~-0.5 ~ 0.25 0.25 0.25 0 3 force
    #!3x
    particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 1
    particle minecraft:enchant ~ ~0.9 ~ 4 2 4 0 10 force
}
