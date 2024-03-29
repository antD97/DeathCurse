# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

execute at @s run particle ambient_entity_effect ~ ~ ~ 0 0 0 1 1

execute as @s[scores={__curse_cookie1_effect=300}] run title @s actionbar {"text":"Curse Reduction I effect ends in 5 minutes...","italic":true}
execute as @s[scores={__curse_cookie1_effect=60}] run title @s actionbar {"text":"Curse Reduction I effect ends in 1 minute...","italic":true}

execute as @s[scores={__curse_cookie1_effect=10}] run title @s actionbar {"text":"Curse Reduction I ends in 10 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=9}] run title @s actionbar {"text":"Curse Reduction I ends in 9 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=8}] run title @s actionbar {"text":"Curse Reduction I ends in 8 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=7}] run title @s actionbar {"text":"Curse Reduction I ends in 7 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=6}] run title @s actionbar {"text":"Curse Reduction I ends in 6 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=5}] run title @s actionbar {"text":"Curse Reduction I ends in 5 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=4}] run title @s actionbar {"text":"Curse Reduction I ends in 4 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=3}] run title @s actionbar {"text":"Curse Reduction I ends in 3 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=2}] run title @s actionbar {"text":"Curse Reduction I ends in 2 seconds...","italic":true}
execute as @s[scores={__curse_cookie1_effect=1}] run title @s actionbar {"text":"Curse Reduction I ends in 1 second...","italic":true}
