# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# this file is for defining functions only

#! __:item/guide_book
{
    # display:{Name:'{"text":"The Death Curse","color":"#AA0000","bold":true,"italic":true}'},
    give @s written_book{display:{Name:'{"text":"The Death Curse","color":"#AA0000","bold":true,"italic":true}'},pages:['["",{"text":"\\n\\n \\u0020 \\u0020The "},{"text":"Death Curse","color":"dark_red"},{"text":"\\n \\u0020 \\u0020 \\u0020 \\u0020 by antD\\n\\n\\n \\u0020 \\u0020 \\u0020 \\u0020","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020 ","underlined":true},{"text":"\\n\\n\\n\\n \\u0020 \\u0020An introductory\\n \\u0020 \\u0020 \\u0020 guide book","color":"reset"}]','["",{"text":"   Table of Contents   ","underlined":true},{"text":"\\n\\n\\n\\u2022 p3: ","color":"reset"},{"text":"Introduction","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":3}},{"text":"\\n\\u2022 p5: ","color":"reset"},{"text":"Curse Effects","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":5}},{"text":"\\n\\u2022 p15: ","color":"reset"},{"text":"Curse Relief","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":15}},{"text":"\\n\\u2022 p25: ","color":"reset"},{"text":"Player Triggers","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":25}},{"text":"\\n\\u2022 p28: ","color":"reset"},{"text":"Project Page","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":28}},{"text":"\\n\\n\\nClicking the header of any page will bring you back to this page.","color":"reset"}]','["",{"text":" \\u0020 Introduction (1/2) \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020Gone are the days of respawning for free. Don\'t you know bringing someone back to life comes with a price? It\'s about time you learn.\\n \\u0020For every subsequent life you live, you will find life to be increasingly ","color":"reset"},{"text":"unstable","italic":true},{"text":". ","color":"reset"},{"text":"Enjoy.","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 Introduction (2/2) \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020Be sure to check out the project page at the back of this book to get the ","color":"reset"},{"text":"resource pack","underlined":true},{"text":"! Also, I intentionally left this book pretty vague so that you can have fun learning the mechanics. If you want more details check out the project page.","color":"reset"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020Level I \\u0020 \\u0020 \\u0020 \\u0020 \\u0020","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAfter one death, you will experience:\\n\\n\\u2022 ","color":"reset"},{"text":"nausea","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020Level II \\u0020 \\u0020 \\u0020 \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAfter two deaths, you will experience:\\n\\n\\u2022 ","color":"reset"},{"text":"-1\\u2665","color":"dark_red"},{"text":"\\n\\u2022 nausea\\n\\u2022 ","color":"reset"},{"text":"fatigue","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020 Level III \\u0020 \\u0020 \\u0020 \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAfter three deaths, you will experience:\\n\\n\\u2022 -1\\u2665\\n\\u2022 nausea\\n\\u2022 fatigue\\n\\u2022 ","color":"reset"},{"text":"curse leak","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020Level IV \\u0020 \\u0020 \\u0020 \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAfter four deaths, you will experience:\\n\\n\\u2022 ","color":"reset"},{"text":"-2\\u2665","color":"dark_red"},{"text":"\\n\\u2022 ","color":"reset"},{"text":"heavy nausea","color":"dark_red"},{"text":"\\n\\u2022 ","color":"reset"},{"text":"heavy fatigue","color":"dark_red"},{"text":"\\n\\u2022 curse leak\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020Level V \\u0020 \\u0020 \\u0020 \\u0020 \\u0020","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAfter five deaths, you will experience:\\n\\n\\u2022 -2\\u2665\\n\\u2022 heavy nausea\\n\\u2022 heavy fatigue\\n\\u2022 curse leak\\n\\u2022 ","color":"reset"},{"text":"poison","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020Level VI \\u0020 \\u0020 \\u0020 \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAfter six deaths, you will experience:\\n\\n\\u2022 ","color":"reset"},{"text":"-3\\u2665","color":"dark_red"},{"text":"\\n\\u2022 heavy nausea\\n\\u2022 heavy fatigue\\n\\u2022 ","color":"reset"},{"text":"heavy curse leak","color":"dark_red"},{"text":"\\n\\u2022 poison\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020Level VII \\u0020 \\u0020 \\u0020 \\u0020","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAfter seven deaths, ","color":"reset"},{"text":"y","obfuscated":true},{"text":"ou will experience:\\n\\n\\u2022 -3\\u2665\\n\\u2022 heavy nausea\\n\\u2022 ","color":"reset"},{"text":"intense fatigue","color":"dark_red"},{"text":"\\n\\u2022 heavy curse leak\\n\\u2022 poison\\n ","color":"reset"}]','["",{"text":"         Level VIII        ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAf","color":"reset"},{"text":"t","obfuscated":true},{"text":"er eight deaths, you will experi","color":"reset"},{"text":"e","obfuscated":true},{"text":"nce:\\n\\n\\u2022 ","color":"reset"},{"text":"-4\\u2665","color":"dark_red"},{"text":"\\n\\u2022 heavy nausea\\n\\u2022 intense fatigue\\n\\u2022 heavy curse leak\\n\\u2022 ","color":"reset"},{"text":"h","color":"dark_red"},{"text":"e","obfuscated":true,"color":"dark_red"},{"text":"avy poison","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":"          Level XI         ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nAft","color":"reset"},{"text":"er","obfuscated":true},{"text":" nine dea","color":"reset"},{"text":"t","obfuscated":true},{"text":"hs, you wi","color":"reset"},{"text":"l","obfuscated":true},{"text":"l experie","color":"reset"},{"text":"n","obfuscated":true},{"text":"ce:\\n\\n\\u2022 -4\\u2665\\n\\u2022 heavy nause","color":"reset"},{"text":"a","obfuscated":true},{"text":"\\n\\u2022 intense fatigue\\n\\u2022 h","color":"reset"},{"text":"e","obfuscated":true},{"text":"avy curse leak\\n\\u2022 heavy poison\\n\\u2022 ","color":"reset"},{"text":"mob aggression","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":"          L","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"e","underlined":true,"obfuscated":true,"clickEvent":{"action":"change_page","value":2}},{"text":"vel ","color":"reset","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"X","underlined":true,"obfuscated":true,"clickEvent":{"action":"change_page","value":2}},{"text":"          ","color":"reset","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n","color":"reset"},{"text":"Aft","obfuscated":true},{"text":"er ","color":"reset"},{"text":"t","obfuscated":true},{"text":"en dea","color":"reset"},{"text":"th","obfuscated":true},{"text":"s, y","color":"reset"},{"text":"ou","obfuscated":true},{"text":" w","color":"reset"},{"text":"i","obfuscated":true},{"text":"ll e","color":"reset"},{"text":"xpe","obfuscated":true},{"text":"r","color":"reset"},{"text":"i","obfuscated":true},{"text":"e","color":"reset"},{"text":"nc","obfuscated":true},{"text":"e:\\n\\n\\u2022 ","color":"reset"},{"text":"-5\\u2665","color":"dark_red"},{"text":"\\n\\u2022 heavy n","color":"reset"},{"text":"a","obfuscated":true},{"text":"usea\\n\\u2022 in","color":"reset"},{"text":"t","obfuscated":true},{"text":"ense fatigue\\n\\u2022 heavy curs","color":"reset"},{"text":"e","obfuscated":true},{"text":" leak\\n\\u2022 he","color":"reset"},{"text":"av","obfuscated":true},{"text":"y poison\\n\\u2022 mob aggre","color":"reset"},{"text":"s","obfuscated":true},{"text":"sion\\n\\u2022 ","color":"reset"},{"text":"fear","color":"dark_red"},{"text":"\\n\\n ","color":"reset"}]','["",{"text":"      Curse Relief      ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n\\n  There are three different ways to relieve yourself of the ","color":"reset"},{"text":"Death Curse","color":"dark_red"},{"text":" effects.\\n\\n\\u2022 ","color":"reset"},{"text":"Curse Cookies","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":16}},{"text":"\\n\\u2022 ","color":"reset"},{"text":"Curse Wards","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":19}},{"text":"\\n\\u2022 ","color":"reset"},{"text":"Resurrection","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":22}},{"text":"\\n  ","color":"aqua"},{"text":"Abominations","underlined":true,"color":"aqua","clickEvent":{"action":"change_page","value":22}},{"text":"\\n\\n ","color":"reset"}]','["",{"text":" \\u0020Curse Cookies (1/3) \\u0020","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020Curse cookies are the most cost effective way to reduce the negative effects of the ","color":"reset"},{"text":"Death Curse","color":"dark_red"},{"text":". Eating a curse cookie will reduce your curse level by one for 30 minutes.\\n \\u0020You can create a curse cookie in a\\n\\n ","color":"reset"}]','["",{"text":" \\u0020Curse Cookies (2/3) \\u0020","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\ncrafting table by surrounding a beetroot by four golden nuggets.\\n \\u0020When dropped on the ground, curse cookies prefer to morph together. If four curse cookies are left on the ground together, after\\n\\n ","color":"reset"}]','["",{"text":" \\u0020Curse Cookies (3/3) \\u0020","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n10-20 seconds, they will combine into a more potent cookie.\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 Curse Wards (1/3) \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020Curse Wards are the next step up in both curse relief and cost. Instead of needing to be consumed, a curse ward will decrease your curse level just by being in your inventory. They also have the added bonus of being tougher than\\n\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 Curse Wards (2/3) \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nyour average item. Curse wards are immune to despawning, fire, and lava, but are ","color":"reset"},{"text":"not","underlined":true},{"text":" immune to explosions.\\n \\u0020You can create a curse ward in a crafting table by surrounding a beetroot by four diamond blocks.\\n\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 Curse Wards (3/3) \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020Similar to curse cookies, four curse wards can be combined to create a stronger version. They are combined in the same way as curse cookies but, unlike curse cookies, have an additional requirement of ","color":"reset"},{"text":"heat","italic":true},{"text":".\\n\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 Abominations (1/3) \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n \\u0020Resurrection abominations are the final form of curse relief. With one, you can can start the resurrection ritual which will ","color":"reset"},{"text":"permanently","italic":true},{"text":" undo death.\\n \\u0020Once the resurrection ritual has begun, players will not be able to\\n\\n\\n ","color":"reset"}]','["",{"text":"   Abominations (2/3)   ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nsleep until it is complete. To complete the ritual, any players taking part ","color":"reset"},{"text":"must stand outside at midnight","underlined":true},{"text":". If this criteria is not met, the ritual will fail and the item will be lost. It is ","color":"reset"},{"text":"strongly advised","italic":true},{"text":" to ","color":"reset"},{"text":"empty your inventory before midnight","underlined":true},{"text":".\\n  You can create a\\n ","color":"reset"}]','["",{"text":" \\u0020 Abominations (3/3) \\u0020 ","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nresurrection abomination in a crafting table by surrounding a netherite ingot by four beetroot.\\n \\u0020I bet there\'s a way to make these even more powerful. I just need to find a place that can handle that much heat.","color":"reset"}]','["",{"text":"Player Triggers (1/3)","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n\\nPlayer triggers are commands available to all players.\\n\\n","color":"reset"},{"text":"/trigger death_curse_level","color":"gray"},{"text":"\\n","color":"reset"},{"text":"[run command]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger death_curse_level"}},{"text":"\\n\\nTells the player their current death count and curse level.\\n ","color":"reset"}]','["",{"text":"Player Triggers (2/3)","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n\\n","color":"reset"},{"text":"/trigger death_curse_intro","color":"gray"},{"text":"\\n","color":"reset"},{"text":"[run command]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger death_curse_intro"}},{"text":"\\n\\nResends the ","color":"reset"},{"text":"Death Curse","color":"dark_red"},{"text":" introductory message.\\n ","color":"reset"}]','["",{"text":"Player Triggers (3/3)","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\n\\n","color":"reset"},{"text":"/trigger death_curse_book","color":"gray"},{"text":"\\n","color":"reset"},{"text":"[run command]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger death_curse_book"}},{"text":"\\n\\nGives the player another copy of this ","color":"reset"},{"text":"Death Curse","color":"dark_red"},{"text":" guide book.\\n\\n ","color":"reset"}]','["",{"text":" \\u0020 \\u0020 \\u0020Project Page \\u0020 \\u0020 \\u0020","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nTo get the complimentary resource pack, updated downloads, and more desccriptive details on all the mechanics, check out the project page ","color":"reset"},{"text":"[here]","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/antD97/DeathCurse"}},{"text":".","color":"reset"}]','["",{"text":" \\u0020 \\u0020Acknowledgments \\u0020 \\u0020","underlined":true,"clickEvent":{"action":"change_page","value":2}},{"text":"\\nBig thank you to my sister for helping me with the creative writing aspects of this project.","color":"reset"}]'],title:"The Death Curse",author:antD,generation:3}
}

