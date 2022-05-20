# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Applys on death effect to the executing player

# titles
title @s times 100 50 100

execute as @s[scores={__deaths=1}] run function __:player/title/1
{
    title @s title {"text":"Death Curse I","color":"#AA0000"}
    title @s subtitle {"text":"+nausea","color":"#AA0000"}
}
execute as @s[scores={__deaths=2}] run function __:player/title/2
{
    title @s title {"text":"Death Curse II","color":"#990000"}
    title @s subtitle {"text":"-\u2665 +fatigue","color":"#990000"}
}
execute as @s[scores={__deaths=3}] run function __:player/title/3
{
    title @s title {"text":"Death Curse III","color":"#880000"}
    title @s subtitle {"text":"+curse leak","color":"#880000"}
}
execute as @s[scores={__deaths=4}] run function __:player/title/4
{
    title @s title {"text":"Death Curse IV","color":"#770000"}
    title @s subtitle {"text":"-\u2665 +nausea +fatigue","color":"#770000"}
}
execute as @s[scores={__deaths=5}] run function __:player/title/5
{
    title @s title {"text":"Death Curse V","color":"#660000"}
    title @s subtitle {"text":"+poison","color":"#660000"}
}
execute as @s[scores={__deaths=6}] run function __:player/title/6
{
    title @s title [[""],{"text":"De","color":"#550000"},{"text":"a","obfuscated":true,"color":"#550000"},{"text":"th Curse VI","color":"#550000"}]
    title @s subtitle {"text":"-\u2665 +curse leak","color":"#550000"}
}
execute as @s[scores={__deaths=7}] run function __:player/title/7
{
    title @s title [[""],{"text":"D","obfuscated":true,"color":"#440000"},{"text":"ea","color":"#440000"},{"text":"t","obfuscated":true,"color":"#440000"},{"text":"h Cur","color":"#440000"},{"text":"s","obfuscated":true,"color":"#440000"},{"text":"e VII","color":"#440000"}]
    title @s subtitle {"text":"+fatigue","color":"#440000"}
}
execute as @s[scores={__deaths=8}] run function __:player/title/8
{
    title @s title [[""],{"text":"De","obfuscated":true,"color":"#330000"},{"text":"ath Cur","color":"#330000"},{"text":"s","obfuscated":true,"color":"#330000"},{"text":"e V","color":"#330000"},{"text":"I","obfuscated":true,"color":"#330000"},{"text":"II","color":"#330000"}]
    title @s subtitle {"text":"-\u2665 +poison","color":"#330000"}
}
execute as @s[scores={__deaths=9}] run function __:player/title/9
{
    title @s title [[""],{"text":"D","color":"#220000"},{"text":"e","obfuscated":true,"color":"#220000"},{"text":"a","color":"#220000"},{"text":"th","obfuscated":true,"color":"#220000"},{"text":" C","color":"#220000"},{"text":"u","obfuscated":true,"color":"#220000"},{"text":"rs","color":"#220000"},{"text":"e","obfuscated":true,"color":"#220000"},{"text":" IX","color":"#220000"}]
    title @s subtitle [[""],{"text":"+mob aggre","color":"#220000"},{"text":"s","obfuscated": true,"color":"#220000"},{"text":"sion","color":"#220000"}]
}
execute as @s[scores={__deaths=10..}] run function __:player/title/10
{
    title @s title [[""],{"text":"De","obfuscated":true,"color":"black"},{"text":"a","color":"black"},{"text":"t","obfuscated":true,"color":"black"},{"text":"h C","color":"black"},{"text":"ur","obfuscated":true,"color":"black"},{"text":"s","color":"black"},{"text":"e","obfuscated":true,"color":"black"},{"text":" X","obfuscated":true,"color":"black"}]
    title @s[scores={__deaths=10}] subtitle [[""],{"text":"-\u2665 ","color": "black"},{"text":"+","obfuscated": true,"color": "black"},{"text":"fear","color": "black"}]
    title @s[scores={__deaths=11..}] subtitle ""
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
execute as @s[scores={__deaths=1..3}] positioned as @s run playsound minecraft:ambient.crimson_forest.mood ambient @s ~ ~1000 ~ 100000
execute as @s[scores={__deaths=4..6}] positioned as @s run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~1000 ~ 100000
execute as @s[scores={__deaths=7..}] positioned as @s run playsound minecraft:ambient.cave ambient @s ~ ~1000 ~ 100000

# particles
#!sb @s __deaths_increase = 1
#!sb @s __deaths_increase_end = global __effect_timer
#!sb @s __deaths_increase_end += 10

# clear effects
#!sb @s __cloaking_end = -100
#!sb @s __fatigue2_end = -100
#!sb @s __fatigue3_end = -100
#!sb @s __mob_aggression_end = -100
#!sb @s __feared_end = -100
#!sb @s __curse_cookie1_effect_end = -100
#!sb @s __curse_cookie2_effect_end = -100
#!sb @s __curse_cookie3_effect_end = -100
