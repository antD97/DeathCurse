# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

function __:timer/1s/all_hostiles/manage_effects
{
    #!find=__cloak
    #!replace=__cloak|__angry
    execute as @s[scores={__cloak=1..}] run scoreboard players remove @s __cloak 1
}
