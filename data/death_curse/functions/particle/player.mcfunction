# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# creates particle effects for player executors

# curse increase
execute as @s[scores={death_curse_increase=1}] positioned as @s run function death_curse:particle/curse_increase

# curse decrease
execute as @s[scores={death_curse_decrease=1}] positioned as @s run function death_curse:particle/curse_decrease

# fatigue
execute as @s[scores={death_curse_fatigue=1}] positioned as @s run function death_curse:particle/fatigue

# cloaking
execute as @s[scores={death_curse_cloaking=1}] positioned as @s run function death_curse:particle/cloaking

# poison
execute as @s[scores={death_curse_poison=1}] positioned as @s run function death_curse:particle/poison