#! __:item/curse_ward1
{
    recipe take @s __:curse_ward1
    advancement revoke @s only __:crafting/curse_ward1
    give @s enchanted_book{display:{Name:'{"text":"Curse Ward I","color":"#AA0000","bold":true,"italic":true}',Lore:['{"text":"-1 Death Curse Level"}']},CustomModelData:379300} 1
    clear @s minecraft:knowledge_book
}

#! __:item/curse_ward2
{
    give @s enchanted_book{display:{Name:'{"text":"Curse Ward II","color":"#440000","bold":true,"italic":true}',Lore:['{"text":"-3 Death Curse Levels"}']},CustomModelData:379301} 1
}

#! __:item/curse_ward3
{
    give @s enchanted_book{display:{Name:'{"text":"Curse Ward III","color":"#000000","bold":true,"italic":true}',Lore:['{"text":"-11 Death Curse Levels"}']},CustomModelData:379302} 1
}

#! __:item/curse_cookie1
{
    recipe take @s __:curse_cookie1
    advancement revoke @s only __:crafting/curse_cookie1
    give @s cookie{display:{Name:'{"text":"Curse Cookie I","color":"#AA0000","bold":true,"italic":true}',Lore:['{"text":"-1 Death Curse Level for 30m"}']},CustomModelData:379303} 1
    clear @s minecraft:knowledge_book
}

