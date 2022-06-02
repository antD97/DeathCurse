# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# For every curse cookie 1...
# - increment time alive
# - attempt to summon curse 2 cookies

# increment time alive
#!sb @s __time_alive += 1

# 10s till ready particle effect 
execute as @s[scores={__time_alive=1}] run function __:timer/10s/all_items/curse_cookie1/soon_particle
{
    #!5x
    execute at @s run particle ambient_entity_effect ~ ~0.125 ~ 170 0 0 255 0
}

# if time alive is old enough
execute as @s[scores={__time_alive=2..}] run function __:timer/10s/all_items/curse_cookie1/old_cookie
{
    # store the stack size in global __temp1
    execute store result score global __temp1 run data get entity @s Item.Count

    # __temp2 = original stack count % 4
    #!sb global __temp2 = global __temp1
    #!sb global __temp3 = 4
    #!sb global __temp2 %= global __temp3

    # __temp1 = original stack count / 4
    #!sb global __temp1 /= global __temp3

    # if time alive is 2+ and has 4+ stack count...
    execute if score global __temp1 matches 1.. run function __:timer/10s/all_items/curse_cookie1/create_curse_cookie2
    {
        # set the original stack count to __temp2
        execute store result entity @s Item.Count byte 1 run scoreboard players get global __temp2

        # summon a cookie2 stack
        execute at @s run summon item ~ ~ ~ {Tags:["__new"],Item:{id:"minecraft:cookie",Count:1,tag:{display:{Name:'{"text":"Curse Cookie II","color":"#440000","bold":true,"italic":true}',Lore:['{"text":"-3 Death Curse Levels for 30m"}']},CustomModelData:379304}}}
        execute as @e[type=item,tag=__new] run function __:timer/10s/all_items/curse_cookie1/new_cookie2
        {
            # modify new cookie stack to have __temp1 count
            execute store result entity @s Item.Count byte 1 run scoreboard players get global __temp1
            tag @s remove __new
        }

        #!20x
        execute at @s run particle minecraft:entity_effect ~ ~0.125 ~ 85 0 0 255 0
        execute at @s run playsound minecraft:block.respawn_anchor.charge ambient @a
    }
}
