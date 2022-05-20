# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Updates scoreboard particle effect values depending on the effect duration of the executing hostile mob

# check cloak effect scores
execute if score @s __cloak1_id matches 1.. run function __:hostile/check/cloak
{
    # find cloak_end - effect_timer
    #!sb global __result1 = @s __cloak_end
    #!sb global __result1 -= global __effect_timer

    # remove cloak id scores if timer is up
    execute if score global __result1 matches ..0 run function __:hostile/helper/remove_cloak_id
    {
        # remove silent effect
        execute as @s[scores={__cloak2_id=1..}] run data merge entity @s {Silent:0b}
        # removes cloak id scores from the executor
        #!sb @s __cloak1_id = 0
        #!sb @s __cloak2_id = 0
    }
}
execute if score @s __cloak2_id matches 1.. run function __:hostile/check/cloak

# check mob aggression score
execute if score @s __angry matches 1 run function __:hostile/check/angry
{
    # find angry_end - effect_timer
    #!sb global __result1 = @s __angry_end
    #!sb global __result1 -= global __effect_timer

    # remove angry mark score if timer is up
    execute if score global __result1 matches ..0 run scoreboard players set @s __angry 0
}
