# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# calculate the player's curse level from death count, death wards, and other effects and react to
# any changes in curse level every 2t (0.1s)

# curse wards
execute store result score global __result1 run clear @s minecraft:enchanted_book{CustomModelData:379300} 0

execute store result score global __temp1 run clear @s minecraft:enchanted_book{CustomModelData:379301} 0
#!sb global __temp2 = 3
#!sb global __temp1 *= global __temp2
#!sb global __result1 += global __temp1

execute store result score global __temp1 run clear @s minecraft:enchanted_book{CustomModelData:379302} 0
#!sb global __temp2 = 11
#!sb global __temp1 *= global __temp2
#!sb global __result1 += global __temp1

# curse cookies
execute if score @s __curse_cookie1_effect matches 1.. run scoreboard players add global __result1 1
execute if score @s __curse_cookie2_effect matches 1.. run scoreboard players add global __result1 3
execute if score @s __curse_cookie3_effect matches 1.. run scoreboard players add global __result1 11

# set level with reduction
#!sb @s __curse_level = @s __deaths
#!sb @s __curse_level -= global __result1
execute if score @s __curse_level matches ..-1 run scoreboard players set @s __curse_level 0

# check for change in level
#!sb @s __prev_level += 0
#!sb global __result2 = @s __curse_level
#!sb global __result2 -= @s __prev_level

# --- decrease level --- #

execute if score @s __time_alive matches 1.. run execute if score global __result2 matches ..-1 run function __:timer/2t/all_players/calc_level/decrease_level
{
    # lvl   msg                                             reference                                   old
    # 0     You are rejuvenated.                            back no normal
    # 1     You feel refreshed.                             removed fatigue
    # 2     Your vision becomes clear.                      removed curse leak                          You feel a little healthier.
    # 3     The pain subsides.                              back to 9 hearts
    # 4     You feel less sickly.                           reomved poison 
    # 5     Your hearing improves.                          removed curse leak 2                        The aching has become tolerable.
    # 6     You feel less debilitated.                      removed intense fatigue
    # 7     The aching has become tolerable.                back to 7 hearts & no poison                The nauseousness subsides.
    # 8     Your strength returns. (WIP)                    removed mob aggression (final name pending) Your vision improves.
    #       or You feel more courageous.
    # 9     Breathing becomes bearable.                     back to 6 hearts & no fear
    # 10+   You feel no improvement.                        no improvement                  Your health doesn't seem to improve.
    #       or You notice no improvement.
    #       or You don't notice any improvement.
    #       or You don't feel any improvement.
    #       or There is no improvement.
    #       or Your health doesn't seem to improve.
    #       or You feel the same.
    execute if score @s __curse_level matches 0 run title @s actionbar {"text":"You are rejuvenated.","color":"#46ffd3","bold":true,"italic":true}
    execute if score @s __curse_level matches 1 run title @s actionbar {"text":"You feel refreshed.","color":"#22D3A9","bold":true,"italic":true}
    execute if score @s __curse_level matches 2 run title @s actionbar {"text":"Your vision becomes clear.","color":"#1FC19B","bold":true,"italic":true}
    execute if score @s __curse_level matches 3 run title @s actionbar {"text":"The pain subsides.","color":"#1DAF8D","bold":true,"italic":true}
    execute if score @s __curse_level matches 4 run title @s actionbar {"text":"You feel less sickly.","color":"#1A9E7F","bold":true,"italic":true}
    execute if score @s __curse_level matches 5 run title @s actionbar {"text":"Your hearing improves.","color":"#16886E","bold":true,"italic":true}
    execute if score @s __curse_level matches 6 run title @s actionbar {"text":"You feel less debilitated.","color":"#12725C","bold":true,"italic":true}
    execute if score @s __curse_level matches 7 run title @s actionbar {"text":"The aching has become tolerable.","color":"#0F614E","bold":true,"italic":true}
    execute if score @s __curse_level matches 8 run title @s actionbar [[""],{"text":"Your strength retur","bold":true,"italic":true,"color":"#0C4B3C"},{"text":"n","bold":true,"italic":true,"obfuscated":true,"color":"#0C4B3C"},{"text":"s.","bold":true,"italic":true,"color":"#0C4B3C"}]
    execute if score @s __curse_level matches 9 run title @s actionbar [[""],{"text":"Br","bold":true,"italic":true,"color":"#062921"},{"text":"e","bold":true,"italic":true,"obfuscated":true,"color":"#062921"},{"text":"athing becom","bold":true,"italic":true,"color":"#062921"},{"text":"e","bold":true,"italic":true,"obfuscated":true,"color":"#062921"},{"text":"s bearable.","bold":true,"italic":true,"color":"#062921"}]
    execute if score @s __curse_level matches 10.. run title @s actionbar [[""],{"text":"Y","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"ou f","bold":true,"italic":true,"color":"black"},{"text":"e","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"el no imp","bold":true,"italic":true,"color":"black"},{"text":"ro","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"veme","bold":true,"italic":true,"color":"black"},{"text":"n","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"t.","bold":true,"italic":true,"color":"black"}]

    # set the max health attribute
    execute if score @s __curse_level matches 0..1 run attribute @s generic.max_health base set 20
    execute if score @s __curse_level matches 2..3 run attribute @s generic.max_health base set 18
    execute if score @s __curse_level matches 4..5 run attribute @s generic.max_health base set 16
    execute if score @s __curse_level matches 6..7 run attribute @s generic.max_health base set 14
    execute if score @s __curse_level matches 8..9 run attribute @s generic.max_health base set 12
    execute if score @s __curse_level matches 10.. run attribute @s generic.max_health base set 10
}

