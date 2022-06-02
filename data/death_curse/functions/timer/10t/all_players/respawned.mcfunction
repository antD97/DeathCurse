# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# activates titles, sounds, particle effects, and advancements on player respawn

# die advancement
execute as @s[scores={__deaths=1..}] run advancement grant @s only __:root

# if marked from resurrection, global __temp1 = 1, else 0
#!sb global __temp1 = 0
#!find=resurrected1
#!replace=resurrected1|resurrected2|resurrected3
execute if score @s __resurrected1 matches 1 run scoreboard players set global __temp1 1

# --------------------------------------------- died --------------------------------------------- #

title @s times 100 50 100

execute if score global __temp1 matches 0 run function __:timer/10t/all_players/respawned/died
{
    # --- titles --- #

    execute as @s[scores={__deaths=1}] run function __:timer/10t/all_players/respawned/died/1
    {
        title @s title {"text":"Death Curse I","color":"#AA0000"}
        title @s subtitle {"text":"+nausea","color":"#AA0000"}
    }
    execute as @s[scores={__deaths=2}] run function __:timer/10t/all_players/respawned/died/2
    {
        title @s title {"text":"Death Curse II","color":"#990000"}
        title @s subtitle {"text":"-\u2665 +fatigue","color":"#990000"}
    }
    execute as @s[scores={__deaths=3}] run function __:timer/10t/all_players/respawned/died/3
    {
        title @s title {"text":"Death Curse III","color":"#880000"}
        title @s subtitle {"text":"+curse leak","color":"#880000"}
    }
    execute as @s[scores={__deaths=4}] run function __:timer/10t/all_players/respawned/died/4
    {
        title @s title {"text":"Death Curse IV","color":"#770000"}
        title @s subtitle {"text":"-\u2665 +nausea +fatigue","color":"#770000"}
    }
    execute as @s[scores={__deaths=5}] run function __:timer/10t/all_players/respawned/died/5
    {
        title @s title {"text":"Death Curse V","color":"#660000"}
        title @s subtitle {"text":"+poison","color":"#660000"}
    }
    execute as @s[scores={__deaths=6}] run function __:timer/10t/all_players/respawned/died/6
    {
        title @s title [[""],{"text":"De","color":"#550000"},{"text":"a","obfuscated":true,"color":"#550000"},{"text":"th Curse VI","color":"#550000"}]
        title @s subtitle {"text":"-\u2665 +curse leak","color":"#550000"}
    }
    execute as @s[scores={__deaths=7}] run function __:timer/10t/all_players/respawned/died/7
    {
        title @s title [[""],{"text":"D","obfuscated":true,"color":"#440000"},{"text":"ea","color":"#440000"},{"text":"t","obfuscated":true,"color":"#440000"},{"text":"h Cur","color":"#440000"},{"text":"s","obfuscated":true,"color":"#440000"},{"text":"e VII","color":"#440000"}]
        title @s subtitle {"text":"+fatigue","color":"#440000"}
    }
    execute as @s[scores={__deaths=8}] run function __:timer/10t/all_players/respawned/died/8
    {
        title @s title [[""],{"text":"De","obfuscated":true,"color":"#330000"},{"text":"ath Cur","color":"#330000"},{"text":"s","obfuscated":true,"color":"#330000"},{"text":"e V","color":"#330000"},{"text":"I","obfuscated":true,"color":"#330000"},{"text":"II","color":"#330000"}]
        title @s subtitle {"text":"-\u2665 +poison","color":"#330000"}
    }
    execute as @s[scores={__deaths=9}] run function __:timer/10t/all_players/respawned/died/9
    {
        title @s title [[""],{"text":"D","color":"#220000"},{"text":"e","obfuscated":true,"color":"#220000"},{"text":"a","color":"#220000"},{"text":"th","obfuscated":true,"color":"#220000"},{"text":" C","color":"#220000"},{"text":"u","obfuscated":true,"color":"#220000"},{"text":"rs","color":"#220000"},{"text":"e","obfuscated":true,"color":"#220000"},{"text":" IX","color":"#220000"}]
        title @s subtitle [[""],{"text":"+mob aggre","color":"#220000"},{"text":"s","obfuscated": true,"color":"#220000"},{"text":"sion","color":"#220000"}]
    }
    execute as @s[scores={__deaths=10..}] run function __:timer/10t/all_players/respawned/died/10
    {
        title @s title [[""],{"text":"De","obfuscated":true,"color":"black"},{"text":"a","color":"black"},{"text":"t","obfuscated":true,"color":"black"},{"text":"h C","color":"black"},{"text":"ur","obfuscated":true,"color":"black"},{"text":"s","color":"black"},{"text":"e","obfuscated":true,"color":"black"},{"text":" X","obfuscated":true,"color":"black"}]
        title @s[scores={__deaths=10}] subtitle [[""],{"text":"-\u2665 ","color": "black"},{"text":"+","obfuscated": true,"color": "black"},{"text":"fear","color": "black"}]
        title @s[scores={__deaths=11..}] subtitle ""
    }

    # --- sounds & particles --- #

    execute as @s[scores={__deaths=1..3}] at @s run playsound ambient.crimson_forest.mood ambient @s ~ ~10000 ~ 100000000 1 1
    execute as @s[scores={__deaths=4..6}] at @s run playsound ambient.soul_sand_valley.mood ambient @s ~ ~10000 ~ 100000000 1 1
    execute as @s[scores={__deaths=7..}] at @s run playsound ambient.cave ambient @s ~ ~10000 ~ 100000000 1 1

    #!sb @s __deaths_increase = 10
}

