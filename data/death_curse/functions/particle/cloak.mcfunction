# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# creates a black cloud particle effect around the executor

# used (mob height)/4 for y delta, but it's not perfect
# skipped underwater mobs as they don't show particles correctly
# skipped illusioner because cloak makes them easier to fight
# skipped shulker cause the effect wasn't great
execute as @s[type=minecraft:blaze] positioned as @s run particle minecraft:squid_ink ~ ~0.9 ~ 0 0.45 0 0 3
execute as @s[type=minecraft:creeper] positioned as @s run particle minecraft:squid_ink ~ ~0.85 ~ 0 0.425 0 0 3
# execute as @s[type=minecraft:drowned] positioned as @s run particle minecraft:squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
# execute as @s[type=minecraft:elder_guardian] positioned as @s run particle minecraft:squid_ink ~ ~0.99875 ~ 0 0.499375 0 0 3
execute as @s[type=minecraft:endermite] positioned as @s run particle minecraft:squid_ink ~ ~0 ~ 0.01 0.01 0.01 0 1
execute as @s[type=minecraft:evoker] positioned as @s run particle minecraft:squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
execute as @s[type=minecraft:ghast] positioned as @s run particle minecraft:squid_ink ~ ~2 ~ 1 1 1 0 50
# execute as @s[type=minecraft:guardian] positioned as @s run particle minecraft:squid_ink ~ ~999 ~ 0 999 0 0 3
execute as @s[type=minecraft:hoglin] positioned as @s run function death_curse:particle/cloak/hoglin
execute as @s[type=minecraft:husk] positioned as @s run function death_curse:particle/cloak/zombie
# execute as @s[type=minecraft:illusioner] positioned as @s run particle minecraft:squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
execute as @s[type=minecraft:magma_cube] positioned as @s run function death_curse:particle/cloak/slime
execute as @s[type=minecraft:phantom] positioned as @s run particle minecraft:squid_ink ~ ~0.25 ~ 0.225 0.125 0.225 0 2
execute as @s[type=minecraft:piglin_brute] positioned as @s run particle minecraft:squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
execute as @s[type=minecraft:pillager] positioned as @s run particle minecraft:squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
execute as @s[type=minecraft:ravager] positioned as @s run particle minecraft:squid_ink ~ ~1.1 ~ 0.4875 0.55 0.4875 0 6
# execute as @s[type=minecraft:shulker] positioned as @s run particle minecraft:squid_ink ~ ~0.5 ~ 0.25 0.25 0.25 0 3
execute as @s[type=minecraft:silverfish] positioned as @s run particle minecraft:squid_ink ~ ~0 ~ 0.01 0.01 0.01 0 1
execute as @s[type=minecraft:skeleton] positioned as @s run particle minecraft:squid_ink ~ ~0.995 ~ 0 0.4975 0 0 3
execute as @s[type=minecraft:slime] positioned as @s run function death_curse:particle/cloak/slime
execute as @s[type=minecraft:stray] positioned as @s run particle minecraft:squid_ink ~ ~0.995 ~ 0 0.4975 0 0 3
execute as @s[type=minecraft:vex] positioned as @s run particle minecraft:squid_ink ~ ~0.4 ~ 0 0.2 0 0 1
execute as @s[type=minecraft:vindicator] positioned as @s run particle minecraft:squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
execute as @s[type=minecraft:witch] positioned as @s run particle minecraft:squid_ink ~ ~0.975 ~ 0 0.4875 0 0 3
execute as @s[type=minecraft:wither_skeleton] positioned as @s run particle minecraft:squid_ink ~ ~1.2 ~ 0 0.6 0 0 4
execute as @s[type=minecraft:zoglin] positioned as @s run function death_curse:particle/cloak/zoglin
execute as @s[type=minecraft:zombie] positioned as @s run function death_curse:particle/cloak/zombie
execute as @s[type=minecraft:zombie_villager] positioned as @s run function death_curse:particle/cloak/zombie

execute as @s[type=minecraft:cave_spider] positioned as @s run particle minecraft:squid_ink ~ ~0.25 ~ 0.175 0.125 0.175 0 2
execute as @s[type=minecraft:enderman] positioned as @s run particle minecraft:squid_ink ~ ~1.45 ~ 0 0.725 0 0 5
execute as @s[type=minecraft:piglin] positioned as @s run function death_curse:particle/cloak/zombie
execute as @s[type=minecraft:spider] positioned as @s run particle minecraft:squid_ink ~ ~0.45 ~ 0.35 0.0 0.35 0 4
execute as @s[type=minecraft:zombified_piglin] positioned as @s run function death_curse:particle/cloak/zombie

# additional cloak level color 
# curse level 3 #880000 red
execute as @s[scores={death_curse_cloak_level=3}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 136 0 0 255 0
# curse level 4 #770000 red
execute as @s[scores={death_curse_cloak_level=4}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 119 0 0 255 0
# curse level 5 #660000 red
execute as @s[scores={death_curse_cloak_level=5}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 102 0 0 255 0
# curse level 6 #550000 red
execute as @s[scores={death_curse_cloak_level=6}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 85 0 0 255 0
# curse level 7 #440000 red
execute as @s[scores={death_curse_cloak_level=7}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 68 0 0 255 0
# curse level 8 #330000 red
execute as @s[scores={death_curse_cloak_level=8}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 51 0 0 255 0
# curse level 9 #220000 red
execute as @s[scores={death_curse_cloak_level=9}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 34 0 0 255 0
# curse level 10+ #000000 red
execute as @s[scores={death_curse_cloak_level=10..}] positioned as @s run particle minecraft:entity_effect ~ ~ ~ 1 0 0 255 0
