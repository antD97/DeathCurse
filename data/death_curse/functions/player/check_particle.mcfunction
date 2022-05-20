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

# Check deaths decrease effect scores
execute if score @s __deaths_decrease matches 1.. run function __:player/check_particle/deaths_decrease
{
    scoreboard players operation global __result1 = @s __deaths_decrease_end
    scoreboard players operation global __result1 -= global __effect_timer
    execute if score global __result1 matches ..0 run scoreboard players set @s __deaths_decrease 0
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
