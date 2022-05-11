# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Adds 1 to global result1 if this neutral mob is angry at someone
execute store result score global death_curse_arg1 run data get entity @s AngerTime
execute if score global death_curse_arg1 matches 1.. run scoreboard players add global death_curse_result1 1
