# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# score used to identify players
scoreboard objectives add __id dummy
#!sb global __id += 0

scoreboard objectives add __disable dummy

scoreboard objectives add __deaths deathCount
scoreboard objectives add __time_alive minecraft.custom:time_since_death
scoreboard objectives add __hp health
scoreboard objectives add __food food

scoreboard objectives add __eaten_beetroot_soup minecraft.used:minecraft.beetroot_soup
scoreboard objectives add __eaten_cookie minecraft.used:minecraft.cookie
scoreboard objectives add __slept minecraft.custom:minecraft.sleep_in_bed

# players' current curse level
scoreboard objectives add __curse_level dummy
# used to track a players change in curse level
scoreboard objectives add __prev_level dummy

# trigger for the death curse introduction message
scoreboard objectives add __intro trigger
# trigger to give the player a death curse guide book
scoreboard objectives add __book trigger
# trigger for sending curse level message
scoreboard objectives add __level trigger

# used to mark introduced players
scoreboard objectives add __introduced dummy
# how many times a player has been given a death curse book
scoreboard objectives add __n_books dummy

# death increase effect duration
scoreboard objectives add __deaths_increase dummy
# death decrease effect durations
scoreboard objectives add __deaths_decrease1 dummy
scoreboard objectives add __deaths_decrease2 dummy
scoreboard objectives add __deaths_decrease3 dummy

scoreboard objectives add __hostile dummy

# --- curse effects --- #

# cd timers
scoreboard objectives add __30s_cd dummy
scoreboard objectives add __45s_cd dummy
scoreboard objectives add __1m40s_cd dummy
scoreboard objectives add __2m_cd dummy
scoreboard objectives add __3m_cd dummy
scoreboard objectives add __5m_cd dummy

scoreboard objectives add __fatigue1 dummy

# player
scoreboard objectives add __cloaking dummy
# hostile
scoreboard objectives add __cloak dummy
# used to keep track of which player level 1 cloaked a mob (hostile mob)
scoreboard objectives add __cloak1_id dummy
# used to keep track of which player level 2 cloaked a mob (hostile mob)
scoreboard objectives add __cloak2_id dummy
# used to keep track of what curse level the cloaking player was when applying a cloak to a mob (hostile mob)
scoreboard objectives add __cloak_level dummy

scoreboard objectives add __fatigue2 dummy

scoreboard objectives add __poison dummy

scoreboard objectives add __fatigue3 dummy

# player
scoreboard objectives add __mob_aggression dummy
# 1 if a mob is a hostile mob is close, 0 otherwise
scoreboard objectives add __mob_aggression_close dummy
# hostile
scoreboard objectives add __angry dummy

scoreboard objectives add __feared dummy
# duration until initial feared sound can be played again
scoreboard objectives add __feared_init dummy

# ------ #

# player holding curse cookie detection
scoreboard objectives add __holding_curse_cookie1 dummy
scoreboard objectives add __holding_curse_cookie2 dummy
scoreboard objectives add __holding_curse_cookie3 dummy
# curse cookie effect durations
scoreboard objectives add __curse_cookie1_effect dummy
scoreboard objectives add __curse_cookie2_effect dummy
scoreboard objectives add __curse_cookie3_effect dummy

# player holding resurrection abomination detection
scoreboard objectives add __holding_res_abom1 dummy
scoreboard objectives add __holding_res_abom2 dummy
scoreboard objectives add __holding_res_abom3 dummy
# resurrection abomination effect timers (1 until midnight. increases by 1 every second at midnight)
scoreboard objectives add __res_abom_effect1 dummy
scoreboard objectives add __res_abom_effect2 dummy
scoreboard objectives add __res_abom_effect3 dummy

# player resurrected mark
scoreboard objectives add __resurrected1 dummy
scoreboard objectives add __resurrected2 dummy
scoreboard objectives add __resurrected3 dummy

# resurrection abomination side effect durations
scoreboard objectives add __15s_cd dummy
scoreboard objectives add __shiver dummy
scoreboard objectives add __panic dummy

# smoke effect mark
scoreboard objectives add __smoke dummy
# strike effect mark
scoreboard objectives add __strike dummy

# values used for function arguments, return values, or arithmetic
scoreboard objectives add __temp1 dummy
scoreboard objectives add __temp2 dummy
scoreboard objectives add __temp3 dummy
scoreboard objectives add __result1 dummy
scoreboard objectives add __result2 dummy

# global timers
schedule function __:timer/1t 1t
schedule function __:timer/2t 2t
schedule function __:timer/10t 10t
schedule function __:timer/1s 1s
schedule function __:timer/10s 10s
