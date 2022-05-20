# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# apply level 1 curse effects

# 45s ((effect timer + offset1) % 45): nausea 1
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset1
#!sb global __arg1 = 45
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect/nausea1
{
    effect give @s minecraft:nausea 4 0 true
}

# 2m ((effect timer + offset2) % 120): nausea2
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset2
#!sb global __arg1 = 120
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 run function __:curse/effect/nausea2
{
    effect give @s minecraft:nausea 5 0 true
    execute positioned as @s run playsound minecraft:ambient.crimson_forest.additions ambient @s ~ ~1000 ~ 100000
}
