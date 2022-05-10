# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies the cloak & silence effect to the exectuor
# arguments:
#   global death_curse_arg1 score: the id of the player applying the effect
#   global death_curse_arg2 score: the curse level of the player applying the effect

# remove cloak1
scoreboard players operation @s death_curse_cloak2_id = global death_curse_arg1
effect clear @s minecraft:invisibility

# apply invisiblity effect to the executor
effect give @s minecraft:invisibility 1199 0 true

# apply silent effect to the executor
data merge entity @s {Silent:1b}

# set cloak2 id
scoreboard players operation @s death_curse_cloak2_id = global death_curse_arg1
# set cloak end time
scoreboard players operation @s death_curse_cloak_end = global death_curse_effect_timer
scoreboard players add @s death_curse_cloak_end 1200
# set cloak level
scoreboard players operation @s death_curse_cloak_level = global death_curse_arg2

# kinda ugly way of reselecting the player who cloaked this mob
# activate cloaking particle effect around the cloaking player
execute as @p[distance=..1] run function death_curse:curse/effect/helper/cloaking_effect
