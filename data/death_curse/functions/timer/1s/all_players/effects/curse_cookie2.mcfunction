# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

execute at @s run particle ambient_entity_effect ~ ~ ~ 0 0 0 1 2

execute as @s[scores={__curse_cookie2_effect=300}] run title @s actionbar {"text":"Curse Reduction II effect ends in 5 minutes...","italic":true}
execute as @s[scores={__curse_cookie2_effect=60}] run title @s actionbar {"text":"Curse Reduction II effect ends in 1 minute...","italic":true}

execute as @s[scores={__curse_cookie2_effect=10}] run title @s actionbar {"text":"Curse Reduction II ends in 10 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=9}] run title @s actionbar {"text":"Curse Reduction II ends in 9 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=8}] run title @s actionbar {"text":"Curse Reduction II ends in 8 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=7}] run title @s actionbar {"text":"Curse Reduction II ends in 7 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=6}] run title @s actionbar {"text":"Curse Reduction II ends in 6 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=5}] run title @s actionbar {"text":"Curse Reduction II ends in 5 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=4}] run title @s actionbar {"text":"Curse Reduction II ends in 4 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=3}] run title @s actionbar {"text":"Curse Reduction II ends in 3 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=2}] run title @s actionbar {"text":"Curse Reduction II ends in 2 seconds...","italic":true}
execute as @s[scores={__curse_cookie2_effect=1}] run title @s actionbar {"text":"Curse Reduction II ends in 1 second...","italic":true}