#! __:item/curse_cookie2
{
    give @s cookie{display:{Name:'{"text":"Curse Cookie II","color":"#440000","bold":true,"italic":true}',Lore:['{"text":"-3 Death Curse Levels for 30m"}']},CustomModelData:379304} 1
}

#! __:item/curse_cookie3
{
    give @s cookie{display:{Name:'{"text":"Curse Cookie III","color":"#000000","bold":true,"italic":true}',Lore:['{"text":"-11 Death Curse Levels for 30m"}']},CustomModelData:379305} 1
}

#! __:item/resurrection_abomination1
{
    recipe take @s __:resurrection_abomination1
    advancement revoke @s only __:crafting/resurrection_abomination1
    give @s beetroot_soup{display:{Name:'[{"text":"Resurr","color":"#AA0000","bold":true,"italic":true},{"text":"e","color":"#AA0000","bold":true,"italic":true,"obfuscated":true},{"text":"ction Abomination ","color":"#AA0000","bold":true,"italic":true},{"text":"I","color":"#AA0000","bold":true,"italic":true,"obfuscated":true}]',Lore:['{"text":"-1 Death"}']},CustomModelData:379306,Enchantments:[{}]} 1
    clear @s minecraft:knowledge_book
}

#! __:item/resurrection_abomination2
{
    give @s beetroot_soup{display:{Name:'[{"text":"Re","color":"#440000","bold":true,"italic":true},{"text":"su","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"rrection Abomina","color":"#440000","bold":true,"italic":true},{"text":"t","color":"#440000","bold":true,"italic":true,"obfuscated":true},{"text":"ion II","color":"#440000","bold":true,"italic":true}]',Lore:['[{"text":"-3 D"},{"text":"e","obfuscated":true},{"text":"aths"}]']},CustomModelData:379307,Enchantments:[{}]} 1
}

#! __:item/resurrection_abomination3
{
    give @s beetroot_soup{display:{Name:'[{"text":"R","color":"#000000","bold":true,"italic":true},{"text":"es","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"urre","color":"#000000","bold":true,"italic":true},{"text":"c","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"tion Abom","color":"#000000","bold":true,"italic":true},{"text":"i","color":"#000000","bold":true,"italic":true,"obfuscated":true},{"text":"nati","color":"#000000","bold":true,"italic":true},{"text":"o","color":"black","bold":true,"italic":true,"obfuscated":true},{"text":"n III","color":"#000000","bold":true,"italic":true}]',Lore:['[{"text":"-11 Dea"},{"text":"th","obfuscated":true},{"text":"s"}]']},CustomModelData:379308,Enchantments:[{}]} 1
}
