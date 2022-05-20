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

# 5m ((effect timer + offset4) % 300): curse leak 2
#!sb global __result2 = global __effect_timer
#!sb global __result2 += @s __effect_offset4
#!sb global __arg1 = 300
#!sb global __result2 %= global __arg1

execute if score global __result2 matches 0 run function __:curse/effect_group/level9_5m

# check fear
execute positioned as @s run function __:curse/effect/check_fear
