# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies level 8 curse effects

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

# 3m ((effect timer + offset3) % 180): poison 2
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset3
#!sb global __arg1 = 180
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect/poison2
{
    # random
    #!sb global __arg1 = 4
    function __:util/random

    # 75%: 3s poison
    execute if score global __result1 matches 0..2 run effect give @s minecraft:poison 3 0 true

    # 25%: 4s poison
    execute if score global __result1 matches 3 run function __:curse/effect/helper/poison2_heavy
    {
        effect give @s minecraft:poison 4 0 true

        # witch laughter
        execute positioned as @s run playsound minecraft:entity.witch.celebrate ambient @s ~ ~1000 ~ 100000

        # enable particle effect
        #!sb @s __poison = 1
        # set particle effect end time
        #!sb @s __poison_end = global __effect_timer
        scoreboard players add @s __poison_end 2
    }
}

# 5m ((effect timer + offset4) % 300): curse leak 2
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset4
#!sb global __arg1 = 300
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 positioned as @s run function __:curse/effect/curse_leak2
