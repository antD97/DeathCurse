# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# remove silent effect
execute as @s[scores={death_curse_cloak2_id=1..}] run data merge entity @s {Silent:0b}

# removes cloak id scores from the executor
scoreboard players set @s death_curse_cloak1_id 0
scoreboard players set @s death_curse_cloak2_id 0
