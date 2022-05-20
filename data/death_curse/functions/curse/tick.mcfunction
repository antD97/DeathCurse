# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1s curse tick for player executors

# level effects
#!find=0
#!replace=0|1|2|3|4|5|6|7|8|9
execute as @a[scores={__level=0}] run function __:curse/level/0
execute as @a[scores={__level=10..}] run function __:curse/level/10

# mob aggression duration check
# find mob_aggression_end - effect_timer
#!sb global __result1 = @s __mob_aggression_end
#!sb global __result1 -= global __effect_timer
# remove effect timer is up
execute if score global __result1 matches ..0 run scoreboard players set @s __mob_aggression 0

# mob aggression effect
execute if score @s __mob_aggression matches 1.. positioned as @s run function __:curse/effect/mob_aggression
