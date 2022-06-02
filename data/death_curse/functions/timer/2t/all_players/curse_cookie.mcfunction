# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# apply curse cookie effects to players who just ate a curse cookie every 2t (0.1s)

# check if holding curse cookie
#!sb @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{CustomModelData:379303}}}] __holding_curse_cookie1 = 2
#!sb @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{CustomModelData:379304}}}] __holding_curse_cookie2 = 2
#!sb @s[nbt={SelectedItem:{id:"minecraft:cookie",tag:{CustomModelData:379305}}}] __holding_curse_cookie3 = 2

#!sb @s __curse_cookie1_effect += 0
#!sb @s __curse_cookie2_effect += 0
#!sb @s __curse_cookie3_effect += 0

# --- curse cookie 1 --- #

# player ate a cookie, is holding a curse cookie 1, is under the effects of cookie2 or cookie3
#!find=__curse_cookie2_effect
#!replace=__curse_cookie2_effect|__curse_cookie3_effect
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie1=1..,__curse_cookie2_effect=1..}] run title @s actionbar  {"text":"Nothing happened...","italic":true}

# player ate a cookie, is holding a curse cookie 1, is not under the effects of cookie2 or cookie3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie1=1..,__curse_cookie2_effect=..0,__curse_cookie3_effect=..0}] run function __:timer/2t/all_players/curse_cookie/apply_1
{
    # already under curse cookie 1 effect
    execute as @s[scores={__curse_cookie1_effect=1..}] run title @s actionbar {"text":"Curse Reduction I refreshed for 30 minutes","italic":true}

    # when curse level is already 0, the calc_level function will not create any actionbar text so show this message instead
    execute as @s[scores={__curse_cookie1_effect=0,__curse_level=0}] run title @s actionbar  {"text":"Curse Reduction I applied for 30 minutes","italic":true}

    scoreboard players set @s __curse_cookie1_effect 1800
}

# --- curse cookie 2 --- #

# player ate a cookie, is holding a curse cookie 2, is under the effects of cookie3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie2=1..,__curse_cookie3_effect=1..}] run title @s actionbar  {"text":"Nothing happened...","italic":true}

# player ate a cookie, is holding a curse cookie 2, is not under the effects of cookie3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie2=1..,__curse_cookie3_effect=..0}] run function __:timer/2t/all_players/curse_cookie/apply_2
{
    # already under curse cookie 2 effect
    execute as @s[scores={__curse_cookie2_effect=1..}] run title @s actionbar {"text":"Curse Reduction II refreshed for 30 minutes","italic":true}

    # when curse level is already 0, the calc_level function will not create any actionbar text so show this message instead
    execute as @s[scores={__curse_cookie2_effect=0,__curse_level=0}] run title @s actionbar  {"text":"Curse Reduction II applied for 30 minutes","italic":true}

    #!sb @s __curse_cookie1_effect = 0
    #!sb @s __curse_cookie2_effect = 1800
}

# --- curse cookie 3 --- #

# player ate a cookie, is holding a curse cookie 3
execute as @s[scores={__eaten_cookie=1..,__holding_curse_cookie3=1..}] run function __:timer/2t/all_players/curse_cookie/apply_3
{
    # already under curse cookie 3 effect
    execute as @s[scores={__curse_cookie3_effect=1..}] run title @s actionbar {"text":"Curse Reduction III refreshed for 30 minutes","italic":true}

    # when curse level is already 0, the calc_level function will not create any actionbar text so show this message instead
    execute as @s[scores={__curse_cookie3_effect=0,__curse_level=0}] run title @s actionbar  {"text":"Curse Reduction III applied for 30 minutes","italic":true}

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
