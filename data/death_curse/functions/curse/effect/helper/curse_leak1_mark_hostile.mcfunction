# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# arguments:
#   global death_curse_arg score: the id of the player applying the cloak

# ensrue scores have a value
scoreboard players add @s death_curse_cloak1_id 0
scoreboard players add @s death_curse_cloak2_id 0

# apply tag if not already cloak1'd
scoreboard players set @s[scores={death_curse_cloak1_id=0},distance=..30] death_curse_hostile 1

# remove tag if already cloak2'd
scoreboard players set @s[scores={death_curse_cloak2_id=1..},distance=..30] death_curse_hostile 0

# add to cloaked count
execute if score @s death_curse_cloak1_id = global death_curse_arg run scoreboard players add global death_curse_result 1
