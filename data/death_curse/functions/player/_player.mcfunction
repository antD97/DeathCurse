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
    give @s[scores={__n_books=..63}] written_book{pages:['["",{"text":"\\n\\n \\u0020 \\u0020The "},{"text":"Death Curse","color":"dark_red"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020 by antD\\n\\n\\n \\u0020 \\u0020 \\u0020","color":"reset"},{"text":"\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\u2500\\n\\n\\n\\n Respawns no longer\\n \\u0020taken for granted.","color":"#686868"}]','["",{"text":"\\u2500\\u2500 Introduction \\u2500\\u2500\\n\\n  Gone are the days of respawning for free. Don\'t you know bringing someone back to life comes with a price? It\'s about time you learn.\\n  For every subsequent life you live, you will find things increasingly "},{"text":"unstable","italic":true},{"text":". ","color":"reset"},{"text":"Enjoy.","color":"dark_red"}]','{"text":"\\u2500\\u2500 Curse Relief \\u2500\\u2500\\n\\nThe only thing that will cure you of the curse is time. For every five minutes that passes, the intensity of your symptoms will reduce.\\n\\nTODO: permanent* effects"}','["",{"text":"\\u2500\\u2500\\u2500 Level I \\u2500\\u2500\\u2500\\n\\nAfter one death, you will experience:\\n\\n\\u2022 "},{"text":"light nausea","color":"dark_red"},{"text":"\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Level II \\u2500\\u2500\\u2500\\n\\nAfter two deaths, you will experience:\\n\\n\\u2022 "},{"text":"-1\\u2665","color":"dark_red"},{"text":"\\n\\u2022 ","color":"reset"},{"text":"moderate","color":"dark_red"},{"text":" nausea\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Level III \\u2500\\u2500\\u2500\\n\\nAfter three deaths, you will experience:\\n\\n\\u2022 -1\\u2665\\n\\u2022 moderate nausea\\n\\u2022 "},{"text":"light fatigue","color":"dark_red"},{"text":"\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Level IV \\u2500\\u2500\\u2500\\n\\nAfter four deaths, you will experience:\\n\\n\\u2022 "},{"text":"-2","color":"dark_red"},{"text":"\\u2665\\n\\u2022 moderate nausea\\n\\u2022 ","color":"reset"},{"text":"moderate","color":"dark_red"},{"text":" fatigue\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Level V \\u2500\\u2500\\u2500\\n\\nAfter five deaths, you will experience:\\n\\n\\u2022 -2\\u2665\\n\\u2022 moderate nausea\\n\\u2022 moderate fatigue\\n\\u2022 "},{"text":"light poison","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Level VI \\u2500\\u2500\\u2500\\n\\nAfter six deaths, you will experience:\\n\\n\\u2022 "},{"text":"-3","color":"dark_red"},{"text":"\\u2665\\n\\u2022 moderate nausea\\n\\u2022 moderate fatigue\\n\\u2022 ","color":"reset"},{"text":"moderate","color":"dark_red"},{"text":" poison\\n\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Level VII \\u2500\\u2500\\u2500\\n\\nAfter seven deaths, "},{"text":"y","obfuscated":true},{"text":"ou will experience:\\n\\n\\u2022 -3\\u2665\\n\\u2022 ","color":"reset"},{"text":"heavy","color":"dark_red"},{"text":" nausea\\n\\u2022 ","color":"reset"},{"text":"heavy","color":"dark_red"},{"text":" fatigue\\n\\u2022 moderate poison\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Level VIII \\u2500\\u2500\\u2500\\n\\nAf"},{"text":"t","obfuscated":true},{"text":"er eight deaths, you will experi","color":"reset"},{"text":"e","obfuscated":true},{"text":"nce:\\n\\n\\u2022 ","color":"reset"},{"text":"-4","color":"dark_red"},{"text":"\\u2665\\n\\u2022 heavy nausea\\n\\u2022 heavy fatigue\\n\\u2022 ","color":"reset"},{"text":"h","color":"dark_red"},{"text":"e","obfuscated":true,"color":"dark_red"},{"text":"avy","color":"dark_red"},{"text":" poison\\n\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Level IX \\u2500\\u2500\\u2500\\n\\nAft"},{"text":"er","obfuscated":true},{"text":" nine dea","color":"reset"},{"text":"t","obfuscated":true},{"text":"hs, you wi","color":"reset"},{"text":"l","obfuscated":true},{"text":"l experie","color":"reset"},{"text":"n","obfuscated":true},{"text":"ce:\\n\\n\\u2022 -4\\u2665\\n\\u2022 he","color":"reset"},{"text":"a","obfuscated":true},{"text":"vy nausea\\n\\u2022 ","color":"reset"},{"text":"intense","color":"dark_red"},{"text":" fatigue\\n\\u2022 heavy p","color":"reset"},{"text":"o","obfuscated":true},{"text":"ison\\n\\n\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 L"},{"text":"e","obfuscated":true},{"text":"vel ","color":"reset"},{"text":"X","obfuscated":true},{"text":" \\u2500\\u2500\\u2500\\n\\n","color":"reset"},{"text":"Aft","obfuscated":true},{"text":"er ","color":"reset"},{"text":"t","obfuscated":true},{"text":"en de","color":"reset"},{"text":"at","obfuscated":true},{"text":"hs, y","color":"reset"},{"text":"ou","obfuscated":true},{"text":" w","color":"reset"},{"text":"i","obfuscated":true},{"text":"ll e","color":"reset"},{"text":"xpe","obfuscated":true},{"text":"r","color":"reset"},{"text":"i","obfuscated":true},{"text":"e","color":"reset"},{"text":"nc","obfuscated":true},{"text":"e:\\n\\n\\u2022 ","color":"reset"},{"text":"-5","color":"dark_red"},{"text":"\\u2665\\n\\u2022 h","color":"reset"},{"text":"ea","obfuscated":true},{"text":"vy nau","color":"reset"},{"text":"s","obfuscated":true},{"text":"ea\\n\\u2022 inten","color":"reset"},{"text":"s","obfuscated":true},{"text":"e f","color":"reset"},{"text":"a","obfuscated":true},{"text":"tigue\\n\\u2022 h","color":"reset"},{"text":"e","obfuscated":true},{"text":"avy pois","color":"reset"},{"text":"o","obfuscated":true},{"text":"n\\n\\n\\n ","color":"reset"}]','{"text":"The following pages contains information on datapack commands.\\n "}','["",{"text":"\\u2500 Triggers (1/2) \\u2500\\n\\nTrigger commands are available to all players.\\n\\n"},{"text":"/trigger __intro","color":"#686868"},{"text":"\\n","color":"reset"},{"text":"[run command]","color":"#00FFFF","clickEvent":{"action":"run_command","value":"/trigger __book"}},{"text":"\\n\\nResends the ","color":"reset"},{"text":"Death Curse","color":"dark_red"},{"text":" book introduction message.\\n\\n ","color":"reset"}]','["",{"text":"\\u2500 Triggers (2/2) \\u2500\\n\\n"},{"text":"/trigger __book","color":"#686868"},{"text":"\\n","color":"reset"},{"text":"[run command]","color":"#00FFFF","clickEvent":{"action":"run_command","value":"/trigger __book"}},{"text":"\\n\\nAttempts to claim the original copy of the ","color":"reset"},{"text":"Death Curse","color":"dark_red"},{"text":" book.\\n ","color":"reset"}]','["",{"text":"\\u2500\\u2500\\u2500 Operators \\u2500\\u2500\\u2500\\n\\nFor commands available to operators only, try:\\n\\n"},{"text":"/functions __:functions","color":"#686868"},{"text":"\\n","color":"reset"},{"text":"[run command]","color":"#00FFFF","clickEvent":{"action":"run_command","value":"/function __:functions"}},{"text":"\\n ","color":"reset"}]','["",{"text":"This datapack was inspired by:\\n\\n\\u2022 PIGUP\'s Death Punishments datapack on planetminecrft "},{"text":"[link]","color":"#00FFFF","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/death-punishments/"}},{"text":"\\n\\n\\u2022 Made in Abyss\\n\\n\\u2022 Sekiro","color":"reset"}]'],title:"The Death Curse",author:antD}

    # sass
    tellraw @s[scores={__n_books=1}] {"text":"There you go!"}
    tellraw @s[scores={__n_books=2}] {"text":"What? You lose it already?"}
    tellraw @s[scores={__n_books=3..63}] {"text":"Again? Seriously?"}
    tellraw @s[scores={__n_books=64}] [[""],{"text":"Gah!","color": "#aa0000"},{"text":" How many of these do you need? I'm not giving you any more!"}]
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
