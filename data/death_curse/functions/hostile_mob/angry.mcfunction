# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# apply regeneration, fire resistance, and speed to the executor
effect give @s minecraft:regeneration 5 0 true
effect give @s minecraft:fire_resistance 5 0 true
effect give @s minecraft:speed 5 0 true

# apply the angry particle effect for 5s
scoreboard players set @s death_curse_angry 1
scoreboard players operation @s death_curse_angry_end = global death_curse_effect_timer
scoreboard players add @s death_curse_angry_end 5

# add to angry mob count
scoreboard players add global death_curse_result1 1
