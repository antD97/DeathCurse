# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# executed on every hostile every 2t (0.1s)

# particles
function __:timer/2t/all_hostiles/particles

# strike with lightning only at midnight
# didn't end up using different strike levels, but the option is there
execute store result score global __result1 run time query daytime
execute if score global __result1 matches 18000 as @s[type=skeleton,scores={__strike=1..}] run execute at @s run summon lightning_bolt
execute if score global __result1 matches 18000 as @s[type=wither_skeleton,scores={__strike=1..}] run execute at @s run summon lightning_bolt
execute if score global __result1 matches 18000 as @s[type=ghast,scores={__strike=1..}] run execute at @s run summon lightning_bolt
