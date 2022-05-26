# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Applys on death effect to the executing player

execute if score @s __deaths matches 1.. run advancement grant @s only __:root

# store if decreased deaths in global __arg1
#!sb global __arg1 = 0
#!find=decrease1
#!replace=decrease1|decrease2|decrease3
execute if score @s __deaths_decrease1 matches 2 run scoreboard players set global __arg1 1

# titles
title @s times 100 50 100

execute if score global __arg1 matches 0 as @s[scores={__deaths=1}] run function __:player/title/1
{
    title @s title {"text":"Death Curse I","color":"#AA0000"}
    title @s subtitle {"text":"+nausea","color":"#AA0000"}
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=2}] run function __:player/title/2
{
    title @s title {"text":"Death Curse II","color":"#990000"}
    title @s subtitle {"text":"-\u2665 +fatigue","color":"#990000"}
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=3}] run function __:player/title/3
{
    title @s title {"text":"Death Curse III","color":"#880000"}
    title @s subtitle {"text":"+curse leak","color":"#880000"}
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=4}] run function __:player/title/4
{
    title @s title {"text":"Death Curse IV","color":"#770000"}
    title @s subtitle {"text":"-\u2665 +nausea +fatigue","color":"#770000"}
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=5}] run function __:player/title/5
{
    title @s title {"text":"Death Curse V","color":"#660000"}
    title @s subtitle {"text":"+poison","color":"#660000"}
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=6}] run function __:player/title/6
{
    title @s title [[""],{"text":"De","color":"#550000"},{"text":"a","obfuscated":true,"color":"#550000"},{"text":"th Curse VI","color":"#550000"}]
    title @s subtitle {"text":"-\u2665 +curse leak","color":"#550000"}
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=7}] run function __:player/title/7
{
    title @s title [[""],{"text":"D","obfuscated":true,"color":"#440000"},{"text":"ea","color":"#440000"},{"text":"t","obfuscated":true,"color":"#440000"},{"text":"h Cur","color":"#440000"},{"text":"s","obfuscated":true,"color":"#440000"},{"text":"e VII","color":"#440000"}]
    title @s subtitle {"text":"+fatigue","color":"#440000"}
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=8}] run function __:player/title/8
{
    title @s title [[""],{"text":"De","obfuscated":true,"color":"#330000"},{"text":"ath Cur","color":"#330000"},{"text":"s","obfuscated":true,"color":"#330000"},{"text":"e V","color":"#330000"},{"text":"I","obfuscated":true,"color":"#330000"},{"text":"II","color":"#330000"}]
    title @s subtitle {"text":"-\u2665 +poison","color":"#330000"}
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=9}] run function __:player/title/9
{
    title @s title [[""],{"text":"D","color":"#220000"},{"text":"e","obfuscated":true,"color":"#220000"},{"text":"a","color":"#220000"},{"text":"th","obfuscated":true,"color":"#220000"},{"text":" C","color":"#220000"},{"text":"u","obfuscated":true,"color":"#220000"},{"text":"rs","color":"#220000"},{"text":"e","obfuscated":true,"color":"#220000"},{"text":" IX","color":"#220000"}]
    title @s subtitle [[""],{"text":"+mob aggre","color":"#220000"},{"text":"s","obfuscated": true,"color":"#220000"},{"text":"sion","color":"#220000"}]
}
execute if score global __arg1 matches 0 as @s[scores={__deaths=10..}] run function __:player/title/10
{
    title @s title [[""],{"text":"De","obfuscated":true,"color":"black"},{"text":"a","color":"black"},{"text":"t","obfuscated":true,"color":"black"},{"text":"h C","color":"black"},{"text":"ur","obfuscated":true,"color":"black"},{"text":"s","color":"black"},{"text":"e","obfuscated":true,"color":"black"},{"text":" X","obfuscated":true,"color":"black"}]
    title @s[scores={__deaths=10}] subtitle [[""],{"text":"-\u2665 ","color": "black"},{"text":"+","obfuscated": true,"color": "black"},{"text":"fear","color": "black"}]
    title @s[scores={__deaths=11..}] subtitle ""
}

