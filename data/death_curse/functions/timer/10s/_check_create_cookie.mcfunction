# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# For every curse cookie 1...
# - increment time alive
# - attempt to summon curse 2 cookies
#! __:timer/10s/check_create_curse_cookie1
{
    # increment time alive
    #!sb @s __time_alive += 1

    # 10s till ready particle effect 
    execute if score @s __time_alive matches 1 run function __:particle/curse_cookie1_soon
    {
        #!5x
        execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~0.125 ~ 170 0 0 255 0
    }

    # if time alive is old enough, store the stack size in global __result
    execute if score @s __time_alive matches 2.. store result score global __result1 run data get entity @s Item.Count

    # __result2 = original stack count % 4
    #!sb global __result2 = global __result1
    #!sb global __arg1 = 4
    #!sb global __result2 %= global __arg1

    # __result1 = original stack count / 4
    #!sb global __result1 /= global __arg1

    # if time alive is 2+ and has 4+ stack count...
    execute if score @s __time_alive matches 2.. run execute if score global __result1 matches 1.. run function __:timer/10s/summon_curse_cookie2s
    {
        # set the original stack count to __result2
        execute store result entity @s Item.Count byte 1 run scoreboard players get global __result2

        # summon a cookie2 stack
        execute positioned as @s run summon minecraft:item ~ ~ ~ {Tags:["__new_cookies"],Item:{id:"minecraft:cookie",Count:1,tag:{display:{Name:'{"text":"Curse Cookie II","color":"#440000","bold":true,"italic":true}',Lore:['{"text":"-2 Death Curse Levels for 30m"}']},CustomModelData:379304}}}
        execute as @e[type=item,tag=__new_cookies] run function __:timer/10s/new_cookie2
        {
            # modify new cookie stack to have __result1 count
            execute store result entity @s Item.Count byte 1 run scoreboard players get global __result1
            tag @s remove __new_cookies
        }

        #!20x
        execute positioned as @s run particle minecraft:entity_effect ~ ~0.125 ~ 85 0 0 255 0
        execute positioned as @s run playsound minecraft:block.respawn_anchor.charge ambient @a
    }
}

# For every curse cookie 2...
# - increment time alive
# - attempt to summon curse 3 cookies
#! __:timer/10s/check_create_curse_cookie2
{
    # increment time alive
    #!sb @s __time_alive += 1

    # 10s till ready particle effect 
    execute if score @s __time_alive matches 1 run function __:particle/curse_cookie2_soon
    {
        #!5x
        execute positioned as @s run particle minecraft:ambient_entity_effect ~ ~0.125 ~ 85 0 0 255 0
    }

    # if time alive is old enough, store the stack size in global __result
    execute if score @s __time_alive matches 2.. store result score global __result1 run data get entity @s Item.Count

    # __result2 = original stack count % 4
    #!sb global __result2 = global __result1
    #!sb global __arg1 = 4
    #!sb global __result2 %= global __arg1

    # __result1 = original stack count / 4
    #!sb global __result1 /= global __arg1

    # if time alive is 2+ and has 4+ stack count...
    execute if score @s __time_alive matches 2.. run execute if score global __result1 matches 1.. run function __:timer/10s/summon_curse_cookie3s
    {
        # set the original stack count to __result2
        execute store result entity @s Item.Count byte 1 run scoreboard players get global __result2

        # summon a cookie3 stack
        execute positioned as @s run summon minecraft:item ~ ~ ~ {Tags:["__new_cookies"],Item:{id:"minecraft:cookie",Count:1,tag:{display:{Name:'{"text":"Curse Cookie III","color":"#000000","bold":true,"italic":true}',Lore:['{"text":"-3 Death Curse Levels for 30m"}']},CustomModelData:379305}}}
        execute as @e[type=item,tag=__new_cookies] run function __:timer/10s/new_cookie3
        {
            # modify new cookie stack to have __result1 count
            execute store result entity @s Item.Count byte 1 run scoreboard players get global __result1
            tag @s remove __new_cookies
        }

        #!20x
        execute positioned as @s run particle minecraft:entity_effect ~ ~0.125 ~ 1 0 0 255 0
        execute positioned as @s run playsound minecraft:block.respawn_anchor.set_spawn ambient @a
    }
}
