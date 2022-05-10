# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies level 5 curse effects

# 30s ((effect timer + offset) % 30): nausea1
scoreboard players operation global death_curse_result = global death_curse_effect_timer
scoreboard players operation global death_curse_result += @s death_curse_effect_offset1
scoreboard players set global death_curse_arg1 30
scoreboard players operation global death_curse_result %= global death_curse_arg1

execute if score global death_curse_result matches 0 run function death_curse:curse/effect/nausea1

# 2m ((effect timer + offset) % 100): level 4 1m40s effect group
scoreboard players operation global death_curse_result = global death_curse_effect_timer
scoreboard players operation global death_curse_result += @s death_curse_effect_offset2
scoreboard players set global death_curse_arg1 100
scoreboard players operation global death_curse_result %= global death_curse_arg1

execute if score global death_curse_result matches 0 run function death_curse:curse/effect_group/level4_1m40s

# 3m ((effect timer + offset) % 180): poison
scoreboard players operation global death_curse_result = global death_curse_effect_timer
scoreboard players operation global death_curse_result += @s death_curse_effect_offset3
scoreboard players set global death_curse_arg1 180
scoreboard players operation global death_curse_result %= global death_curse_arg1

execute if score global death_curse_result matches 0 positioned as @s run function death_curse:curse/effect/poison1

# 5m ((effect timer + offset) % 300): curse leak
scoreboard players operation global death_curse_result = global death_curse_effect_timer
scoreboard players operation global death_curse_result += @s death_curse_effect_offset4
scoreboard players set global death_curse_arg1 300
scoreboard players operation global death_curse_result %= global death_curse_arg1

execute if score global death_curse_result matches 0 positioned as @s run function death_curse:curse/effect/curse_leak1
