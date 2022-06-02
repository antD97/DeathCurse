# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# play fast heartbeat for the first 5s and slow heartbeat for the last 5s
execute as @s[scores={__feared=1..5}] at @s run playsound death_curse.slow_heartbeat ambient @s ~ ~10000 ~ 100000000 1 1
execute as @s[scores={__feared=6..10}] at @s run playsound death_curse.fast_heartbeat ambient @s ~ ~10000 ~ 100000000 1 1

# initial sound
execute as @s[scores={__feared=10,__feared_init=0}] at @s run playsound ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~10000 ~ 100000000 1 1

# reset feared init duration
execute as @s[scores={__feared=10}] run scoreboard players set @s __feared_init 20
