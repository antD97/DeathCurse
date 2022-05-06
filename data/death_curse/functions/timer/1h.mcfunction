# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1h (72000t) timer
schedule function death_curse:timer/1h 3600s

# randomize player effect offsets
execute as @a[scores={death_curse_level=1..}] run function death_curse:player/randomize_effect_offsets
