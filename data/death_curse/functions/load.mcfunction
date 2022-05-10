# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# score used to identify players
scoreboard objectives add death_curse_id dummy
scoreboard players add global death_curse_id 0

# score to track players' current curse level
scoreboard objectives add death_curse_level deathCount
scoreboard objectives add death_curse_time_alive minecraft.custom:time_since_death

# trigger for the death curse introduction message
scoreboard objectives add death_curse_intro trigger
# used to mark introduced players
scoreboard objectives add death_curse_introduced dummy
# trigger to give the player a death curse book
scoreboard objectives add death_curse_give_book trigger
# keeps track of how many times the player has been given a death curse book
scoreboard objectives add death_curse_n_books dummy

# scoreboard effect timer (seconds)
scoreboard objectives add death_curse_effect_timer dummy
scoreboard players add global death_curse_effect_timer 0

# randomized values to offset player effects
scoreboard objectives add death_curse_effect_offset1 dummy
scoreboard objectives add death_curse_effect_offset2 dummy
scoreboard objectives add death_curse_effect_offset3 dummy
scoreboard objectives add death_curse_effect_offset4 dummy

# used to mark players with fatigue particle effect
scoreboard objectives add death_curse_fatigue dummy
# used to keep track of fatigue particle duration
scoreboard objectives add death_curse_fatigue_end dummy

# used to mark hostile mobs
scoreboard objectives add death_curse_hostile dummy
# used to keep track of which player level 1 cloaked a mob
scoreboard objectives add death_curse_cloak1_id dummy
# used to keep track of which player level 2 cloaked a mob
scoreboard objectives add death_curse_cloak2_id dummy
# used to keep track of the cloak effect particle duration
scoreboard objectives add death_curse_cloak_end dummy

# temporary value used for function arguments or arithmetic
scoreboard objectives add death_curse_arg dummy
# temporary value used for function return values or arithmetic
scoreboard objectives add death_curse_result dummy

# global timers
schedule function death_curse:timer/2t 2t
schedule function death_curse:timer/10t 10t
schedule function death_curse:timer/1s 1s
schedule function death_curse:timer/10s 10s
schedule function death_curse:timer/1h 3600s

tellraw @a {"text": "Loaded Death Curse.", "color": "#AA0000"}
