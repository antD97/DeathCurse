# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# apply level 2 curse effects

# 45s (effect timer % 45): tiny nausea
scoreboard players set death_curse death_curse_arg 45
scoreboard players operation death_curse death_curse_result = death_curse death_curse_effect_timer
scoreboard players operation death_curse death_curse_result %= death_curse death_curse_arg

execute if score death_curse death_curse_result matches 0 run function death_curse:curse/effect/tiny_nausea

# 2m (effect timer % 120): level 2 2m effect group
scoreboard players set death_curse death_curse_arg 120
scoreboard players operation death_curse death_curse_result = death_curse death_curse_effect_timer
scoreboard players operation death_curse death_curse_result %= death_curse death_curse_arg

execute if score death_curse death_curse_result = @s death_curse_effect_offset1 run function death_curse:curse/effect_group/level2_2m
