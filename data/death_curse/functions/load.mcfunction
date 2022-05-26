# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# score used to identify players
scoreboard objectives add __id dummy
#!sb global __id += 0

scoreboard objectives add __deaths deathCount
# score to track players' current curse level
scoreboard objectives add __curse_level dummy
scoreboard objectives add __time_alive minecraft.custom:time_since_death
# used to track a players change in curse level
scoreboard objectives add __prev_level dummy
scoreboard objectives add __hp health
scoreboard objectives add __food food

# trigger for the death curse introduction message
scoreboard objectives add __intro trigger
# used to mark introduced players
scoreboard objectives add __introduced dummy
# trigger to give the player a death curse book
scoreboard objectives add __book trigger
# trigger for sending curse level message
scoreboard objectives add __level trigger
# keeps track of how many times the player has been given a death curse book
scoreboard objectives add __n_books dummy

# scoreboard effect timer (seconds)
scoreboard objectives add __effect_timer dummy
#!sb global __effect_timer += 0

# randomized values to offset player effects
scoreboard objectives add __effect_offset1 dummy
scoreboard objectives add __effect_offset2 dummy
scoreboard objectives add __effect_offset3 dummy
scoreboard objectives add __effect_offset4 dummy

# death increase particle effect mark
scoreboard objectives add __deaths_increase dummy
# used to keep track of the death increase particle effect duration
scoreboard objectives add __deaths_increase_end dummy
# death decrease 1 particle effect mark
scoreboard objectives add __deaths_decrease1 dummy
# used to keep track of the death decrease 1 particle effect duration
scoreboard objectives add __deaths_decrease1_end dummy
# death decrease 2 particle effect mark
scoreboard objectives add __deaths_decrease2 dummy
# used to keep track of the death decrease 2 particle effect duration
scoreboard objectives add __deaths_decrease2_end dummy
# death decrease 3 particle effect mark
scoreboard objectives add __deaths_decrease3 dummy
# used to keep track of the death decrease 3 particle effect duration
scoreboard objectives add __deaths_decrease3_end dummy

# used to mark players with fatigue particle effect
scoreboard objectives add __fatigue1 dummy
# used to keep track of fatigue particle effect duration
scoreboard objectives add __fatigue1_end dummy

# used to mark hostile mobs
scoreboard objectives add __hostile dummy
# used to keep track of which player level 1 cloaked a mob
scoreboard objectives add __cloak1_id dummy
# used to keep track of which player level 2 cloaked a mob
scoreboard objectives add __cloak2_id dummy
# used to keep track of the cloak effect particle effect duration
scoreboard objectives add __cloak_end dummy
# used to keep track of what curse level the cloaking player was when applying a cloak to a mob
scoreboard objectives add __cloak_level dummy
# used to mark players with cloaking particle effect
scoreboard objectives add __cloaking dummy
# used to keep track of cloaking particle effect duration
scoreboard objectives add __cloaking_end dummy

# used to mark players with intense fatigue particle effect
scoreboard objectives add __fatigue2 dummy
# used to keep track of intense fatigue particle effect duration
scoreboard objectives add __fatigue2_end dummy

# used to mark players with poison particle effect
scoreboard objectives add __poison dummy
# used to keep track of poison particle effect duration
scoreboard objectives add __poison_end dummy

# used to mark players with intense fatigue particle effect
scoreboard objectives add __fatigue3 dummy
# used to keep track of intense fatigue particle effect duration
scoreboard objectives add __fatigue3_end dummy

# used to mark players with mob aggression effect
scoreboard objectives add __mob_aggression dummy
# used to keep track of the mob aggression effect duration
scoreboard objectives add __mob_aggression_end dummy
# used to mark hostile mobs with angry particle effect
scoreboard objectives add __angry dummy
# used to keep track of the angry particle effect duration
scoreboard objectives add __angry_end dummy

# used to mark players with feared particle and sound effect
scoreboard objectives add __feared dummy
# used to keep track of the feared particle and sound effect duration
scoreboard objectives add __feared_end dummy
# used to keep track of when a player is initially feared
scoreboard objectives add __feared_init dummy
# used to mark players who should play the second bump of the fast heart beat timer
scoreboard objectives add __next_fast_beat dummy
# used to mark players who should play the second bump of the slow heart beat timer
scoreboard objectives add __next_slow_beat dummy

# player holding curse cookie detection
scoreboard objectives add __holding_curse_cookie1 dummy
scoreboard objectives add __holding_curse_cookie2 dummy
scoreboard objectives add __holding_curse_cookie3 dummy
# player eaten cookie
scoreboard objectives add __eaten_cookie minecraft.used:minecraft.cookie
# player curse cookie effects
scoreboard objectives add __curse_cookie1_effect dummy
scoreboard objectives add __curse_cookie2_effect dummy
scoreboard objectives add __curse_cookie3_effect dummy

# player holding resurrection abomination detection
scoreboard objectives add __holding_res_abom1 dummy
scoreboard objectives add __holding_res_abom2 dummy
scoreboard objectives add __holding_res_abom3 dummy
# player eaten beetroot soup
scoreboard objectives add __eaten_beetroot_soup minecraft.used:minecraft.beetroot_soup
# player res abom. effects
scoreboard objectives add __res_abom_effect1 dummy
scoreboard objectives add __res_abom_effect2 dummy
scoreboard objectives add __res_abom_effect3 dummy

# jitter effect
scoreboard objectives add __jitter_effect dummy
scoreboard objectives add __jitter_effect_end dummy

# smoke effect
scoreboard objectives add __smoke dummy
# strike effect
scoreboard objectives add __strike dummy

# detect player sleeping
scoreboard objectives add __sleeping minecraft.custom:minecraft.sleep_in_bed

# temporary values used for function arguments or arithmetic
scoreboard objectives add __arg1 dummy
scoreboard objectives add __arg2 dummy
# temporary values used for function return values or arithmetic
scoreboard objectives add __result1 dummy
scoreboard objectives add __result2 dummy

# global timers
schedule function __:timer/1t 1t
schedule function __:timer/2t 2t
schedule function __:timer/10t 10t
schedule function __:timer/1s 1s
schedule function __:timer/10s 10s
schedule function __:timer/1h 3600s

tellraw @a {"text": "Loaded Death Curse.", "color": "#AA0000"}
