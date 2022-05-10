# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

particle minecraft:squid_ink ~ ~0.9 ~ 0.15 0.45 0.15 0 3
# TODO remove: another option, just the bottom half. might want to increase duration in cloaking_effect function
# particle minecraft:squid_ink ~ ~0.45 ~ 0.15 0.225 0.15 0 1

# curse level 3 #880000 red
execute as @s[scores={death_curse_level=3}] run particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
# curse level 4 #770000 red
execute as @s[scores={death_curse_level=4}] run particle minecraft:entity_effect ~ ~ ~ 119 0 0 255 0
# curse level 5 #660000 red
execute as @s[scores={death_curse_level=5}] run particle minecraft:entity_effect ~ ~ ~ 102 0 0 255 0
# curse level 6 #550000 red
execute as @s[scores={death_curse_level=6}] run particle minecraft:entity_effect ~ ~ ~ 85 0 0 255 0
# curse level 7 #440000 red
execute as @s[scores={death_curse_level=7}] run particle minecraft:entity_effect ~ ~ ~ 68 0 0 255 0
# curse level 8 #330000 red
execute as @s[scores={death_curse_level=8}] run particle minecraft:entity_effect ~ ~ ~ 51 0 0 255 0
# curse level 9 #220000 red
execute as @s[scores={death_curse_level=9}] run particle minecraft:entity_effect ~ ~ ~ 34 0 0 255 0
# curse level 10+ #000000 red
execute as @s[scores={death_curse_level=10..}] run particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0

