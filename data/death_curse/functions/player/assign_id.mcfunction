# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# increment global id counter
scoreboard players add global death_curse_id 1

# assign executor's id
scoreboard players operation @s death_curse_id = global death_curse_id
