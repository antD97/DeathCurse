# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# apply level 1 curse effects

# 45s ((effect timer + offset) % 45): nausea1
scoreboard players operation global death_curse_result = global death_curse_effect_timer
scoreboard players operation global death_curse_result += @s death_curse_effect_offset1
scoreboard players set global death_curse_arg 45
scoreboard players operation global death_curse_result %= global death_curse_arg

execute if score global death_curse_result matches 0 run function death_curse:curse/effect/nausea1

# 2m ((effect timer + offset) % 120): nausea2
scoreboard players operation global death_curse_result = global death_curse_effect_timer
scoreboard players operation global death_curse_result += @s death_curse_effect_offset2
scoreboard players set global death_curse_arg 120
scoreboard players operation global death_curse_result %= global death_curse_arg

execute if score global death_curse_result matches 0 run function death_curse:curse/effect/nausea2
