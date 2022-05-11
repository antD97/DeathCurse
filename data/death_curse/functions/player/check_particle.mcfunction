# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# updates scoreboard particle effect values depending on the effect duration of the executing player

# check curse increase effect scores
execute if score @s death_curse_increase matches 1.. run function death_curse:player/check/increase

# check curse decrease effect scores
execute if score @s death_curse_decrease matches 1.. run function death_curse:player/check/decrease

# check fatigue 1 effect scores
execute if score @s death_curse_fatigue1 matches 1.. run function death_curse:player/check/fatigue1

# check cloaking effect scores
execute if score @s death_curse_cloaking matches 1.. run function death_curse:player/check/cloaking

# check fatigue 2 effect scores
execute if score @s death_curse_fatigue2 matches 1.. run function death_curse:player/check/fatigue2

# check poison effect scores
execute if score @s death_curse_poison matches 1.. run function death_curse:player/check/poison

# check fatigue 3 effect scores
execute if score @s death_curse_fatigue3 matches 1.. run function death_curse:player/check/fatigue3

# check fear effect scores
execute if score @s death_curse_feared matches 1.. run function death_curse:player/check/fear
