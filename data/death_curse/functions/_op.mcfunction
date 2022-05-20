# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# Prints common scoreboard values used for debugging
#! __:op/print_debug
{
    # ----- DEBUG START -----
    tellraw @s {"text":"----- DEBUG START -----\n "}

    # global id:
    # id:
    tellraw @a ["",{"text":"global id: "},{"score":{"name":"global","objective":"__id"}},{"text":"\nid: "},{"score":{"name":"@s","objective":"__id"}},{"text":"\n "}]

    # deaths:
    # level:
    # time alive:
    # hp:
    tellraw @s ["",{"text":"deaths: "},{"score":{"name":"@s","objective":"__deaths"}},{"text":"\nlevel: "},{"score":{"name":"@s","objective":"__level"}},{"text":"\ntime alive: "},{"score":{"name":"@s","objective":"__time_alive"}},{"text":"\nhp: "},{"score":{"name":"@s","objective":"__hp"}},{"text":"\n "}]

    # curse intro:
    # give book:
    # n books:
    tellraw @s ["",{"text":"curse intro: "},{"score":{"name":"@s","objective":"__intro"}},{"text":"\ngive book: "},{"score":{"name":"@s","objective":"__give_book"}},{"text":"\nn books: "},{"score":{"name":"@s","objective":"__n_books"}},{"text":"\n "}]

    # global effect timer:
    # effect offset1:
    # effect offset2:
    # effect offset3:
    # effect offset4:
    tellraw @s ["",{"text":"global effect timer: "},{"score":{"name":"global","objective":"__effect_timer"}},{"text":"\neffect offset1: "},{"score":{"name":"@s","objective":"__effect_offset1"}},{"text":"\neffect offset2: "},{"score":{"name":"@s","objective":"__effect_offset2"}},{"text":"\neffect offset3: "},{"score":{"name":"@s","objective":"__effect_offset3"}},{"text":"\neffect offset4: "},{"score":{"name":"@s","objective":"__effect_offset4"}},{"text":"\n "}]

    # curse cookie 1:
    # curse cookie 1 end:
    # curse cookie 2:
    # curse cookie 2 end:
    # curse cookie 3:
    # curse cookie 3 end:
    tellraw @s ["",{"text":"curse cookie 1: "},{"score":{"name":"@s","objective":"__curse_cookie1_effect"}},{"text":"\ncurse cookie 1 end: "},{"score":{"name":"@s","objective":"__curse_cookie1_effect_end"}},{"text":"\ncurse cookie 2: "},{"score":{"name":"@s","objective":"__curse_cookie2_effect"}},{"text":"\ncurse cookie 2 end: "},{"score":{"name":"@s","objective":"__curse_cookie2_effect_end"}},{"text":"\ncurse cookie 3: "},{"score":{"name":"@s","objective":"__curse_cookie3_effect"}},{"text":"\ncurse cookie 3 end: "},{"score":{"name":"@s","objective":"__curse_cookie3_effect_end"}},{"text":"\n "}]

    # ----- DEBUG END -----
    tellraw @s {"text":"----- DEBUG END -----"}
}

# Remove all scoreboard objectives and clear all scheduled functions
#! __:op/clear_all
{
    scoreboard objectives remove __id

    scoreboard objectives remove __deaths
    scoreboard objectives remove __level
    scoreboard objectives remove __time_alive
    scoreboard objectives remove __prev_level
    scoreboard objectives remove __hp

    scoreboard objectives remove __intro
    scoreboard objectives remove __introduced
    scoreboard objectives remove __give_book
    scoreboard objectives remove __n_books

    scoreboard objectives remove __effect_timer

    scoreboard objectives remove __effect_offset1
    scoreboard objectives remove __effect_offset2
    scoreboard objectives remove __effect_offset3
    scoreboard objectives remove __effect_offset4

    scoreboard objectives remove __deaths_increase
    scoreboard objectives remove __deaths_increase_end
    scoreboard objectives remove __deaths_decrease
    scoreboard objectives remove __deaths_decrease_end

    scoreboard objectives remove __fatigue1
    scoreboard objectives remove __fatigue1_end

    scoreboard objectives remove __hostile
    scoreboard objectives remove __cloak1_id
    scoreboard objectives remove __cloak2_id
    scoreboard objectives remove __cloak_end
    scoreboard objectives remove __cloak_level
    scoreboard objectives remove __cloaking
    scoreboard objectives remove __cloaking_end

    scoreboard objectives remove __fatigue2
    scoreboard objectives remove __fatigue2_end

    scoreboard objectives remove __poison
    scoreboard objectives remove __poison_end

    scoreboard objectives remove __fatigue3
    scoreboard objectives remove __fatigue3_end

    scoreboard objectives remove __mob_aggression
    scoreboard objectives remove __mob_aggression_end
    scoreboard objectives remove __angry
    scoreboard objectives remove __angry_end

    scoreboard objectives remove __feared
    scoreboard objectives remove __feared_end
    scoreboard objectives remove __feared_init
    scoreboard objectives remove __next_fast_beat
    scoreboard objectives remove __next_slow_beat

    scoreboard objectives remove __holding_curse_cookie1
    scoreboard objectives remove __holding_curse_cookie2
    scoreboard objectives remove __holding_curse_cookie3
    scoreboard objectives remove __eaten_cookie
    scoreboard objectives remove __curse_cookie1_effect
    scoreboard objectives remove __curse_cookie2_effect
    scoreboard objectives remove __curse_cookie3_effect
    scoreboard objectives remove __curse_cookie1_effect_end
    scoreboard objectives remove __curse_cookie2_effect_end
    scoreboard objectives remove __curse_cookie3_effect_end

    scoreboard objectives remove __arg1
    scoreboard objectives remove __arg2
    scoreboard objectives remove __result1
    scoreboard objectives remove __result2

    # clear all scheduled functions
    schedule clear __:timer/2t
    schedule clear __:timer/10t
    schedule clear __:timer/1s
    schedule clear __:timer/10s
    schedule clear __:timer/1h
}
