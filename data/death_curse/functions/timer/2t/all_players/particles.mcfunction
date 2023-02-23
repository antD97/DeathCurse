# Copyright © 2022-2023 antD97
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

# creates 2t (0.1s) particle effects for the player

# --- mob aggression when hostile is near --- #

execute as @s[scores={__mob_aggression=1..,__mob_aggression_close=1}] at @s run particle smoke ~ ~0.45 ~ 0.15 0.225 0.15 0 1

# --- fear --- #

execute as @s[scores={__feared=9..}] at @s run particle ambient_entity_effect ~ ~ ~ 1 0 0 255 0

# --- fatigue 1 --- #

execute as @s[scores={__fatigue1=1..}] at @s run function __:timer/2t/all_players/particles/fatigue1
{
    execute as @s[scores={__curse_level=1}] run particle ambient_entity_effect ~ ~ ~ 170 0 0 255 0
    execute as @s[scores={__curse_level=2}] run particle ambient_entity_effect ~ ~ ~ 153 0 0 255 0
    execute as @s[scores={__curse_level=3}] run particle ambient_entity_effect ~ ~ ~ 136 0 0 255 0
    execute as @s[scores={__curse_level=4}] run particle ambient_entity_effect ~ ~ ~ 119 0 0 255 0
    execute as @s[scores={__curse_level=5}] run particle ambient_entity_effect ~ ~ ~ 102 0 0 255 0
    execute as @s[scores={__curse_level=6}] run particle ambient_entity_effect ~ ~ ~ 85 0 0 255 0
    execute as @s[scores={__curse_level=7}] run particle ambient_entity_effect ~ ~ ~ 68 0 0 255 0
    execute as @s[scores={__curse_level=8}] run particle ambient_entity_effect ~ ~ ~ 51 0 0 255 0
    execute as @s[scores={__curse_level=9}] run particle ambient_entity_effect ~ ~ ~ 34 0 0 255 0
    execute as @s[scores={__curse_level=10..}] run particle ambient_entity_effect ~ ~ ~ 1 0 0 255 0
}

# --- fatigue 2 --- #

execute as @s[scores={__fatigue2=1..}] at @s run function __:timer/2t/all_players/particles/fatigue2
{
    execute as @s[scores={__curse_level=1}] run particle entity_effect ~ ~ ~ 170 0 0 255 0
    execute as @s[scores={__curse_level=2}] run particle entity_effect ~ ~ ~ 153 0 0 255 0
    execute as @s[scores={__curse_level=3}] run particle entity_effect ~ ~ ~ 136 0 0 255 0
    execute as @s[scores={__curse_level=4}] run particle entity_effect ~ ~ ~ 119 0 0 255 0
    execute as @s[scores={__curse_level=5}] run particle entity_effect ~ ~ ~ 102 0 0 255 0
    execute as @s[scores={__curse_level=6}] run particle entity_effect ~ ~ ~ 85 0 0 255 0
    execute as @s[scores={__curse_level=7}] run particle entity_effect ~ ~ ~ 68 0 0 255 0
    execute as @s[scores={__curse_level=8}] run particle entity_effect ~ ~ ~ 51 0 0 255 0
    execute as @s[scores={__curse_level=9}] run particle entity_effect ~ ~ ~ 34 0 0 255 0
    execute as @s[scores={__curse_level=10..}] run particle entity_effect ~ ~ ~ 1 0 0 255 0
}

# --- fatigue 3 --- #

execute as @s[scores={__fatigue3=1..}] at @s run function __:timer/2t/all_players/particles/fatigue3
{
    execute as @s[scores={__curse_level=1}] run function __:timer/2t/all_players/particles/fatigue3/1
    {
        #!2x
        particle entity_effect ~ ~ ~ 170 0 0 255 0
    }
    execute as @s[scores={__curse_level=2}] run function __:timer/2t/all_players/particles/fatigue3/2
    {
        #!2x
        particle entity_effect ~ ~ ~ 153 0 0 255 0
    }
    execute as @s[scores={__curse_level=3}] run function __:timer/2t/all_players/particles/fatigue3/3
    {
        #!2x
        particle entity_effect ~ ~ ~ 136 0 0 255 0
    }
    execute as @s[scores={__curse_level=4}] run function __:timer/2t/all_players/particles/fatigue3/4
    {
        #!2x
        particle entity_effect ~ ~ ~ 119 0 0 255 0
    }
    execute as @s[scores={__curse_level=5}] run function __:timer/2t/all_players/particles/fatigue3/5
    {
        #!2x
        particle entity_effect ~ ~ ~ 102 0 0 255 0
    }
    execute as @s[scores={__curse_level=6}] run function __:timer/2t/all_players/particles/fatigue3/6
    {
        #!2x
        particle entity_effect ~ ~ ~ 85 0 0 255 0
    }
    execute as @s[scores={__curse_level=7}] run function __:timer/2t/all_players/particles/fatigue3/7
    {
        #!2x
        particle entity_effect ~ ~ ~ 68 0 0 255 0
    }
    execute as @s[scores={__curse_level=8}] run function __:timer/2t/all_players/particles/fatigue3/8
    {
        #!2x
        particle entity_effect ~ ~ ~ 51 0 0 255 0
    }
    execute as @s[scores={__curse_level=9}] run function __:timer/2t/all_players/particles/fatigue3/9
    {
        #!2x
        particle entity_effect ~ ~ ~ 34 0 0 255 0
    }
    execute as @s[scores={__curse_level=10..}] run function __:timer/2t/all_players/particles/fatigue3/10
    {
        #!2x
        particle entity_effect ~ ~ ~ 1 0 0 255 0
    }
}

