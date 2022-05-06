# 1s (20t) timer
schedule function death_curse:timer/1s 1s

# intro message
execute as @a[tag=!death_curse_introduced] run function death_curse:player/print_intro

# curse
execute as @a[scores={death_curse_level=1..}] run function death_curse:curse/tick
