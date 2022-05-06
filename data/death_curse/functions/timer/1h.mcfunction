# 1h (72000t) timer
schedule function death_curse:timer/10t 10t

# reshuffle player effect cooldowns
execute as @a[scores={death_curse_level=1..}] run function death_curse:player/reshuffle_cd
