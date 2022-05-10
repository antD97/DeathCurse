# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# displays the death curse level as a title to the executor

# titles
title @s times 100 50 100
execute as @s[scores={death_curse_level=1}] run function death_curse:player/title/1
execute as @s[scores={death_curse_level=2}] run function death_curse:player/title/2
execute as @s[scores={death_curse_level=3}] run function death_curse:player/title/3
execute as @s[scores={death_curse_level=4}] run function death_curse:player/title/4
execute as @s[scores={death_curse_level=5}] run function death_curse:player/title/5
execute as @s[scores={death_curse_level=6}] run function death_curse:player/title/6
execute as @s[scores={death_curse_level=7}] run function death_curse:player/title/7
execute as @s[scores={death_curse_level=8}] run function death_curse:player/title/8
execute as @s[scores={death_curse_level=9}] run function death_curse:player/title/9
execute as @s[scores={death_curse_level=10..}] run function death_curse:player/title/10

# sounds
execute as @s[scores={death_curse_level=1..3}] run playsound minecraft:ambient.crimson_forest.mood ambient @s ~ ~10000 ~ 10000
execute as @s[scores={death_curse_level=4..6}] run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~10000 ~ 10000
execute as @s[scores={death_curse_level=7..}] run playsound minecraft:ambient.cave ambient @s ~ ~10000 ~ 10000

# particles
scoreboard players set @s death_curse_increase 1
scoreboard players operation @s death_curse_increase_end = global death_curse_effect_timer
scoreboard players add @s death_curse_increase_end 10
