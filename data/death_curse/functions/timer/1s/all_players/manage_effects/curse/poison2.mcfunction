# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# hp is 8+ (4+ hearts)
execute as @s[scores={__hp=8..}] run function __:timer/1s/all_players/manage_effects/curse/poison2/good_hp
{
    #!sb global __temp1 = 4
    function __:util/random

    # 75%: 3s poison
    execute if score global __result1 matches 0..2 run effect give @s poison 3 0 true

    # 25%: 4s poison w/ sound
    execute if score global __result1 matches 3 run function __:timer/1s/all_players/manage_effects/curse/poison2/good_hp/heavy
    {
        effect give @s poison 4 0 true
        execute at @s run playsound entity.witch.celebrate ambient @s ~ ~10000 ~ 100000000 1 1

        # particle effect
        #!sb @s __poison = 2
    }
}

# hp is 7 (3.5 hearts)
execute as @s[scores={__hp=7}] run effect give @s poison 3 0 true

# hp is 6 (3 hearts)
execute as @s[scores={__hp=6}] run effect give @s poison 2 0 true
