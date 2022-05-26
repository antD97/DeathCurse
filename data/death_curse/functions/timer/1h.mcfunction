# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1h (72000t) timer
schedule function __:timer/1h 3600s

# randomizes the executor's effect offsets
execute as @a run function __:player/randomize_effect_offsets
