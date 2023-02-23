# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Creates particle effects for hostile executors

# cloak
execute as @s[scores={__cloak=1..}] at @s run function __:timer/2t/all_hostiles/particles/cloak

# mob aggression
execute as @s[scores={__angry=1..}] at @s run function __:timer/2t/all_hostiles/particles/angry

#!find=skeleton
#!replace=skeleton|wither_skeleton
execute as @s[type=skeleton,tag=__res_event] at @s run particle cloud ~ ~-0.5 ~ 0.25 0.25 0.25 0 3 force
