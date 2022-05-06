# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies all the level 2 2m effects to the executor
scoreboard players set death_curse death_curse_arg 2
function death_curse:util/random

# 50% small nausea
execute if score death_curse death_curse_result matches 0 run function death_curse:curse/effect/small_nausea

# 50% small fatigue
execute if score death_curse death_curse_result matches 1 run function death_curse:curse/effect/small_fatigue
