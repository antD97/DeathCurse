# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# updates scoreboard particle effect values depending on the effect duration of the executing player

# check cloak effect scores
execute if score @s death_curse_fatigue matches 1.. run function death_curse:player/helper/check_fatigue
