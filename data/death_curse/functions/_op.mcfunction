# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# this file is for defining functions only

#! __:op/disable_for_player
{
    tellraw @s ["",{"text":"Click "},{"text":"[here]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set <player> death_curse_disable 1"}},{"text":" and change <player> to the name of the player you want to disable the curse for."}]
}

#! __:op/enable_for_player
{
    tellraw @s ["",{"text":"Click "},{"text":"[here]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set <player> death_curse_disable 0"}},{"text":" and change <player> to the name of the player you want to enable the curse for."}]
}

# Remove all scoreboard objectives and clear all scheduled functions
#! __:op/uninstall
{
    # clear all objectives
    scoreboard objectives remove __id

    scoreboard objectives remove __deaths
    scoreboard objectives remove __time_alive
    scoreboard objectives remove __hp
    scoreboard objectives remove __food

    scoreboard objectives remove __eaten_beetroot_soup
    scoreboard objectives remove __eaten_cookie
    scoreboard objectives remove __slept

    scoreboard objectives remove __curse_level
    scoreboard objectives remove __prev_level

    scoreboard objectives remove __intro
    scoreboard objectives remove __book
    scoreboard objectives remove __level

    scoreboard objectives remove __introduced
    scoreboard objectives remove __n_books

    scoreboard objectives remove __deaths_increase
    scoreboard objectives remove __deaths_decrease1
    scoreboard objectives remove __deaths_decrease2
    scoreboard objectives remove __deaths_decrease3

    scoreboard objectives remove __30s_cd
    scoreboard objectives remove __45s_cd
    scoreboard objectives remove __1m40s_cd
    scoreboard objectives remove __2m_cd
    scoreboard objectives remove __3m_cd
    scoreboard objectives remove __5m_cd

    scoreboard objectives remove __fatigue1

    scoreboard objectives remove __cloaking
    scoreboard objectives remove __cloak
    scoreboard objectives remove __cloak1_id
    scoreboard objectives remove __cloak2_id
    scoreboard objectives remove __cloak_level

    scoreboard objectives remove __fatigue2

    scoreboard objectives remove __poison

    scoreboard objectives remove __fatigue3

    scoreboard objectives remove __mob_aggression
    scoreboard objectives remove __mob_aggression_close
    scoreboard objectives remove __angry

    scoreboard objectives remove __feared
    scoreboard objectives remove __feared_init

    scoreboard objectives remove __holding_curse_cookie1
    scoreboard objectives remove __holding_curse_cookie2
    scoreboard objectives remove __holding_curse_cookie3
    scoreboard objectives remove __curse_cookie1_effect
    scoreboard objectives remove __curse_cookie2_effect
    scoreboard objectives remove __curse_cookie3_effect

    scoreboard objectives remove __holding_res_abom1
    scoreboard objectives remove __holding_res_abom2
    scoreboard objectives remove __holding_res_abom3
    scoreboard objectives remove __res_abom_effect1
    scoreboard objectives remove __res_abom_effect2
    scoreboard objectives remove __res_abom_effect3

    scoreboard objectives remove __resurrected1
    scoreboard objectives remove __resurrected2
    scoreboard objectives remove __resurrected3

    scoreboard objectives remove __15s_cd
    scoreboard objectives remove __shiver
    scoreboard objectives remove __panic

    scoreboard objectives remove __smoke
    scoreboard objectives remove __strike

    scoreboard objectives remove __temp1
    scoreboard objectives remove __temp2
    scoreboard objectives remove __temp3
    scoreboard objectives remove __result1
    scoreboard objectives remove __result2

    # clear all scheduled functions
    schedule clear __:timer/1t
    schedule clear __:timer/2t
    schedule clear __:timer/10t
    schedule clear __:timer/1s
    schedule clear __:timer/10s
    schedule clear __:timer/1h

    # reset attributes
    attribute @s generic.max_health base set 20

    # removed special tagged mobs
    #!find=marker
    #!replace=marker|skeleton|wither_skeleton|ghast
    kill @e[type=marker,tag=__res_event]
}

# prints cd values
#! __:op/debug/cds
{
    tellraw @s ["",{"text":"----- COOLDOWNS -----\n15s: "},{"score":{"name":"@s","objective":"__15s_cd"}},{"text":"\n30s: "},{"score":{"name":"@s","objective":"__30s_cd"}},{"text":"\n45s: "},{"score":{"name":"@s","objective":"__45s_cd"}},{"text":"\n1m40s: "},{"score":{"name":"@s","objective":"__1m40s_cd"}},{"text":"\n2m: "},{"score":{"name":"@s","objective":"__2m_cd"}},{"text":"\n3m: "},{"score":{"name":"@s","objective":"__3m_cd"}},{"text":"\n5m: "},{"score":{"name":"@s","objective":"__5m_cd"}},{"text":"\n---------------------"}]
}

# prints effect duration values
#! __:op/debug/effects
{
    tellraw @s ["",{"text":"----- EFFECTS -----\ndeaths increase: "},{"score":{"name":"@s","objective":"__deaths_increase"}},{"text":"\ndeaths decrease1: "},{"score":{"name":"@s","objective":"__deaths_decrease1"}},{"text":"\ndeaths decrease2: "},{"score":{"name":"@s","objective":"__deaths_decrease2"}},{"text":"\ndeaths decrease3: "},{"score":{"name":"@s","objective":"__deaths_decrease3"}},{"text":"\n\nfatigue1: "},{"score":{"name":"@s","objective":"__fatigue1"}},{"text":"\ncloaking: "},{"score":{"name":"@s","objective":"__cloaking"}},{"text":"\nfatigue2: "},{"score":{"name":"@s","objective":"__fatigue2"}},{"text":"\npoison: "},{"score":{"name":"@s","objective":"__poison"}},{"text":"\nfatigue3: "},{"score":{"name":"@s","objective":"__fatigue3"}},{"text":"\nmob aggression: "},{"score":{"name":"@s","objective":"__mob_aggression"}},{"text":"\nmob aggression close: "},{"score":{"name":"@s","objective":"__mob_aggression_close"}},{"text":"\nfeared: "},{"score":{"name":"@s","objective":"__feared"}},{"text":"\nfeared init: "},{"score":{"name":"@s","objective":"__feared_init"}},{"text":"\n\ncurse cookie 1: "},{"score":{"name":"@s","objective":"__curse_cookie1_effect"}},{"text":"\ncurse cookie 2: "},{"score":{"name":"@s","objective":"__curse_cookie2_effect"}},{"text":"\ncurse cookie 3: "},{"score":{"name":"@s","objective":"__curse_cookie3_effect"}},{"text":"\n\nres. abom. 1: "},{"score":{"name":"@s","objective":"__res_abom_effect1"}},{"text":"\nres. abom. 2: "},{"score":{"name":"@s","objective":"__res_abom_effect2"}},{"text":"\nres. abom. 3: "},{"score":{"name":"@s","objective":"__res_abom_effect3"}},{"text":"\n\nshiver: "},{"score":{"name":"@s","objective":"__shiver"}},{"text":"\n-------------------"}]
}
