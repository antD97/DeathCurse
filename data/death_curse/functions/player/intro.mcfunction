# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# prints the death curse introduction message to the executor
tellraw @s  ["",{"text":"This world has been plagued with the "},{"text":"Death Curse","color":"dark_red"},{"text":"! Click "},{"text":"[here]","color":"#00FFFF","clickEvent":{"action":"run_command","value":"/trigger death_curse_give_book"}},{"text":" for an explanation book."}]

# ensure offset values exist
scoreboard players add @s death_curse_effect_offset1 0
scoreboard players add @s death_curse_effect_offset2 0
scoreboard players add @s death_curse_effect_offset3 0
scoreboard players add @s death_curse_effect_offset4 0

# randomize effect offsets if the player needs it
execute as @s[scores={death_curse_effect_offset1=0,death_curse_effect_offset2=0,death_curse_effect_offset3=0,death_curse_effect_offset4=0}] run function death_curse:player/randomize_effect_offsets

# tag as introduced
tag @a add death_curse_introduced
