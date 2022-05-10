# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# displays the death curse level as a title to the executor

# titles
title @s times 100 50 100

title @s[scores={death_curse_level=1}] title {"text":"Death Curse I","color":"#AA0000"}
title @s[scores={death_curse_level=1}] subtitle {"text":"+nausea","color":"#AA0000"}

title @s[scores={death_curse_level=2}] title {"text":"Death Curse II","color":"#990000"}
title @s[scores={death_curse_level=2}] subtitle {"text":"-\u2665 +fatigue","color":"#990000"}

title @s[scores={death_curse_level=3}] title {"text":"Death Curse III","color":"#880000"}
title @s[scores={death_curse_level=3}] subtitle {"text":"+curse leak","color":"#880000"}

title @s[scores={death_curse_level=4}] title {"text":"Death Curse IV","color":"#770000"}
title @s[scores={death_curse_level=4}] subtitle {"text":"-\u2665 +nausea +fatigue","color":"#770000"}

title @s[scores={death_curse_level=5}] title {"text":"Death Curse V","color":"#660000"}
title @s[scores={death_curse_level=5}] subtitle {"text":"+poison","color":"#660000"}

title @s[scores={death_curse_level=6}] title ["",{"text":"De","color":"#550000"},{"text":"a","obfuscated":true,"color":"#550000"},{"text":"th Curse VI","color":"#550000"}]
title @s[scores={death_curse_level=6}] subtitle {"text":"-\u2665 +curse leak","color":"#550000"}

title @s[scores={death_curse_level=7}] title ["",{"text":"D","obfuscated":true,"color":"#440000"},{"text":"ea","color":"#440000"},{"text":"t","obfuscated":true,"color":"#440000"},{"text":"h Cur","color":"#440000"},{"text":"s","obfuscated":true,"color":"#440000"},{"text":"e VII","color":"#440000"}]
title @s[scores={death_curse_level=7}] subtitle {"text":"+fatigue","color":"#440000"}

title @s[scores={death_curse_level=8}] title ["",{"text":"De","obfuscated":true,"color":"#330000"},{"text":"ath Cur","color":"#330000"},{"text":"s","obfuscated":true,"color":"#330000"},{"text":"e V","color":"#330000"},{"text":"I","obfuscated":true,"color":"#330000"},{"text":"II","color":"#330000"}]
title @s[scores={death_curse_level=8}] subtitle {"text":"-\u2665 +poison","color":"#330000"}

title @s[scores={death_curse_level=9}] title ["",{"text":"D","color":"#220000"},{"text":"e","obfuscated":true,"color":"#220000"},{"text":"a","color":"#220000"},{"text":"th","obfuscated":true,"color":"#220000"},{"text":" C","color":"#220000"},{"text":"u","obfuscated":true,"color":"#220000"},{"text":"rs","color":"#220000"},{"text":"e","obfuscated":true,"color":"#220000"},{"text":" IX","color":"#220000"}]
title @s[scores={death_curse_level=9}] subtitle ["",{"text":"+mob aggre","color":"#220000"},{"text":"s","obfuscated": true,"color":"#220000"},{"text":"sion","color":"#220000"}]

title @s[scores={death_curse_level=10..}] title ["",{"text":"De","obfuscated":true,"color":"black"},{"text":"a","color":"black"},{"text":"t","obfuscated":true,"color":"black"},{"text":"h C","color":"black"},{"text":"ur","obfuscated":true,"color":"black"},{"text":"s","color":"black"},{"text":"e","obfuscated":true,"color":"black"},{"text":" X","obfuscated":true,"color":"black"}]
title @s[scores={death_curse_level=10}] subtitle ["",{"text":"-\u2665 ","color": "black"},{"text":"+","obfuscated": true,"color": "black"},{"text":"fear","color": "black"}]
title @s[scores={death_curse_level=11..}] subtitle ""

# sounds
execute as @s[scores={death_curse_level=1..3}] run playsound minecraft:ambient.crimson_forest.mood ambient @s ~ ~10000 ~ 10000
execute as @s[scores={death_curse_level=4..6}] run playsound minecraft:ambient.soul_sand_valley.mood ambient @s ~ ~10000 ~ 10000
execute as @s[scores={death_curse_level=7..}] run playsound minecraft:ambient.cave ambient @s ~ ~10000 ~ 10000
