# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

#!sb global __temp1 = 2
function __:util/random

# 50%: nausea 2
execute if score global __result1 matches 0 run function __:timer/1s/all_players/manage_effects/curse/nausea2

# 50%: fatigue 2
execute if score global __result1 matches 1 run function __:timer/1s/all_players/manage_effects/curse/fatigue2
{
    effect give @s nausea 6 0 true
    effect give @s weakness 5 0 true
    effect give @s mining_fatigue 5 1 true
    effect give @s slowness 5 0 true

    execute at @s run playsound ambient.basalt_deltas.additions ambient @s ~ ~10000 ~ 100000000 1 1

    # particle effect
    #!sb @s __fatigue2 += 5
}
