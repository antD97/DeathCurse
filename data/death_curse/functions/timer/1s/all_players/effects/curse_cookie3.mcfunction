# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

execute at @s run particle ambient_entity_effect ~ ~ ~ 0 0 0 1 3

execute as @s[scores={__curse_cookie3_effect=300}] run title @s actionbar {"text":"Curse Reduction III effect ends in 5 minutes...","italic":true}
execute as @s[scores={__curse_cookie3_effect=60}] run title @s actionbar {"text":"Curse Reduction III effect ends in 1 minute...","italic":true}

execute as @s[scores={__curse_cookie3_effect=10}] run title @s actionbar {"text":"Curse Reduction III ends in 10 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=9}] run title @s actionbar {"text":"Curse Reduction III ends in 9 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=8}] run title @s actionbar {"text":"Curse Reduction III ends in 8 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=7}] run title @s actionbar {"text":"Curse Reduction III ends in 7 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=6}] run title @s actionbar {"text":"Curse Reduction III ends in 6 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=5}] run title @s actionbar {"text":"Curse Reduction III ends in 5 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=4}] run title @s actionbar {"text":"Curse Reduction III ends in 4 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=3}] run title @s actionbar {"text":"Curse Reduction III ends in 3 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=2}] run title @s actionbar {"text":"Curse Reduction III ends in 2 seconds...","italic":true}
execute as @s[scores={__curse_cookie3_effect=1}] run title @s actionbar {"text":"Curse Reduction III ends in 1 second...","italic":true}
