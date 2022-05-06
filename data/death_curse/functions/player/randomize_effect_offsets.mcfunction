# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# randomizes the executor's effect offsets
# 1800s (30m) is the LCM of all the timers 30s, 45s, 1m40s (100s), 2m (60s), 3m (180s), & 5m (300s)

# offset 1
scoreboard players set death_curse death_curse_arg 1800
function death_curse:util/random
scoreboard players operation @s death_curse_effect_offset1 = death_curse death_curse_result

# offset 2
scoreboard players set death_curse death_curse_arg 1800
function death_curse:util/random
scoreboard players operation @s death_curse_effect_offset2 = death_curse death_curse_result

# offset 3
scoreboard players set death_curse death_curse_arg 1800
function death_curse:util/random
scoreboard players operation @s death_curse_effect_offset3 = death_curse death_curse_result

# offset 4
scoreboard players set death_curse death_curse_arg 1800
function death_curse:util/random
scoreboard players operation @s death_curse_effect_offset4 = death_curse death_curse_result
