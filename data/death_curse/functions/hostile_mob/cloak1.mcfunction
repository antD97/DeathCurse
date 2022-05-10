# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies the cloak effect to the exectuor
# arguments:
#   global death_curse_arg score: the id of the player applying the effect

# apply invisiblity effect to the executor
effect give @s minecraft:invisibility 1199 0 true

# set cloak link id
scoreboard players operation @s death_curse_cloak1_id = global death_curse_arg
# set cloak end time
scoreboard players operation @s death_curse_cloak_end = global death_curse_effect_timer
scoreboard players add @s death_curse_cloak_end 1200

# creates a puff particle effect at the previously positioned location
particle minecraft:squid_ink ~ ~0.9 ~ 0.15 0.45 0.15 0 10
# additional cloak level color (curse level 3 #880000 red)
particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
