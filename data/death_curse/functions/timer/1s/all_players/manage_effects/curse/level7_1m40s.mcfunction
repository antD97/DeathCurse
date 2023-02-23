# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

#!sb global __temp1 = 4
function __:util/random

# 50%: nausea 2
execute if score global __result1 matches 0..1 run function __:timer/1s/all_players/manage_effects/curse/nausea2

# 25%: fatigue 2
execute if score global __result1 matches 2 run function __:timer/1s/all_players/manage_effects/curse/fatigue2

# 25%: fatigue 3
execute if score global __result1 matches 3 run function __:timer/1s/all_players/manage_effects/curse/fatigue3
{
    effect give @s nausea 7 0 true
    effect give @s weakness 5 0 true
    effect give @s mining_fatigue 5 1 true
    effect give @s slowness 5 1 true
    effect give @s blindness 3 0 true
    # not if food is 3 or less
    execute as @s[scores={__food=7..}] run effect give @s hunger 10 9 true

    execute at @s run playsound ambient.warped_forest.mood ambient @s ~ ~10000 ~ 100000000 1 1

    # particle effect
    #!sb @s __fatigue3 += 3
}
