# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# plays heart beatsound to the executor if they are feared (be sure to be positioned as the executor)

# find fear_end - effect_timer
scoreboard players operation global death_curse_result1 = @s death_curse_feared_end
scoreboard players operation global death_curse_result1 -= global death_curse_effect_timer

# remove angry mark score if timer is up
execute if score global death_curse_result1 matches 0..4 run playsound minecraft:death_curse.slow_heartbeat ambient @s ~ ~1000 ~ 100000
execute if score global death_curse_result1 matches 5..9 run playsound minecraft:death_curse.fast_heartbeat ambient @s ~ ~1000 ~ 100000

# initial sound
scoreboard players add @s death_curse_feared_init 0
execute if score global death_curse_result1 matches 9 run execute as @s[scores={death_curse_feared_init=0}] run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~1000 ~ 100000
execute if score global death_curse_result1 matches 9 run execute as @s[scores={death_curse_feared_init=0}] run scoreboard players set @s death_curse_feared_init 1

# reset feared_init 10s after the effect ends
execute if score global death_curse_result1 matches ..-10 run scoreboard players set @s death_curse_feared_init 0
