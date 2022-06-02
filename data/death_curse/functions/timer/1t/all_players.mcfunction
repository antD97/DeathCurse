# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# executed on every player every 1t (0.05s)
# returns:
#   global __result1: if any player is under any res. abom. effect, set to 1

# store if someone is under a res. abom. effect in global __result2
#!find=__res_abom_effect1
#!replace=__res_abom_effect1|__res_abom_effect2|__res_abom_effect3
execute if entity @s[scores={__res_abom_effect1=1..}] run scoreboard players set global __result1 1
