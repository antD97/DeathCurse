# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# executed on every player every 10t (0.5s)

# --- triggers --- #
execute as @s[scores={__intro=1..}] run function __:timer/10t/all_players/intro_trigger
#!sb enable @s __intro
#!sb @s __intro = 0

execute as @s[scores={__book=1..}] run function __:timer/10t/all_players/give_book_trigger
#!sb enable @s __book
#!sb @s __book = 0

execute as @s[scores={__level=1..}] run function __:timer/10t/all_players/curse_level_trigger
#!sb enable @s __level
#!sb @s __level = 0

# --- dead/respawned --- #

execute as @s[scores={__time_alive=0}] run function __:timer/10t/all_players/dead
execute as @s[scores={__time_alive=1..10}] run function __:timer/10t/all_players/respawned

# --- clear event effects if the event was started but was interrupted without a failure (player disconnect) --- #

# __result_1 = -1 if midnight otherwise it's 0+
execute store result score global __result1 run time query daytime
execute if score global __result1 matches 18000 run scoreboard players set global __result1 -1

execute if score global __result1 matches 0.. as @a[scores={__res_abom_effect1=2..}] run function __:timer/10t/all_players/clear_event1
{
    scoreboard players set @s __res_abom_effect1 1
    effect clear @s slow_falling
    effect clear @s levitation
    effect clear @s resistance
    scoreboard players set @s __strike 0
    scoreboard players set @s __smoke 0
}
execute if score global __result1 matches 0.. as @a[scores={__res_abom_effect2=2..}] run function __:timer/10t/all_players/clear_event2
{
    scoreboard players set @s __res_abom_effect2 1
    effect clear @s slow_falling
    effect clear @s levitation
    effect clear @s resistance
    scoreboard players set @s __strike 0
    scoreboard players set @s __smoke 0
}
execute if score global __result1 matches 0.. as @a[scores={__res_abom_effect3=2..}] run function __:timer/10t/all_players/clear_event3
{
    scoreboard players set @s __res_abom_effect3 1
    effect clear @s slow_falling
    effect clear @s levitation
    effect clear @s resistance

    effect clear @s invisibility

    scoreboard players set @s __strike 0
    scoreboard players set @s __smoke 0
}
