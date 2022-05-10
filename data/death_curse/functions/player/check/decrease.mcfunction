# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# find decrease_end - effect_timer
scoreboard players operation global death_curse_result1 = @s death_curse_decrease_end
scoreboard players operation global death_curse_result1 -= global death_curse_effect_timer

# remove decrease particle mark if timer is up
execute if score global death_curse_result1 matches ..0 run scoreboard players set @s death_curse_decrease 0
