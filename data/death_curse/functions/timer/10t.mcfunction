# 10t (0.5s) timer
schedule function death_curse:timer/10t 10t

# run function curse_title for any player who just died
execute as @a[scores={death_curse_time_alive=1..10, death_curse_level=1..}] run function death_curse:player/curse_title

# intro trigger
execute as @a[scores={death_curse_intro=1..}] run function death_curse:player/print_intro
scoreboard players enable @a death_curse_intro
scoreboard players set @a death_curse_intro 0

# give death book trigger
execute as @a[scores={death_curse_give_book=1..}] run function death_curse:player/give_book
scoreboard players enable @a death_curse_give_book
scoreboard players set @a death_curse_give_book 0
