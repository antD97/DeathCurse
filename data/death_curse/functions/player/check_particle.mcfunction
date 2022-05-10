# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# updates scoreboard particle effect values depending on the effect duration of the executing player

# check curse increase effect scores
execute if score @s death_curse_increase matches 1.. run function death_curse:player/check/increase

# check curse decrease effect scores
execute if score @s death_curse_decrease matches 1.. run function death_curse:player/check/decrease

# check fatigue effect scores
execute if score @s death_curse_fatigue matches 1.. run function death_curse:player/check/fatigue

# check cloaking effect scores
execute if score @s death_curse_cloaking matches 1.. run function death_curse:player/check/cloaking
