# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies level 7 curse effects

# 30s ((effect timer + offset1) % 30): nausea 1
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset1
#!sb global __arg1 = 30
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect/nausea1

# 1m40s ((effect timer + offset2) % 100): level 4 1m40s effect group
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset2
#!sb global __arg1 = 100
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect_group/level7_1m40s
{
    # random
    #!sb global __arg1 = 4
    function __:util/random

    # 50%: nausea2
    execute if score global __result1 matches 0..1 run function __:curse/effect/nausea2

    # 25%: fatigue2
    execute if score global __result1 matches 2 run function __:curse/effect/fatigue2

    # 25%: fatigue3
    execute if score global __result1 matches 3 run function __:curse/effect/fatigue3
    {
        effect give @s minecraft:nausea 7 0 true
        effect give @s minecraft:weakness 5 0 true
        effect give @s minecraft:mining_fatigue 5 1 true
        effect give @s minecraft:slowness 5 1 true
        effect give @s minecraft:blindness 3 0 true
        # not if food is 3 or less
        execute as @s[scores={__food=7..}] run effect give @s minecraft:hunger 10 9 true

        execute positioned as @s run playsound minecraft:ambient.warped_forest.mood ambient @s ~ ~1000 ~ 100000

        # enable particle effect
        #!sb @s __fatigue3 = 1
        # set particle effect end time
        #!sb @s __fatigue3_end = global __effect_timer
        scoreboard players add @s __fatigue3_end 5
    }
}

# 3m ((effect timer + offset3) % 180): poison 1
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset3
#!sb global __arg1 = 180
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect/poison1

# 5m ((effect timer + offset4) % 300): curse leak 2
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset4
#!sb global __arg1 = 300
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 positioned as @s run function __:curse/effect/curse_leak2
