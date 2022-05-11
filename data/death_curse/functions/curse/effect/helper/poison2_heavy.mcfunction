# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 4s poison effect
effect give @s minecraft:poison 4 0 true

# witch laughter
execute positioned as @s run playsound minecraft:entity.witch.celebrate ambient @s ~ ~1000 ~ 100000

# enable particle effect
scoreboard players set @s death_curse_poison 1
# set particle effect end time
scoreboard players operation @s death_curse_poison_end = global death_curse_effect_timer
scoreboard players add @s death_curse_poison_end 2
