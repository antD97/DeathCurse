# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# decrease cooldown/effect timers and reset/apply effects on cooldown
function __:timer/1s/all_players/manage_effects

# apply effects that use the 1s timer
function __:timer/1s/all_players/effects
{
    execute as @s[scores={__curse_cookie1_effect=1..}] run function __:timer/1s/all_players/effects/curse_cookie1
    execute as @s[scores={__curse_cookie2_effect=1..}] run function __:timer/1s/all_players/effects/curse_cookie2
    execute as @s[scores={__curse_cookie3_effect=1..}] run function __:timer/1s/all_players/effects/curse_cookie3

    execute as @s[scores={__mob_aggression=1..}] run function __:timer/1s/all_players/effects/apply_angry

    execute as @s[scores={__feared=1..}] run function __:timer/1s/all_players/effects/heartbeat
}

# check for ambonination 1s & 2s for advancements
execute store result score global __result1 run clear @s beetroot_soup{display:{Name:'[{"text":"Re","color":"#440000","bold":true,"italic":true},{"text":"su","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"rrection Abomina","color":"#440000","bold":true,"italic":true},{"text":"t","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"ion II","color":"#440000","bold":true,"italic":true}]',Lore:['[{"text":"-3 D"},{"text":"e","obfuscated":true},{"text":"aths"}]']},CustomModelData:379307,Enchantments:[{}]} 0
execute if score global __result1 matches 1.. run advancement grant @s only __:abomination
execute store result score global __result1 run clear @s beetroot_soup{display:{Name:'[{"text":"R","color":"#000000","bold":true,"italic":true},{"text":"es","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"urre","color":"#000000","bold":true,"italic":true},{"text":"c","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"tion Abom","color":"#000000","bold":true,"italic":true},{"text":"i","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"nati","color":"#000000","bold":true,"italic":true},{"text":"o","color":"black","bold":true,"italic":true,"obfuscated":true},{"text":"n III","color":"#000000","bold":true,"italic":true}]',Lore:['[{"text":"-11 Dea"},{"text":"th","obfuscated":true},{"text":"s"}]']},CustomModelData:379308,Enchantments:[{}]} 0
execute if score global __result1 matches 1.. run advancement grant @s only __:abomination

# resurrection event effects at midnight
execute store result score global __result1 run time query daytime
execute if score global __result1 matches 18000 as @s[scores={__res_abom_effect1=1..}] run function __:timer/1s/all_players/resurrection_event1

execute store result score global __result1 run time query daytime
execute if score global __result1 matches 18000 as @s[scores={__res_abom_effect2=1..}] run function __:timer/1s/all_players/resurrection_event2

execute store result score global __result1 run time query daytime
execute if score global __result1 matches 18000 as @s[scores={__res_abom_effect3=1..}] run function __:timer/1s/all_players/resurrection_event3

# ------------------- return from end dimension max health attribute reset fix ------------------- #

# set the max health attribute
execute if score @s __curse_level matches ..1 run attribute @s generic.max_health base set 20
execute if score @s __curse_level matches 2..3 run attribute @s generic.max_health base set 18
execute if score @s __curse_level matches 4..5 run attribute @s generic.max_health base set 16
execute if score @s __curse_level matches 6..7 run attribute @s generic.max_health base set 14
execute if score @s __curse_level matches 8..9 run attribute @s generic.max_health base set 12
execute if score @s __curse_level matches 10.. run attribute @s generic.max_health base set 10

# fixes hidden hp when reducing max hp
execute store result score global __temp1 run attribute @s generic.max_health get
#!sb global __temp1 -= @s __hp
execute if score global __temp1 matches ..-1 run effect give @s instant_health
