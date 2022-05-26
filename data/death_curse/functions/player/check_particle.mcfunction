# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Updates scoreboard particle effect values depending on the effect duration of the executing player

# Check deaths increase effect scores
execute if score @s __deaths_increase matches 1.. run function __:player/check_particle/deaths_increase
{
    scoreboard players operation global __result1 = @s __deaths_increase_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __deaths_increase 0
}

# Check deaths decrease1 effect scores
execute if score @s __deaths_decrease1 matches 1 run function __:player/check_particle/deaths_decrease1
{
    scoreboard players operation global __result1 = @s __deaths_decrease1_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __deaths_decrease1 0
}

# Check deaths decrease2 effect scores
execute if score @s __deaths_decrease2 matches 1 run function __:player/check_particle/deaths_decrease2
{
    scoreboard players operation global __result1 = @s __deaths_decrease2_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __deaths_decrease2 0
}

# Check deaths decrease3 effect scores
execute if score @s __deaths_decrease3 matches 1 run function __:player/check_particle/deaths_decrease3
{
    scoreboard players operation global __result1 = @s __deaths_decrease3_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __deaths_decrease3 0
}

# Check fatigue 1 effect scores
execute if score @s __fatigue1 matches 1.. run function __:player/check_particle/fatigue1
{
    scoreboard players operation global __result1 = @s __fatigue1_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __fatigue1 0
}

# Check fatigue 2 effect scores
execute if score @s __fatigue2 matches 1.. run function __:player/check_particle/fatigue2
{
    scoreboard players operation global __result1 = @s __fatigue2_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __fatigue2 0
}

# Check fatigue 3 effect scores
execute if score @s __fatigue3 matches 1.. run function __:player/check_particle/fatigue3
{
    scoreboard players operation global __result1 = @s __fatigue3_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __fatigue3 0
}

# Check cloaking effect scores
execute if score @s __cloaking matches 1.. run function __:player/check_particle/cloaking
{
    scoreboard players operation global __result1 = @s __cloaking_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __cloaking 0
}

# Check poison effect scores
execute if score @s __poison matches 1.. run function __:player/check_particle/poison
{
    scoreboard players operation global __result1 = @s __poison_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __poison 0
}

# Check fear effect scores
execute if score @s __feared matches 1.. run function __:player/check_particle/fear
{
    scoreboard players operation global __result1 = @s __feared_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __feared 0
}

# Check curse cookie 1 effect reminders
execute if score @s __curse_cookie1_effect matches 300 run title @s actionbar {"text":"Curse Reduction I effect ends in 5 minutes...","italic":true}
execute if score @s __curse_cookie1_effect matches 60 run title @s actionbar {"text":"Curse Reduction I effect ends in 1 minute...","italic":true}
#!find= 2
#!replace= 2| 3| 4| 5| 6| 7| 8| 9| 10
execute if score @s __curse_cookie1_effect matches 2 run title @s actionbar {"text":"Curse Reduction I ends in 2 seconds...","italic":true}
execute if score @s __curse_cookie1_effect matches 1 run title @s actionbar {"text":"Curse Reduction I ends in 1 second...","italic":true}

# Check curse cookie 2 effect reminders
execute if score @s __curse_cookie2_effect matches 300 run title @s actionbar {"text":"Curse Reduction II effect ends in 5 minutes...","italic":true}
execute if score @s __curse_cookie2_effect matches 60 run title @s actionbar {"text":"Curse Reduction II effect ends in 1 minute...","italic":true}
#!find= 2
#!replace= 2| 3| 4| 5| 6| 7| 8| 9| 10
execute if score @s __curse_cookie2_effect matches 2 run title @s actionbar {"text":"Curse Reduction II ends in 2 seconds...","italic":true}
execute if score @s __curse_cookie2_effect matches 1 run title @s actionbar {"text":"Curse Reduction II ends in 1 second...","italic":true}

# Check curse cookie 3 effect reminders
execute if score @s __curse_cookie3_effect matches 300 run title @s actionbar {"text":"Curse Reduction III effect ends in 5 minutes...","italic":true}
execute if score @s __curse_cookie3_effect matches 60 run title @s actionbar {"text":"Curse Reduction III effect ends in 1 minute...","italic":true}
#!find= 2
#!replace= 2| 3| 4| 5| 6| 7| 8| 9| 10
execute if score @s __curse_cookie3_effect matches 2 run title @s actionbar {"text":"Curse Reduction III ends in 2 seconds...","italic":true}
execute if score @s __curse_cookie3_effect matches 1 run title @s actionbar {"text":"Curse Reduction III ends in 1 second...","italic":true}

# Check jitter effect scores
execute if score @s __jitter_effect matches 1.. run function __:player/check_particle/check_jitter
{
    scoreboard players operation global __result1 = @s __jitter_effect_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __jitter_effect 0
}

# disable smoke effect if no longer res. abom. effected, or dead
#!sb global __arg1 = 0
#!find=effect1
#!replace=effect1|effect2|effect3
execute if score @s __res_abom_effect1 matches 1.. run scoreboard players set global __arg1 1
execute if score global __arg1 matches 0 run scoreboard players set @s __smoke 0
execute if score @s __time_alive matches 0 run scoreboard players set @s __smoke 0
