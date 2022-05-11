# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applys on death effect to the executing player

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

# max health
execute as @s[scores={death_curse_level=2..3}] run attribute @s minecraft:generic.max_health base set 18
execute as @s[scores={death_curse_level=4..5}] run attribute @s minecraft:generic.max_health base set 16
execute as @s[scores={death_curse_level=6..7}] run attribute @s minecraft:generic.max_health base set 14
execute as @s[scores={death_curse_level=8..9}] run attribute @s minecraft:generic.max_health base set 12
execute as @s[scores={death_curse_level=10..}] run attribute @s minecraft:generic.max_health base set 10
# fixes hidden hp when reducing max hp
effect give @s minecraft:instant_health

# sounds
execute as @s[scores={death_curse_level=1..3}] run playsound minecraft:ambient.crimson_forest.mood ambient @s ~ ~1000 ~ 100000
execute as @s[scores={death_curse_level=4..6}] run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~1000 ~ 100000
execute as @s[scores={death_curse_level=7..}] run playsound minecraft:ambient.cave ambient @s ~ ~1000 ~ 100000

# particles
scoreboard players set @s death_curse_increase 1
scoreboard players operation @s death_curse_increase_end = global death_curse_effect_timer
scoreboard players add @s death_curse_increase_end 10
