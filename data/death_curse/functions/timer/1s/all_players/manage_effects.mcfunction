# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

#!sb @s __15s_cd += 0
#!sb @s __30s_cd += 0
#!sb @s __45s_cd += 0
#!sb @s __1m40s_cd += 0
#!sb @s __2m_cd += 0
#!sb @s __3m_cd += 0
#!sb @s __5m_cd += 0

# ---------------------------------- decrease effect durations ----------------------------------- #

#!find=__deaths_increase
#!replace=__deaths_increase|__deaths_decrease1|__deaths_decrease2|__deaths_decrease3\
    #! |__fatigue1|__cloaking|__fatigue2|__poison|__fatigue3|__mob_aggression|__feared|__feared_init\
    #! |__curse_cookie1_effect|__curse_cookie2_effect|__curse_cookie3_effect|__shiver
execute as @s[scores={__deaths_increase=1..}] run scoreboard players remove @s __deaths_increase 1

# ------------------------------------- apply effects on cd -------------------------------------- #

# # --- curse level 1 --- #

execute as @s[scores={__curse_level=1}] run function __:timer/1s/all_players/manage_effects/curse_level1
{
    execute as @s[scores={__45s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    {
        effect give @s nausea 4 0 true
    }
    execute as @s[scores={__2m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea2
    {
        effect give @s nausea 5 0 true
        execute at @s run playsound ambient.crimson_forest.additions ambient @s ~ ~10000 ~ 100000000 1 1
    }
}

# --- curse level 2 --- #

execute as @s[scores={__curse_level=2}] run function __:timer/1s/all_players/manage_effects/curse_level2
{
    execute as @s[scores={__45s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__2m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level2_2m
}

# --- curse level 3 --- #

execute as @s[scores={__curse_level=3}] run function __:timer/1s/all_players/manage_effects/curse_level3
{
    execute as @s[scores={__45s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__2m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level2_2m
    execute as @s[scores={__5m_cd=0}] at @s run function __:timer/1s/all_players/manage_effects/curse/curse_leak1
}

# --- curse level 4 --- #

execute as @s[scores={__curse_level=4}] run function __:timer/1s/all_players/manage_effects/curse_level4
{
    execute as @s[scores={__30s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__1m40s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level4_1m40s
    execute as @s[scores={__5m_cd=0}] at @s run function __:timer/1s/all_players/manage_effects/curse/curse_leak1
}

# --- curse level 5 --- #

execute as @s[scores={__curse_level=5}] run function __:timer/1s/all_players/manage_effects/curse_level5
{
    execute as @s[scores={__30s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__1m40s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level4_1m40s
    execute as @s[scores={__3m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/poison1
    execute as @s[scores={__5m_cd=0}] at @s run function __:timer/1s/all_players/manage_effects/curse/curse_leak1
}

# --- curse level 6 --- #

execute as @s[scores={__curse_level=6}] run function __:timer/1s/all_players/manage_effects/curse_level6
{
    execute as @s[scores={__30s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__1m40s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level4_1m40s
    execute as @s[scores={__3m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/poison1
    execute as @s[scores={__5m_cd=0}] at @s run function __:timer/1s/all_players/manage_effects/curse/curse_leak2
}

# --- curse level 7 --- #

execute as @s[scores={__curse_level=7}] run function __:timer/1s/all_players/manage_effects/curse_level7
{
    execute as @s[scores={__30s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__1m40s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level7_1m40s
    execute as @s[scores={__3m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/poison1
    execute as @s[scores={__5m_cd=0}] at @s run function __:timer/1s/all_players/manage_effects/curse/curse_leak2
}

# --- curse level 8 --- #

execute as @s[scores={__curse_level=8}] run function __:timer/1s/all_players/manage_effects/curse_level8
{
    execute as @s[scores={__30s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__1m40s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level7_1m40s
    execute as @s[scores={__3m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/poison2
    execute as @s[scores={__5m_cd=0}] at @s run function __:timer/1s/all_players/manage_effects/curse/curse_leak2
}

# --- curse level 9 --- #

execute as @s[scores={__curse_level=9}] run function __:timer/1s/all_players/manage_effects/curse_level9
{
    execute as @s[scores={__30s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__1m40s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level7_1m40s
    execute as @s[scores={__3m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/poison2
    execute as @s[scores={__5m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level9_5m
    {
        # curse leak 2
        execute at @s run function __:timer/1s/all_players/manage_effects/curse/curse_leak2
        # mob aggression effect
        #!sb @s __mob_aggression = 60
    }
}

# --- curse level 10+ --- #

execute as @s[scores={__curse_level=10..}] run function __:timer/1s/all_players/manage_effects/curse_level10
{
    execute as @s[scores={__30s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/nausea1
    execute as @s[scores={__1m40s_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level7_1m40s
    execute as @s[scores={__3m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/poison2
    execute as @s[scores={__5m_cd=0}] run function __:timer/1s/all_players/manage_effects/curse/level9_5m
    function __:timer/1s/all_players/manage_effects/curse/fear_check
}

# --- resurrection abomination 1 --- #

execute as @s[scores={__res_abom_effect1=1,__15s_cd=0}] run function __:timer/1s/all_players/manage_effects/res_abom1
{
    #!sb global __temp1 = 10
    function __:util/random

    # 20%
    execute if score global __result1 matches 0..1 run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound
}

# --- resurrection abomination 2 --- #

execute as @s[scores={__res_abom_effect2=1,__15s_cd=0}] run function __:timer/1s/all_players/manage_effects/res_abom2
{
    #!sb global __temp1 = 10
    function __:util/random

    # 20%
    execute if score global __result1 matches 0..1 run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound

    # 10%
    execute if score global __result1 matches 2 run scoreboard players set @s __shiver 10
}

# --- resurrection abomination 3 --- #

execute as @s[scores={__res_abom_effect3=1,__15s_cd=0}] run function __:timer/1s/all_players/manage_effects/res_abom3
{
    #!sb global __temp1 = 10
    function __:util/random

    # 20%
    execute if score global __result1 matches 0..1 run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound

    # 10%
    execute if score global __result1 matches 2 run scoreboard players set @s __shiver 10

    # 10%
    execute if score global __result1 matches 3 run function __:timer/1s/all_players/manage_effects/res_abom/panic
}

# ------------------------------------------ reset cds ------------------------------------------- #

execute as @s[scores={__15s_cd=0}] run function __:timer/1s/all_players/manage_effects/reset_15s_cd
{
    # reset cd
    # 15s (-(±value))
    #!sb @s __15s_cd = 12
    # ±3s (*2+1)
    #!sb global __temp1 = 7
    function __:util/random
    #!sb @s __15s_cd += global __result1
}

execute as @s[scores={__30s_cd=0}] run function __:timer/1s/all_players/manage_effects/reset_30s_cd
{
    # reset cd
    # 30s (-(±value))
    #!sb @s __30s_cd = 25
    # ±5s (*2+1)
    #!sb global __temp1 = 11
    function __:util/random
    #!sb @s __30s_cd += global __result1
}

execute as @s[scores={__45s_cd=0}] run function __:timer/1s/all_players/manage_effects/reset_45s_cd
{
    # reset cd
    # 45s (-(±value))
    #!sb @s __45s_cd = 40
    # ±5s (*2+1)
    #!sb global __temp1 = 11
    function __:util/random
    #!sb @s __45s_cd += global __result1
}

execute as @s[scores={__1m40s_cd=0}] run function __:timer/1s/all_players/manage_effects/reset_1m40s_cd
{
    # reset cd
    # 1m40s (100s) (-(±value))
    #!sb @s __1m40s_cd = 90
    # ±10s (*2+1)
    #!sb global __temp1 = 21
    function __:util/random
    #!sb @s __1m40s_cd += global __result1
}

execute as @s[scores={__2m_cd=0}] run function __:timer/1s/all_players/manage_effects/reset_2m_cd
{
    # reset cd
    # 2m (120s) (-(±value))
    #!sb @s __2m_cd = 110
    # ±10s (*2+1)
    #!sb global __temp1 = 21
    function __:util/random
    #!sb @s __2m_cd += global __result1
}

execute as @s[scores={__3m_cd=0}] run function __:timer/1s/all_players/manage_effects/reset_3m_cd
{
    # reset cd
    # 3m (180s) (-(±value))
    #!sb @s __3m_cd = 165
    # ±15s (*2+1)
    #!sb global __temp1 = 31
    function __:util/random
    #!sb @s __3m_cd += global __result1
}

execute as @s[scores={__5m_cd=0}] run function __:timer/1s/all_players/manage_effects/reset_5m_cd
{
    # reset cd
    # 5m (300s) (-(±value))
    #!sb @s __5m_cd = 280
    # ±20s (*2+1)
    #!sb global __temp1 = 41
    function __:util/random
    #!sb @s __5m_cd += global __result1
}

# ----------------------------------- decrease cooldown timers ----------------------------------- #

#!sb @s __15s_cd -= 1

# only on alive players not in resurrection event
execute as @s[scores={__time_alive=1..,__res_abom_effect1=..1,__res_abom_effect2=..1,__res_abom_effect3=..1}] run function __:timer/1s/all_players/manage_effects/decrease_curse_cooldowns
{
    #!sb @s __30s_cd -= 1
    #!sb @s __45s_cd -= 1
    #!sb @s __1m40s_cd -= 1
    #!sb @s __2m_cd -= 1
    #!sb @s __3m_cd -= 1
    #!sb @s __5m_cd -= 1
}
