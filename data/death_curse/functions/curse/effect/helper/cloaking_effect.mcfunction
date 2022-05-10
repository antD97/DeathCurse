# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# activate cloaking particle effect around the cloaking player
scoreboard players set @s death_curse_cloaking 1
scoreboard players operation @s death_curse_cloaking_end = global death_curse_effect_timer
scoreboard players add @s death_curse_cloaking_end 3
