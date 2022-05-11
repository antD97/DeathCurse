# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies to the executor:
# 5s slowness
# 5s blindness
# 5s weakness

effect give @s minecraft:slowness 5 0 true
effect give @s minecraft:blindness 5 0 true
effect give @s minecraft:weakness 5 0 true

# reset particle effect
scoreboard players set @s death_curse_feared 1
scoreboard players operation @s death_curse_feared_end = global death_curse_effect_timer
scoreboard players add @s death_curse_feared_end 10
