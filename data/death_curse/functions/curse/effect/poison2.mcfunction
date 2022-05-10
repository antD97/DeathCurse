# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies poison effect to the executor

# random
scoreboard players set global death_curse_arg1 4
function death_curse:util/random

# 75%: 3s poison
execute if score global death_curse_result matches 0..2 run effect give @s minecraft:poison 3 0 true

# 25%: 4s poison
execute if score global death_curse_result matches 3 run function death_curse:curse/effect/helper/poison2_heavy