# --- increase level --- #

execute if score @s __time_alive matches 1.. run execute if score global __result2 matches 1.. run function __:timer/2t/all_players/calc_level/increase_level
{
    # lvl   msg                                             reference
    # 1     You feel restless.                              +nausea
    # 2     You feel drained.                               +fatigue -1 heart
    # 3     Your vision worsens.                            +curse leak
    # 4     Moving becomes tiresome.                        +fatigue +nausea -2 hearts
    # 5     You feel sickly.                                +poison
    # 6     Your hearing is dulled.                         +curse leak -3 hearts
    # 7     You are exhausted.                              +fatigue
    # 8     The aching is enfeebling.                       +poison -4 hearts
    # 9     Your actions feel sluggish.                     +mob aggression
    # 10    You feel afraid.                                +fear -5 hearts
    # 11+   You feel hopeless.

    # displays the executor's curse level as an actionbar hint in
    execute if score @s __curse_level matches 1 run title @s actionbar {"text":"You become restless.","color":"#AA0000","bold":true,"italic":true}
    execute if score @s __curse_level matches 2 run title @s actionbar {"text":"You feel drained.","color":"#990000","bold":true,"italic":true}
    execute if score @s __curse_level matches 3 run title @s actionbar {"text":"Your vision worsens.","color":"#880000","bold":true,"italic":true}
    execute if score @s __curse_level matches 4 run title @s actionbar {"text":"Moving becomes tiresome.","color":"#770000","bold":true,"italic":true}
    execute if score @s __curse_level matches 5 run title @s actionbar {"text":"You feel sickly.","color":"#660000","bold":true,"italic":true}
    execute if score @s __curse_level matches 6 run title @s actionbar {"text":"Your hearing is dulled.","color":"#550000","bold":true,"italic":true}
    execute if score @s __curse_level matches 7 run title @s actionbar {"text":"You are exhausted.","color":"#440000","bold":true,"italic":true}
    execute if score @s __curse_level matches 8 run title @s actionbar {"text":"The aching is enfeebling.","color":"#330000","bold":true,"italic":true}
    execute if score @s __curse_level matches 9 run title @s actionbar ["",{"text":"Your actions f","color":"#220000","bold":true,"italic":true},{"text":"e","color":"#220000","bold":true,"italic":true,"obfuscated":true},{"text":"el sluggish.","color":"#220000","bold":true,"italic":true}]
    execute if score @s __curse_level matches 10 run title @s actionbar ["",{"text":"Yo","bold":true,"italic":true,"color":"black"},{"text":"u","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":" fe","bold":true,"italic":true,"color":"black"},{"text":"e","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"l afra","bold":true,"italic":true,"color":"black"},{"text":"i","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"d.","bold":true,"italic":true,"color":"black"}]
    execute if score @s __curse_level matches 11.. run title @s actionbar ["",{"text":"Yo","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"u fe","bold":true,"italic":true,"color":"black"},{"text":"el","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":" hopel","bold":true,"italic":true,"color":"black"},{"text":"e","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":"s","bold":true,"italic":true,"color":"black"},{"text":"s","bold":true,"italic":true,"obfuscated":true,"color":"black"},{"text":".","bold":true,"italic":true,"color":"black"}]

    # set the max health attribute
    execute if score @s __curse_level matches 2..3 run attribute @s generic.max_health base set 18
    execute if score @s __curse_level matches 4..5 run attribute @s generic.max_health base set 16
    execute if score @s __curse_level matches 6..7 run attribute @s generic.max_health base set 14
    execute if score @s __curse_level matches 8..9 run attribute @s generic.max_health base set 12
    execute if score @s __curse_level matches 10.. run attribute @s generic.max_health base set 10

    # fixes hidden hp when reducing max hp
    execute store result score global __temp1 run attribute @s generic.max_health get
    #!sb global __temp1 -= @s __hp
    execute if score global __temp1 matches ..-1 run effect give @s instant_health
}

# -------------------- #

# set previous curse level
#!sb @s __prev_level = @s __curse_level
