# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# applies to the executor:
# 6s nausea
# 5s weakness
# 5s mining fatigue
# 5s slowness
# plays medium sound

effect give @s minecraft:nausea 6 0 true
effect give @s minecraft:weakness 5 0 true
effect give @s minecraft:mining_fatigue 5 0 true
effect give @s minecraft:slowness 5 0 true

playsound minecraft:ambient.basalt_deltas.additions ambient @s ~ ~10000 ~ 0 1 1

# enable particle effect
scoreboard players set @s death_curse_fatigue 1
# set particle effect end time
scoreboard players operation @s death_curse_fatigue_end = global death_curse_effect_timer
scoreboard players add @s death_curse_fatigue_end 5
