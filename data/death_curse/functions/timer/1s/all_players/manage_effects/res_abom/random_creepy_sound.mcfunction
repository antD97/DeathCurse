# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# save previous random value
#!sb global __result2 = global __result1

#!sb global __temp1 = 6
function __:util/random

execute if score global __result1 matches 0 at @s run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound/sound1_right
{
    playsound entity.strider.ambient ambient @s ^2 ^ ^
    tp @s ~ ~ ~ ~1 ~
}

execute if score global __result1 matches 1 at @s run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound/sound1_left
{
    playsound entity.strider.ambient ambient @s ^-2 ^ ^
    tp @s ~ ~ ~ ~-1 ~
}

execute if score global __result1 matches 2 at @s run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound/sound2_right
{
    playsound entity.strider.death ambient @s ^2 ^ ^
    tp @s ~ ~ ~ ~1 ~
}

execute if score global __result1 matches 3 at @s run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound/sound2_left
{
    playsound entity.strider.death ambient @s ^-2 ^ ^
    tp @s ~ ~ ~ ~-1 ~
}

execute if score global __result1 matches 4 at @s run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound/sound3_right
{
    playsound entity.strider.hurt ambient @s ^2 ^ ^
    tp @s ~ ~ ~ ~1 ~
}

execute if score global __result1 matches 5 at @s run function __:timer/1s/all_players/manage_effects/res_abom/random_creepy_sound/sound3_left
{
    playsound entity.strider.hurt ambient @s ^-2 ^ ^
    tp @s ~ ~ ~ ~-1 ~
}

# restore previous random value
#!sb global __result1 = global __result2
