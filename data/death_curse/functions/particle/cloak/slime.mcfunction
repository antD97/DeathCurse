# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# creates a black cloud particle effect around the slime/magma cube executor

# check size (0=small, 1=medium, 3=large)
execute store result score global death_curse_result1 run data get entity @s Size

# small
execute if score global death_curse_result1 matches 0 run particle minecraft:squid_ink ~ ~0.2601 ~ 0.01 0.01 0.01 0 1
# medium
execute if score global death_curse_result1 matches 1 run particle minecraft:squid_ink ~ ~0.5202 ~ 0.2601 0.2601 0.2601 0 2
# large
execute if score global death_curse_result1 matches 3 run particle minecraft:squid_ink ~ ~1.0404 ~ 0.5202 0.5202 0.5202 0 6
