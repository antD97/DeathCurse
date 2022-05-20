# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 10t (0.5s) timer
schedule function __:timer/10t 10t

# run function curse_title for any player who just died
execute as @a[scores={__time_alive=1..10, __deaths=1..}] run function __:player/on_death

# intro trigger
execute as @a[scores={__intro=1..}] run function __:player/intro
#!sb enable @a __intro
#!sb @a __intro = 0

# give death book trigger
execute as @a[scores={__give_book=1..}] run function __:player/give_book
#!sb enable @a __give_book
#!sb @a __give_book = 0
