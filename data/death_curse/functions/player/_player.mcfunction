# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# Randomizes the executor's effect offsets
#! __:player/randomize_effect_offsets
#! {
    # 1800s (30m) is the LCM of all the timers 30s, 45s, 1m40s (100s), 2m (60s), 3m (180s), & 5m (300s)
    
    # offset 1
    #!sb global __arg1 = 1800
    function __:util/random
    #!sb @s __effect_offset1 = global __result1

    # offset 2
    #!sb global __arg1 = 1800
    function __:util/random
    #!sb @s __effect_offset2 = global __result1

    # offset 3
    #!sb global __arg1 = 1800
    function __:util/random
    #!sb @s __effect_offset3 = global __result1
    
    # offset 4
    #!sb global __arg1 = 1800
    function __:util/random
    #!sb @s __effect_offset4 = global __result1
#! }

# Gives a death curse book to the executor
#! __:player/give_book
#! {
    #!sb @s __n_books += 1
    function __:item/book

    # sass
    tellraw @s[scores={__n_books=1}] {"text":"There you go!"}
    tellraw @s[scores={__n_books=2}] {"text":"What? You lose it already?"}
    tellraw @s[scores={__n_books=3..63}] {"text":"Again? Seriously?"}

    tellraw @s[scores={__n_books=64}] [[""],{"text":"Gah!","color": "#aa0000"},{"text":" Congrats, you've taken a "},{"text":"stack","italic":true},{"text":" of my books. You want a cookie or something?"}]
    execute as @s[scores={__n_books=64}] run function __:item/curse_cookie1

    tellraw @s[scores={__n_books=65..127}] {"text":"Again? Seriously?"}
    tellraw @s[scores={__n_books=128}] ["",{"text":"What?","color":"#aa0000"},{"text":" Another","italic":true},{"text":" stack of books? Surely you're just doing this for the cookies."}]
    execute as @s[scores={__n_books=128}] run function __:item/curse_cookie2

    # if you're ready this, yes, there is no cookie 3 :)
    tellraw @s[scores={__n_books=129..}] {"text":"Again? Seriously?"}
#! }

# Plays heartbeat sounds for the executing player
#! __:player/heartbeat
{
    # find fear_end - effect_timer
    #!sb global __result1 = @s __feared_end
    #!sb global __result1 -= global __effect_timer

    # play fast heartbeat for the first 5s and slow heartbeat for the last 5s
    execute if score global __result1 matches 0..4 positioned as @s run playsound minecraft:death_curse.slow_heartbeat ambient @s ~ ~1000 ~ 100000
    execute if score global __result1 matches 5..9 positioned as @s run playsound minecraft:death_curse.fast_heartbeat ambient @s ~ ~1000 ~ 100000

    # initial sound
    #!sb @s __feared_init += 0
    execute if score global __result1 matches 9 run execute as @s[scores={__feared_init=0}] positioned as @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare ambient @s ~ ~1000 ~ 100000
    execute if score global __result1 matches 9 run execute as @s[scores={__feared_init=0}] run scoreboard players set @s __feared_init 1

    # reset feared_init 10s after the effect ends
    execute if score global __result1 matches ..-10 run scoreboard players set @s __feared_init 0
}

# Introduces the player to the datapack and initializes some values
#! __:player/intro
{
    # prints the death curse introduction message to the executor
    tellraw @s  ["",{"text":"This world has been plagued with the "},{"text":"Death Curse","color":"dark_red"},{"text":"! Click "},{"text":"[here]","color":"#00FFFF","clickEvent":{"action":"run_command","value":"/trigger __give_book"}},{"text":" for an explanation book."}]

    # set player id if not set
    #!sb @s __id += 0
    execute if score @s __id matches 0 run function __:player/assign_id
    {
        # increment id counter & assign an id
        #!sb global __id += 1
        #!sb @s __id = global __id
    }

    # randomize effect offsets if the player needs it
    #!find=1
    #!replace=1|2|3|4
    #!sb @s __effect_offset1 += 0
    execute as @s[scores={__effect_offset1=0,__effect_offset2=0,__effect_offset3=0,__effect_offset4=0}] run function __:player/randomize_effect_offsets

    # if hp score doesn't have a value yet, refresh it by giving the player some instant health
    #!sb global __arg1 = 0
    execute if score @s __hp matches 0..3000 run scoreboard players set global __arg1 1
    execute if score global __arg1 matches 0 run effect give @s instant_health

    # mark as introduced
    #!sb @s __introduced = 1
}
