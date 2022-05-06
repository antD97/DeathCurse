# if ever using a target selector @a[scores={deathCount=0}], be sure to add 0 to all the players your checking first
scoreboard objectives add death_curse_level deathCount
# scoreboard objectives add death_curse_just_died deathCount
scoreboard objectives add death_curse_time_alive minecraft.custom:time_since_death

# result value of function death_curse:_rng
scoreboard objectives add death_curse_rng dummy
# temporary value used for function arguments or arithmetic
scoreboard objectives add death_curse_arg1 dummy

# trigger for the death curse introduction message
scoreboard objectives add death_curse_intro trigger
# trigger to give the player a death curse book
scoreboard objectives add death_curse_give_book trigger
# keeps track of how many times the player has been given a death curse book
scoreboard objectives add death_curse_n_books dummy

# scoreboard effect cooldown timers (seconds)
# scoreboard objectives add 30s_cd dummy    can be done in 2m
# scoreboard objectives add 45s_cd dummy    can be done in 3m
# scoreboard objectives add 1m40s_cd dummy  can be done in 5m
scoreboard objectives add death_curse_2m_cd dummy
scoreboard objectives add death_curse_3m_cd dummy
scoreboard objectives add death_curse_5m_cd dummy

# global timers
function death_curse:timer/10t
function death_curse:timer/1s
function death_curse:timer/1h

tellraw @a {"text": "Loaded Death Curse.", "color": "#AA0000"}
