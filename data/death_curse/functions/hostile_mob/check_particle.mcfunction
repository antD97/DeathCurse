# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# updates scoreboard particle effect values depending on the effect duration of the executing hostile mob

# check cloak effect scores
execute if score @s death_curse_cloak1_id matches 1.. run function death_curse:hostile_mob/helper/check_cloak
execute if score @s death_curse_cloak2_id matches 1.. run function death_curse:hostile_mob/helper/check_cloak
