# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# creates a black cloud particle effect around the hoglin executor

# check if baby (0=not baby, 1=baby)
execute store result score global death_curse_result run data get entity @s Age
execute if score global death_curse_result matches ..-1 run scoreboard players set global death_curse_result 1

# not baby
execute if score global death_curse_result matches 0 run particle minecraft:squid_ink ~ ~0.7 ~ 0.349125 0.35 0.349125 0 4
# baby
execute if score global death_curse_result matches 1 run particle minecraft:squid_ink ~ ~0.35 ~ 0.17455 0.175 0.17455 0 2