# --- cloaking --- #

execute as @s[scores={__cloaking=1..}] at @s run function __:timer/2t/all_players/particles/cloaking
{
    particle squid_ink ~ ~0.9 ~ 0.15 0.45 0.15 0 3
    execute as @s[scores={__curse_level=1}] run particle entity_effect ~ ~ ~ 170 0 0 255 0
    execute as @s[scores={__curse_level=2}] run particle entity_effect ~ ~ ~ 153 0 0 255 0
    execute as @s[scores={__curse_level=3}] run particle entity_effect ~ ~ ~ 136 0 0 255 0
    execute as @s[scores={__curse_level=4}] run particle entity_effect ~ ~ ~ 119 0 0 255 0
    execute as @s[scores={__curse_level=5}] run particle entity_effect ~ ~ ~ 102 0 0 255 0
    execute as @s[scores={__curse_level=6}] run particle entity_effect ~ ~ ~ 85 0 0 255 0
    execute as @s[scores={__curse_level=7}] run particle entity_effect ~ ~ ~ 68 0 0 255 0
    execute as @s[scores={__curse_level=8}] run particle entity_effect ~ ~ ~ 51 0 0 255 0
    execute as @s[scores={__curse_level=9}] run particle entity_effect ~ ~ ~ 34 0 0 255 0
    execute as @s[scores={__curse_level=10..}] run particle entity_effect ~ ~ ~ 1 0 0 255 0
}

# --- poison --- #

execute as @s[scores={__poison=1..}] at @s run function __:timer/2t/all_players/particles/poison
{
    execute as @s[scores={__curse_level=1}] run function __:timer/2t/all_players/particles/poison/1
    {
        #!5x
        particle entity_effect ~ ~ ~ 170 0 0 255 0
    }
    execute as @s[scores={__curse_level=2}] run function __:timer/2t/all_players/particles/poison/2
    {
        #!5x
        particle entity_effect ~ ~ ~ 153 0 0 255 0
    }
    execute as @s[scores={__curse_level=3}] run function __:timer/2t/all_players/particles/poison/3
    {
        #!5x
        particle entity_effect ~ ~ ~ 136 0 0 255 0
    }
    execute as @s[scores={__curse_level=4}] run function __:timer/2t/all_players/particles/poison/4
    {
        #!5x
        particle entity_effect ~ ~ ~ 119 0 0 255 0
    }
    execute as @s[scores={__curse_level=5}] run function __:timer/2t/all_players/particles/poison/5
    {
        #!5x
        particle entity_effect ~ ~ ~ 102 0 0 255 0
    }
    execute as @s[scores={__curse_level=6}] run function __:timer/2t/all_players/particles/poison/6
    {
        #!5x
        particle entity_effect ~ ~ ~ 85 0 0 255 0
    }
    execute as @s[scores={__curse_level=7}] run function __:timer/2t/all_players/particles/poison/7
    {
        #!5x
        particle entity_effect ~ ~ ~ 68 0 0 255 0
    }
    execute as @s[scores={__curse_level=8}] run function __:timer/2t/all_players/particles/poison/8
    {
        #!5x
        particle entity_effect ~ ~ ~ 51 0 0 255 0
    }
    execute as @s[scores={__curse_level=9}] run function __:timer/2t/all_players/particles/poison/9
    {
        #!5x
        particle entity_effect ~ ~ ~ 34 0 0 255 0
    }
    execute as @s[scores={__curse_level=10..}] run function __:timer/2t/all_players/particles/poison/10
    {
        #!5x
        particle entity_effect ~ ~ ~ 1 0 0 255 0
    }
}

