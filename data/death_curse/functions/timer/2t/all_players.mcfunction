# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# executed on every player every 2t (0.1s)

# apply particle effects to players
function __:timer/2t/all_players/particles

# calculate curse level for each player
function __:timer/2t/all_players/calc_level

# check if eaten a curse cookie & apply effects
function __:timer/2t/all_players/curse_cookie

# check if eaten a curse cookie & apply effects
function __:timer/2t/all_players/res_abom

# shiver effect
execute as @s[scores={__shiver=1..}] run function __:timer/2t/all_players/shiver_effect
{
    #!sb global __temp1 = 4
    function __:util/random
    execute at @s if score global __result1 matches 0 run tp @s ~ ~ ~ ~0.2 ~
    execute at @s if score global __result1 matches 1 run tp @s ~ ~ ~ ~-0.2 ~
    execute at @s if score global __result1 matches 2 run tp @s ~ ~ ~ ~ ~0.2
    execute at @s if score global __result1 matches 3 run tp @s ~ ~ ~ ~ ~-0.2
}

# strike with lightning only at midnight while alive
execute store result score global __result1 run time query daytime
execute if score global __result1 matches 18000 as @a[scores={__strike=1..,__time_alive=1..}] run execute at @s run summon lightning_bolt
