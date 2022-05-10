# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies level 6 curse effects

# 30s ((effect timer + offset1) % 30): nausea 1
scoreboard players operation global death_curse_result1 = global death_curse_effect_timer
scoreboard players operation global death_curse_result1 += @s death_curse_effect_offset1
scoreboard players set global death_curse_arg1 30
scoreboard players operation global death_curse_result1 %= global death_curse_arg1

execute if score global death_curse_result1 matches 0 run function death_curse:curse/effect/nausea1

# 1m40s ((effect timer + offset2) % 100): level 4 1m40s effect group
scoreboard players operation global death_curse_result1 = global death_curse_effect_timer
scoreboard players operation global death_curse_result1 += @s death_curse_effect_offset2
scoreboard players set global death_curse_arg1 100
scoreboard players operation global death_curse_result1 %= global death_curse_arg1

execute if score global death_curse_result1 matches 0 run function death_curse:curse/effect_group/level4_1m40s

# 3m ((effect timer + offset3) % 180): poison 1
scoreboard players operation global death_curse_result1 = global death_curse_effect_timer
scoreboard players operation global death_curse_result1 += @s death_curse_effect_offset3
scoreboard players set global death_curse_arg1 180
scoreboard players operation global death_curse_result1 %= global death_curse_arg1

execute if score global death_curse_result1 matches 0 run function death_curse:curse/effect/poison1

# 5m ((effect timer + offset4) % 300): curse leak 2
scoreboard players operation global death_curse_result1 = global death_curse_effect_timer
scoreboard players operation global death_curse_result1 += @s death_curse_effect_offset4
scoreboard players set global death_curse_arg1 300
scoreboard players operation global death_curse_result1 %= global death_curse_arg1

execute if score global death_curse_result1 matches 0 positioned as @s run function death_curse:curse/effect/curse_leak2
