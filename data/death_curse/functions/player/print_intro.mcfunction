# prints the death curse introduction message to the executor
tellraw @s  ["",{"text":"This world has been plagued with the "},{"text":"Death Curse","color":"dark_red"},{"text":"! Click "},{"text":"[here]","color":"#00FFFF","clickEvent":{"action":"run_command","value":"/trigger death_curse_give_book"}},{"text":" for an explanation book."}]
tag @s add death_curse_introduced
