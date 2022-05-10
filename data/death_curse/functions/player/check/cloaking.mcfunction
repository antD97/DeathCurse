# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# find cloaking_end - effect_timer
scoreboard players operation global death_curse_result = @s death_curse_cloaking_end
scoreboard players operation global death_curse_result -= global death_curse_effect_timer

# remove cloaking particle mark if timer is up
execute if score global death_curse_result matches ..0 run scoreboard players set @s death_curse_cloaking 0
