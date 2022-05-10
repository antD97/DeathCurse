# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# find fatigue2_end - effect_timer
scoreboard players operation global death_curse_result1 = @s death_curse_fatigue2_end
scoreboard players operation global death_curse_result1 -= global death_curse_effect_timer

# remove fatigue 2 particle mark if timer is up
execute if score global death_curse_result1 matches ..0 run scoreboard players set @s death_curse_fatigue2 0
