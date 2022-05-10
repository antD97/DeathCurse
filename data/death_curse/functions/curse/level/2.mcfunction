# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies level 2 curse effects

# 45s ((effect timer + offset) % 45): nausea1
scoreboard players operation global death_curse_result = global death_curse_effect_timer
scoreboard players operation global death_curse_result += @s death_curse_effect_offset1
scoreboard players set global death_curse_arg1 45
scoreboard players operation global death_curse_result %= global death_curse_arg1

execute if score global death_curse_result matches 0 run function death_curse:curse/effect/nausea1

# 2m ((effect timer + offset) % 120): level 2 2m effect group
scoreboard players operation global death_curse_result = global death_curse_effect_timer
scoreboard players operation global death_curse_result += @s death_curse_effect_offset2
scoreboard players set global death_curse_arg1 120
scoreboard players operation global death_curse_result %= global death_curse_arg1

execute if score global death_curse_result matches 0 run function death_curse:curse/effect_group/level2_2m
