# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies all the level 2 2m effects to the executor

# 50%:
scoreboard players set global death_curse_arg 2
function death_curse:util/random

# nausea2
execute if score global death_curse_result matches 0 run function death_curse:curse/effect/nausea2

# fatigue1
execute if score global death_curse_result matches 1 run function death_curse:curse/effect/fatigue1
