# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# creates a black cloud particle effect around the zombie/husk executor

# check if baby (0=not baby, 1=baby)
execute store result score global death_curse_result run data get entity @s IsBaby

# not baby
execute if score global death_curse_result matches 0 run particle minecraft:squid_ink ~ ~0.95 ~ 0 0.475 0 0 3
# baby
execute if score global death_curse_result matches 1 run particle minecraft:squid_ink ~ ~0.475 ~ 0 0.2375 0 0 2
