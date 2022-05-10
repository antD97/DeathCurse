# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# creates particle effects for player executors

# curse increase
execute as @s[scores={death_curse_increase=1}] positioned as @s run function death_curse:particle/curse_increase

# curse decrease
execute as @s[scores={death_curse_decrease=1}] positioned as @s run function death_curse:particle/curse_decrease

# fatigue 1
execute as @s[scores={death_curse_fatigue1=1}] positioned as @s run function death_curse:particle/fatigue1

# cloaking
execute as @s[scores={death_curse_cloaking=1}] positioned as @s run function death_curse:particle/cloaking

# fatigue 2
execute as @s[scores={death_curse_fatigue2=1}] positioned as @s run function death_curse:particle/fatigue2

# poison
execute as @s[scores={death_curse_poison=1}] positioned as @s run function death_curse:particle/poison

# fatigue 3
execute as @s[scores={death_curse_fatigue3=1}] positioned as @s run function death_curse:particle/fatigue3

# mob aggression
execute as @s[scores={death_curse_mob_aggression=2}] positioned as @s run particle minecraft:smoke ~ ~0.45 ~ 0.15 0.225 0.15 0 1
