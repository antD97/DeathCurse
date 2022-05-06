# 1s curse tick for executors

# ensure cooldowns have a value
scoreboard players add @s death_curse_2m_cd 0
scoreboard players add @s death_curse_3m_cd 0
scoreboard players add @s death_curse_5m_cd 0

# levels
execute as @a[scores={death_curse_level=1}] run function death_curse:curse/level/1
execute as @a[scores={death_curse_level=2}] run function death_curse:curse/level/2
execute as @a[scores={death_curse_level=3}] run function death_curse:curse/level/3
execute as @a[scores={death_curse_level=4}] run function death_curse:curse/level/4
execute as @a[scores={death_curse_level=5}] run function death_curse:curse/level/5
execute as @a[scores={death_curse_level=6}] run function death_curse:curse/level/6
execute as @a[scores={death_curse_level=7}] run function death_curse:curse/level/7
execute as @a[scores={death_curse_level=8}] run function death_curse:curse/level/8
execute as @a[scores={death_curse_level=9}] run function death_curse:curse/level/9
execute as @a[scores={death_curse_level=10..}] run function death_curse:curse/level/10

# curse timers
scoreboard players add @s death_curse_2m_cd 1
scoreboard players set @s[scores={death_curse_2m_cd=120}] death_curse_2m_cd 0
scoreboard players add @s death_curse_3m_cd 1
scoreboard players set @s[scores={death_curse_3m_cd=180}] death_curse_3m_cd 0
scoreboard players add @s death_curse_5m_cd 1
scoreboard players set @s[scores={death_curse_5m_cd=300}] death_curse_5m_cd 0
