# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies level 3 curse effects

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

# 5m ((effect timer + offset3) % 300): curse leak 1
#!sb global __result1 = global __effect_timer
#!sb global __result1 += @s __effect_offset3
#!sb global __arg1 = 300
#!sb global __result1 %= global __arg1

execute if score global __result1 matches 0 positioned as @s run function __:curse/effect/curse_leak1
