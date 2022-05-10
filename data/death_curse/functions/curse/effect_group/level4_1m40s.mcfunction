# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies all the level 4 1m40s effects to the executor

# random
scoreboard players set global death_curse_arg1 2
function death_curse:util/random

# 50%: nausea2
execute if score global death_curse_result1 matches 0 run function death_curse:curse/effect/nausea2

# 50%: fatigue2
execute if score global death_curse_result1 matches 1 run function death_curse:curse/effect/fatigue2
