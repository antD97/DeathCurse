# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# remove all scoreboard objectives
scoreboard objectives remove death_curse_arg
scoreboard objectives remove death_curse_effect_offset1
scoreboard objectives remove death_curse_effect_offset2
scoreboard objectives remove death_curse_effect_offset3
scoreboard objectives remove death_curse_effect_offset4
scoreboard objectives remove death_curse_effect_timer
scoreboard objectives remove death_curse_give_book
scoreboard objectives remove death_curse_intro
scoreboard objectives remove death_curse_level
scoreboard objectives remove death_curse_n_books
scoreboard objectives remove death_curse_result
scoreboard objectives remove death_curse_time_alive

# clear all scheduled functions
schedule clear death_curse:timer/10t
schedule clear death_curse:timer/1s
schedule clear death_curse:timer/10s
schedule clear death_curse:timer/1h

# clear all tags
tag @a remove death_curse_introduced
