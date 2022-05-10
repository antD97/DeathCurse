# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies to the executor:
# 7s nausea
# 5s weakness II
# 5s mining fatigue II
# 5s slowness II
# 3s blindness
# 10s hunger X
# plays medium sound

effect give @s minecraft:nausea 7 0 true
effect give @s minecraft:weakness 5 1 true
effect give @s minecraft:mining_fatigue 5 1 true
effect give @s minecraft:slowness 5 1 true
effect give @s minecraft:blindness 3 0 true
effect give @s minecraft:hunger 10 9 true

playsound minecraft:ambient.warped_forest.mood ambient @s ~ ~10000 ~ 10000

# enable particle effect
scoreboard players set @s death_curse_fatigue3 1
# set particle effect end time
scoreboard players operation @s death_curse_fatigue3_end = global death_curse_effect_timer
scoreboard players add @s death_curse_fatigue3_end 5
