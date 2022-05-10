# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# apply level 1 curse effects

# 45s ((effect timer + offset1) % 45): nausea 1
scoreboard players operation global death_curse_result1 = global death_curse_effect_timer
scoreboard players operation global death_curse_result1 += @s death_curse_effect_offset1
scoreboard players set global death_curse_arg1 45
scoreboard players operation global death_curse_result1 %= global death_curse_arg1

execute if score global death_curse_result1 matches 0 run function death_curse:curse/effect/nausea1

# 2m ((effect timer + offset2) % 120): nausea2
scoreboard players operation global death_curse_result1 = global death_curse_effect_timer
scoreboard players operation global death_curse_result1 += @s death_curse_effect_offset2
scoreboard players set global death_curse_arg1 120
scoreboard players operation global death_curse_result1 %= global death_curse_arg1

execute if score global death_curse_result1 matches 0 run function death_curse:curse/effect/nausea2
