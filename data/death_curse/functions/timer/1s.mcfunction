# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1s (20t) timer
schedule function death_curse:timer/1s 1s

# curse
execute as @a[scores={death_curse_level=1..}] run function death_curse:curse/tick

# curse effect timer
scoreboard players add death_curse death_curse_effect_timer 1
