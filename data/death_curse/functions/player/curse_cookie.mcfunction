# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Apply curse cookie effects to player executors who just ate a curse cookie

# check if holding curse cookie
#!sb @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{CustomModelData:379303}}}] __holding_curse_cookie1 = 2
#!sb @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{CustomModelData:379304}}}] __holding_curse_cookie2 = 2
#!sb @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{CustomModelData:379305}}}] __holding_curse_cookie3 = 2

#!sb @s __curse_cookie1_effect += 0
#!sb @s __curse_cookie2_effect += 0
#!sb @s __curse_cookie3_effect += 0

# --- curse cookie 1 --- #

# player ate a cookie, is holding a curse cookie 1, is under the effects of cookie1
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie1=1..,__curse_cookie1_effect=1..}] run title @s actionbar {"text":"Curse Cookie I effect refreshed","italic":true}

# player ate a cookie, is holding a curse cookie 1, is not under the effects of cookie2 or cookie3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie1=1..,__curse_cookie2_effect=..0,__curse_cookie3_effect=..0}] run scoreboard players set @s __curse_cookie1_effect 1800

# player ate a cookie, is holding a curse cookie 1, is under the effects of cookie2 or cookie3
#!find=__curse_cookie2_effect
#!replace=__curse_cookie2_effect|__curse_cookie3_effect
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie1=1..,__curse_cookie2_effect=1..}] run title @s actionbar  {"text":"Nothing happened...","italic":true}

# --- curse cookie 2 --- #

# player ate a cookie, is holding a curse cookie 2, is under the effects of cookie2
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie2=1..,__curse_cookie2_effect=1..}] run title @s actionbar  {"text":"Curse Cookie II effect refreshed","italic":true}

# player ate a cookie, is holding a curse cookie 2, is not under the effects of cookie3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie2=1..,__curse_cookie3_effect=..0}] run function __:player/apply_curse_cookie2
{
    #!sb @s __curse_cookie1_effect = 0
    #!sb @s __curse_cookie2_effect = 1800
}

# player ate a cookie, is holding a curse cookie 2, is under the effects of cookie3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie2=1..,__curse_cookie3_effect=1..}] run title @s actionbar  {"text":"Nothing happened...","italic":true}

# --- curse cookie 3 --- #

# player ate a cookie, is holding a curse cookie 3, is under the effects of cookie3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie3=1..,__curse_cookie3_effect=1..}] run title @s actionbar  {"text":"Curse Cookie III effect refreshed","italic":true}

# player ate a cookie, is holding a curse cookie 3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie3=1..}] run function __:player/apply_curse_cookie3
{
    #!sb @s __curse_cookie1_effect = 0
    #!sb @s __curse_cookie2_effect = 0
    #!sb @s __curse_cookie3_effect = 1800
}

# ---------------------- #

# decay holding curse cookie timer
#!sb @s __holding_curse_cookie1 -= 1
#!sb @s __holding_curse_cookie2 -= 1
#!sb @s __holding_curse_cookie3 -= 1

# reset eaten cookie score
#!sb reset @s __eaten_cookie
