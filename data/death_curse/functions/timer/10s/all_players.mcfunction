# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# executed on every player every 10s
# returns:
#   global __result1: if any player is under any res. abom. effect, set to 1

# intro message
#!sb @s __introduced += 0
execute as @s[scores={__introduced=0}] run function __:timer/10t/all_players/intro_trigger