execute if score global __arg1 matches 1 as @s[scores={__deaths=0}] run function __:player/d_title/0
{
    title @s title {"text":"Free of Death Curse","color":"#46ffd3"}
    title @s subtitle {"text":"-nausea","color":"#46ffd3"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 1.0 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=1}] run function __:player/d_title/1
{
    title @s title {"text":"Death Curse I","color":"#22D3A9"}
    title @s subtitle {"text":"+\u2665 -fatigue","color":"#22D3A9"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.95 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=2}] run function __:player/d_title/2
{
    title @s title {"text":"Death Curse II","color":"#1FC19B"}
    title @s subtitle {"text":"-curse leak","color":"#1FC19B"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.9 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=3}] run function __:player/d_title/3
{
    title @s title {"text":"Death Curse III","color":"#1DAF8D"}
    title @s subtitle {"text":"+\u2665 -nausea -fatigue","color":"#1DAF8D"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.85 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=4}] run function __:player/d_title/4
{
    title @s title {"text":"Death Curse IV","color":"#1A9E7F"}
    title @s subtitle {"text":"-poison","color":"#1A9E7F"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.8 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=5}] run function __:player/d_title/5
{
    title @s title {"text":"Death Curse V","color":"#16886E"}
    title @s subtitle {"text":"+\u2665 -curse leak","color":"#16886E"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.75 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=6}] run function __:player/d_title/6
{
    title @s title {"text":"Death Curse VI","color":"#12725C"}
    title @s subtitle {"text":"-fatigue","color":"#12725C"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.7 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=7}] run function __:player/d_title/7
{
    title @s title {"text":"Death Curse VII","color":"#0F614E"}
    title @s subtitle {"text":"+\u2665 +poison","color":"#0F614E"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.65 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=8}] run function __:player/d_title/8
{
    title @s title {"text":"Death Curse VIII","color":"#0c4b3c"}
    title @s subtitle {"text":"-mob aggression","color":"#0c4b3c"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.6 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=9}] run function __:player/d_title/9
{
    title @s title {"text":"Death Curse IX","color":"#062921"}
    title @s subtitle {"text":"+\u2665 -fear","color":"#062921"}
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.55 1
}
execute if score global __arg1 matches 1 as @s[scores={__deaths=10..}] run function __:player/d_title/10
{
    title @s title {"text":"Death Curse X","color":"#000000"}
    title @s subtitle [[""],{"text":"no cha","color":"#000000"},{"text":"n","color":"#000000","obfuscated":true},{"text":"ge","color":"#000000"}]
    playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~10000 ~ 100000000 0.5 1
}

# max health
execute as @s[scores={__deaths=2..3}] run attribute @s minecraft:generic.max_health base set 18
execute as @s[scores={__deaths=4..5}] run attribute @s minecraft:generic.max_health base set 16
execute as @s[scores={__deaths=6..7}] run attribute @s minecraft:generic.max_health base set 14
execute as @s[scores={__deaths=8..9}] run attribute @s minecraft:generic.max_health base set 12
execute as @s[scores={__deaths=10..}] run attribute @s minecraft:generic.max_health base set 10
# fixes hidden hp when reducing max hp
effect give @s minecraft:instant_health

# sounds
execute if score global __arg1 matches 0 as @s[scores={__deaths=1..3}] positioned as @s run playsound minecraft:ambient.crimson_forest.mood ambient @s ~ ~10000 ~ 100000000 1 1
execute if score global __arg1 matches 0 as @s[scores={__deaths=4..6}] positioned as @s run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~10000 ~ 100000000 1 1
execute if score global __arg1 matches 0 as @s[scores={__deaths=7..}] positioned as @s run playsound minecraft:ambient.cave ambient @s ~ ~10000 ~ 100000000 1 1

# particles
execute if score global __arg1 matches 0 run function __:player/apply_deaths_increase_effect
{
    #!sb @s __deaths_increase = 1
    #!sb @s __deaths_increase_end = global __effect_timer
    #!sb @s __deaths_increase_end += 10
}
execute as @s[scores={__deaths_decrease1=2}] run function __:player/apply_deaths_decrease1_effect
{
    #!sb @s __deaths_decrease1 = 1
    #!sb @s __deaths_decrease1_end = global __effect_timer
    #!sb @s __deaths_decrease1_end += 10
}
execute as @s[scores={__deaths_decrease2=2}] run function __:player/apply_deaths_decrease2_effect
{
    #!sb @s __deaths_decrease2 = 1
    #!sb @s __deaths_decrease2_end = global __effect_timer
    #!sb @s __deaths_decrease2_end += 10
}
execute as @s[scores={__deaths_decrease3=2}] run function __:player/apply_deaths_decrease3_effect
{
    #!sb @s __deaths_decrease3 = 1
    #!sb @s __deaths_decrease3_end = global __effect_timer
    #!sb @s __deaths_decrease3_end += 10
}
