# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies level 4 curse effects

# 30s ((effect timer + offset1) % 30): nausea 1
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset1
#!sb global __arg1 += 30
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect/nausea1

# 1m40s ((effect timer + offset2) % 100): level 4 1m40s effect group
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset2
#!sb global __arg1 += 100
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect_group/level4_1m40s
{
    # random
    #!sb global __arg1 += 2
    function __:util/random

    # 50%: nausea2
    execute if score global __result1 matches 0 run function __:curse/effect/nausea2

    # 50%: fatigue2
    execute if score global __result1 matches 1 run function __:curse/effect/fatigue2
    {
        effect give @s minecraft:nausea 6 0 true
        effect give @s minecraft:weakness 5 0 true
        effect give @s minecraft:mining_fatigue 5 1 true
        effect give @s minecraft:slowness 5 0 true

        execute positioned as @s run playsound minecraft:ambient.basalt_deltas.additions ambient @s ~ ~10000 ~ 100000000 1 1

        # enable particle effect
        #!sb @s __fatigue2 += 1
        # set particle effect end time
        #!sb @s __fatigue2_end = global __effect_timer
        scoreboard players add @s __fatigue2_end 5
    }
}

# 5m ((effect timer + offset3) % 300): curse leak 1
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset3
#!sb global __arg1 += 300
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 positioned as @s run function __:curse/effect/curse_leak1
