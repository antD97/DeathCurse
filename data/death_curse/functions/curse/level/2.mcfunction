# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies level 2 curse effects

# 45s ((effect timer + offset1) % 45): nausea 1
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset1
#!sb global __arg1 = 45
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect/nausea1

# 2m ((effect timer + offset2) % 120): level 2 2m effect group
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset2
#!sb global __arg1 = 120
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect_group/level2_2m
{
    # random
    #!sb global __arg1 = 2
    function __:util/random

    # 50%: nausea2
    execute if score global __result1 matches 0 run function __:curse/effect/nausea2

    # 50%: fatigue1
    execute if score global __result1 matches 1 run function __:curse/effect/fatigue1
    {
        effect give @s minecraft:nausea 6 0 true
        effect give @s minecraft:mining_fatigue 5 0 true
        effect give @s minecraft:slowness 5 0 true

        execute positioned as @s run playsound minecraft:ambient.basalt_deltas.additions ambient @s ~ ~10000 ~ 100000000 1 1

        # enable particle effect
        #!sb @s __fatigue1 = 1
        # set particle effect end time
        #!sb @s __fatigue1_end = global __effect_timer
        scoreboard players add @s __fatigue1_end 5
    }
}
