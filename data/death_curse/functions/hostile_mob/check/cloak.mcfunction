# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# find cloak_end - effect_timer
scoreboard players operation global death_curse_result1 = @s death_curse_cloak_end
scoreboard players operation global death_curse_result1 -= global death_curse_effect_timer

# remove cloak id scores if timer is up
execute if score global death_curse_result1 matches ..0 run function death_curse:hostile_mob/helper/remove_cloak_id
