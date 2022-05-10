# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# prints common scoreboard values used for debugging

# ----- DEBUG START -----
tellraw @s {"text":"----- DEBUG START -----\n "}

# global id:
# id:
tellraw @a ["",{"text":"global id: "},{"score":{"name":"global","objective":"death_curse_id"}},{"text":"\nid: "},{"score":{"name":"@s","objective":"death_curse_id"}},{"text":"\n "}]

# level:
# time alive:
tellraw @s ["",{"text":"level: "},{"score":{"name":"@s","objective":"death_curse_level"}},{"text":"\ntime alive: "},{"score":{"name":"@s","objective":"death_curse_time_alive"}},{"text":"\n "}]

# curse intro:
# give book:
# n books:
tellraw @s ["",{"text":"curse intro: "},{"score":{"name":"@s","objective":"death_curse_intro"}},{"text":"\ngive book: "},{"score":{"name":"@s","objective":"death_curse_give_book"}},{"text":"\nn books: "},{"score":{"name":"@s","objective":"death_curse_n_books"}},{"text":"\n "}]

# global effect timer:
# effect offset1:
# effect offset2:
# effect offset3:
# effect offset4:
tellraw @s ["",{"text":"global effect timer: "},{"score":{"name":"global","objective":"death_curse_effect_timer"}},{"text":"\neffect offset1: "},{"score":{"name":"@s","objective":"death_curse_effect_offset1"}},{"text":"\neffect offset2: "},{"score":{"name":"@s","objective":"death_curse_effect_offset2"}},{"text":"\neffect offset3: "},{"score":{"name":"@s","objective":"death_curse_effect_offset3"}},{"text":"\neffect offset4: "},{"score":{"name":"@s","objective":"death_curse_effect_offset4"}},{"text":"\n "}]

# ----- DEBUG END -----
tellraw @s {"text":"----- DEBUG END -----"}
