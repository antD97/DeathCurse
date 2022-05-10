# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# arguments:
#   global death_curse_arg1 score: the id of the player applying the cloak

# ensure scores have a value
scoreboard players add @s death_curse_cloak2_id 0

# apply mark if not already cloak2'd
scoreboard players set @s[scores={death_curse_cloak2_id=0},distance=..30] death_curse_hostile 1

# add to cloaked count
execute if score @s death_curse_cloak2_id = global death_curse_arg1 run scoreboard players add global death_curse_result 1