# --- resurrection abomination 1-3 --- #

execute as @s[scores={__res_abom_effect1=1..3}] at @s run particle ash ~ ~0.9 ~ 0.15 0.45 0.15 0 2
execute as @s[scores={__res_abom_effect2=1..3}] at @s run particle falling_obsidian_tear ~ ~0.9 ~ 0.15 0.45 0.15 0 1
execute as @s[scores={__res_abom_effect3=1..3}] at @s run particle enchant ~ ~0.9 ~ 0.15 0.45 0.15 0 1

# --- death increase --- #

execute as @s[scores={__deaths_increase=1..}] at @s run function __:timer/2t/all_players/particles/deaths_increase
{
    execute as @s[scores={__deaths=1}] run particle ambient_entity_effect ~ ~ ~ 170 0 0 255 0
    execute as @s[scores={__deaths=2}] run particle entity_effect ~ ~ ~ 153 0 0 255 0
    execute as @s[scores={__deaths=3}] run function __:timer/2t/all_players/particles/deaths_increase/3
    {
        #!2x
        particle entity_effect ~ ~ ~ 136 0 0 255 0
    }
    execute as @s[scores={__deaths=4}] run function __:timer/2t/all_players/particles/deaths_increase/4
    {
        #!3x
        particle entity_effect ~ ~ ~ 119 0 0 255 0
    }
    execute as @s[scores={__deaths=5}] run function __:timer/2t/all_players/particles/deaths_increase/5
    {
        #!4x
        particle entity_effect ~ ~ ~ 102 0 0 255 0
    }
    execute as @s[scores={__deaths=6}] run function __:timer/2t/all_players/particles/deaths_increase/6
    {
        #!5x
        particle entity_effect ~ ~ ~ 85 0 0 255 0
    }
    execute as @s[scores={__deaths=7}] run function __:timer/2t/all_players/particles/deaths_increase/7
    {
        #!6x
        particle entity_effect ~ ~ ~ 68 0 0 255 0
    }
    execute as @s[scores={__deaths=8}] run function __:timer/2t/all_players/particles/deaths_increase/8
    {
        #!7x
        particle entity_effect ~ ~ ~ 51 0 0 255 0
    }
    execute as @s[scores={__deaths=9}] run function __:timer/2t/all_players/particles/deaths_increase/9
    {
        #!8x
        particle entity_effect ~ ~ ~ 34 0 0 255 0
    }
    execute as @s[scores={__deaths=10..}] run function __:timer/2t/all_players/particles/deaths_increase/10
    {
        #!9x
        particle entity_effect ~ ~ ~ 1 0 0 255 0
    }
}

# --- death decrease 1-3 --- #

execute as @s[scores={__deaths_decrease1=1..}] at @s run function __:timer/2t/all_players/particles/deaths_decrease1
{
    #!5x
    particle entity_effect ~ ~ ~ 0 0 0 1 1
}

execute as @s[scores={__deaths_decrease2=1..}] at @s run function __:timer/2t/all_players/particles/deaths_decrease2
{
    #!10x
    particle entity_effect ~ ~ ~ 0 0 0 1 1
}

execute as @s[scores={__deaths_decrease3=1..}] at @s run function __:timer/2t/all_players/particles/deaths_decrease3
{
    #!15x
    particle entity_effect ~ ~ ~ 0 0 0 1 1
}

# --- smoke 1-3 --- #

execute as @s[scores={__smoke=1}] at @s run function __:timer/2t/all_players/particles/smoke1
{
    particle cloud ~ ~-0.5 ~ 0.25 0.25 0.25 0 3 force
    #!3x
    particle ambient_entity_effect ~ ~ ~ 0 0 0 1 1
    particle mycelium ~ ~0.9 ~ 4 2 4 0 20 force
}

execute as @s[scores={__smoke=2}] at @s run function __:timer/2t/all_players/particles/smoke2
{
    particle cloud ~ ~-0.5 ~ 0.25 0.25 0.25 0 3 force
    #!3x
    particle ambient_entity_effect ~ ~ ~ 0 0 0 1 1
    particle falling_obsidian_tear ~ ~0.9 ~ 4 2 4 0 10 force
}

execute as @s[scores={__smoke=3}] at @s run function __:timer/2t/all_players/particles/smoke3
{
    particle cloud ~ ~-0.5 ~ 0.25 0.25 0.25 0 3 force
    #!3x
    particle ambient_entity_effect ~ ~ ~ 0 0 0 1 1
    particle enchant ~ ~0.9 ~ 4 2 4 0 10 force
}
