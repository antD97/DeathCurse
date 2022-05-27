# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 1s (20t) timer
schedule function __:timer/1s 1s

# curse
execute as @a[scores={__time_alive=1..}] run function __:curse/tick

# slow curse cookie particle effects
execute as @a[scores={__curse_cookie1_effect=1..}] run execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 1
execute as @a[scores={__curse_cookie2_effect=1..}] run execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 2
execute as @a[scores={__curse_cookie3_effect=1..}] run execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~ ~ 0 0 0 1 3

# curse effect timer
#!sb global __effect_timer += 1

# check player particle durations
execute as @a run function __:player/check_particle

# play heartbeat sounds
execute as @a run execute positioned as @s run function __:player/heartbeat

# check hostile mob particle durations
#!find=blaze
#!replace=blaze|creeper|drowned|elder_guardian|endermite|evoker|ghast|guardian|hoglin|husk\
    #! |illusioner|magma_cube|phantom|piglin_brute|pillager|ravager|shulker|silverfish|skeleton\
    #! |slime|stray|vex|vindicator|witch|wither|wither_skeleton|zoglin|zombie|zombie_villager
execute as @e[type=minecraft:blaze] run function __:hostile/check_particle

#!find=cave_spider
#!replace=cave_spider|enderman|piglin|spider|zombified_piglin
execute as @e[type=minecraft:cave_spider] run function __:hostile/check_particle

# if someone ate a res. abom...
#!find=__res_abom_effect1
#!replace=__res_abom_effect1|__res_abom_effect2|__res_abom_effect3
execute if entity @a[scores={__res_abom_effect1=1..}] run function __:timer/1s/disable_sleep
{
    # apply resurrection event effects at midnight

    # store time in global __result1
    execute store result score global __result1 run time query daytime
    execute if score global __result1 matches 18000 as @a[scores={__res_abom_effect1=1..}] run function __:player/resurrection_event1
    execute store result score global __result1 run time query daytime
    execute if score global __result1 matches 18000 as @a[scores={__res_abom_effect2=1..}] run function __:player/resurrection_event2
    execute store result score global __result1 run time query daytime
    execute if score global __result1 matches 18000 as @a[scores={__res_abom_effect3=1..}] run function __:player/resurrection_event3

    # disable sleeping
    execute as @a[scores={__sleeping=1}] run function __:timer/1s/nightmare
    {
        title @s actionbar {"text":"Nightmares prevent you from sleeping","italic":true}
        effect give @s minecraft:wither 2 0 true

        # fatigue 3 effect without hunger
        effect give @s minecraft:nausea 7 0 true
        effect give @s minecraft:weakness 5 0 true
        effect give @s minecraft:mining_fatigue 5 1 true
        effect give @s minecraft:slowness 5 1 true
        effect give @s minecraft:blindness 5 0 true

        # fear particle & sound effect
        scoreboard players set @s __feared 1
        scoreboard players operation @s __feared_end = global __effect_timer
        scoreboard players add @s __feared_end 10
    }
}
#!sb @a __sleeping = 0

execute as @a run function __:advancement_check
{
    # check for ambonination 1s & 2s
    execute store result score global __result1 run clear @s beetroot_soup{display:{Name:'[{"text":"Re","color":"#440000","bold":true,"italic":true},{"text":"su","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"rrection Abomina","color":"#440000","bold":true,"italic":true},{"text":"t","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"ion II","color":"#440000","bold":true,"italic":true}]',Lore:['[{"text":"-3 D"},{"text":"e","obfuscated":true},{"text":"aths"}]']},CustomModelData:379307,Enchantments:[{}]} 0
    execute if score global __result1 matches 1.. run advancement grant @s only __:abomination
    execute store result score global __result1 run clear @s beetroot_soup{display:{Name:'[{"text":"R","color":"#000000","bold":true,"italic":true},{"text":"es","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"urre","color":"#000000","bold":true,"italic":true},{"text":"c","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"tion Abom","color":"#000000","bold":true,"italic":true},{"text":"i","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"nati","color":"#000000","bold":true,"italic":true},{"text":"o","color":"black","bold":true,"italic":true,"obfuscated":true},{"text":"n III","color":"#000000","bold":true,"italic":true}]',Lore:['[{"text":"-11 Dea"},{"text":"th","obfuscated":true},{"text":"s"}]']},CustomModelData:379308,Enchantments:[{}]} 0
    execute if score global __result1 matches 1.. run advancement grant @s only __:abomination
}