# ----------------------------------------- resurrected ------------------------------------------ #

execute if score global __temp1 matches 1 run function __:timer/10t/all_players/respawned/resurrected
{
    # --- titles & sounds --- #
    
    execute as @s[scores={__deaths=0}] run function __:timer/10t/all_players/respawned/resurrected/0
    {
        title @s title {"text":"Free of Death Curse","color":"#46ffd3"}
        title @s subtitle {"text":"-nausea","color":"#46ffd3"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 1.0 1
    }
    execute as @s[scores={__deaths=1}] run function __:timer/10t/all_players/respawned/resurrected/1
    {
        title @s title {"text":"Death Curse I","color":"#22D3A9"}
        title @s subtitle {"text":"+\u2665 -fatigue","color":"#22D3A9"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.95 1
    }
    execute as @s[scores={__deaths=2}] run function __:timer/10t/all_players/respawned/resurrected/2
    {
        title @s title {"text":"Death Curse II","color":"#1FC19B"}
        title @s subtitle {"text":"-curse leak","color":"#1FC19B"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.9 1
    }
    execute as @s[scores={__deaths=3}] run function __:timer/10t/all_players/respawned/resurrected/3
    {
        title @s title {"text":"Death Curse III","color":"#1DAF8D"}
        title @s subtitle {"text":"+\u2665 -nausea -fatigue","color":"#1DAF8D"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.85 1
    }
    execute as @s[scores={__deaths=4}] run function __:timer/10t/all_players/respawned/resurrected/4
    {
        title @s title {"text":"Death Curse IV","color":"#1A9E7F"}
        title @s subtitle {"text":"-poison","color":"#1A9E7F"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.8 1
    }
    execute as @s[scores={__deaths=5}] run function __:timer/10t/all_players/respawned/resurrected/5
    {
        title @s title {"text":"Death Curse V","color":"#16886E"}
        title @s subtitle {"text":"+\u2665 -curse leak","color":"#16886E"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.75 1
    }
    execute as @s[scores={__deaths=6}] run function __:timer/10t/all_players/respawned/resurrected/6
    {
        title @s title {"text":"Death Curse VI","color":"#12725C"}
        title @s subtitle {"text":"-fatigue","color":"#12725C"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.7 1
    }
    execute as @s[scores={__deaths=7}] run function __:timer/10t/all_players/respawned/resurrected/7
    {
        title @s title {"text":"Death Curse VII","color":"#0F614E"}
        title @s subtitle {"text":"+\u2665 +poison","color":"#0F614E"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.65 1
    }
    execute as @s[scores={__deaths=8}] run function __:timer/10t/all_players/respawned/resurrected/8
    {
        title @s title {"text":"Death Curse VIII","color":"#0c4b3c"}
        title @s subtitle {"text":"-mob aggression","color":"#0c4b3c"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.6 1
    }
    execute as @s[scores={__deaths=9}] run function __:timer/10t/all_players/respawned/resurrected/9
    {
        title @s title {"text":"Death Curse IX","color":"#062921"}
        title @s subtitle {"text":"+\u2665 -fear","color":"#062921"}
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.55 1
    }
    execute as @s[scores={__deaths=10}] run function __:timer/10t/all_players/respawned/resurrected/10
    {
        title @s title {"text":"Death Curse X","color":"#000000"}
        title @s subtitle [[""],{"text":"no cha","color":"#000000"},{"text":"n","color":"#000000","obfuscated":true},{"text":"ge","color":"#000000"}]
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.5 1
    }
    execute as @s[scores={__deaths=11..}] run function __:timer/10t/all_players/respawned/resurrected/11
    {
        title @s title [[""],{"text":"Death Curse ","color":"#000000"},{"text": "X","color": "#000000","obfuscated": true}]
        title @s subtitle [[""],{"text":"no cha","color":"#000000"},{"text":"n","color":"#000000","obfuscated":true},{"text":"ge","color":"#000000"}]
        playsound ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.5 1
    }

    # --- particles --- #

    execute as @s[scores={__resurrected1=1}] run scoreboard players set @s __deaths_decrease1 10
    execute as @s[scores={__resurrected2=1}] run scoreboard players set @s __deaths_decrease2 10
    execute as @s[scores={__resurrected3=1}] run scoreboard players set @s __deaths_decrease3 10

    #!sb @s __resurrected1 = 0
    #!sb @s __resurrected2 = 0
    #!sb @s __resurrected3 = 0
}

# ------------------------------------------------------------------------------------------------ #

# max health attribute
execute as @s[scores={__deaths=2..3}] run attribute @s generic.max_health base set 18
execute as @s[scores={__deaths=4..5}] run attribute @s generic.max_health base set 16
execute as @s[scores={__deaths=6..7}] run attribute @s generic.max_health base set 14
execute as @s[scores={__deaths=8..9}] run attribute @s generic.max_health base set 12
execute as @s[scores={__deaths=10..}] run attribute @s generic.max_health base set 10
# fixes hidden hp when reducing max hp
effect give @s instant_health
