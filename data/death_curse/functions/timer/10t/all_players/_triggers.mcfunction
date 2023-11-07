# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# this file is for defining functions only

#! __:timer/10t/all_players/intro_trigger
{
    # prints the death curse introduction message to the executor
    tellraw @s  ["",{"text":"This world has been plagued with the "},{"text":"Death Curse","color":"dark_red"},{"text":"! Click "},{"text":"[here]","color":"#55FFFF","clickEvent":{"action":"run_command","value":"/trigger __book"}},{"text":" for an explanation book."}]

    # set player id if not set
    #!sb @s __id += 0
    execute if score @s __id matches 0 run function __:timer/10t/all_players/intro_trigger/assign_id
    {
        # increment id counter & assign an id
        #!sb global __id += 1
        #!sb @s __id = global __id
    }

    # if hp score doesn't have a value yet, refresh it by giving the player some instant health
    #!sb global __temp1 = 0
    execute as @s[scores={__hp=0..10000}] run scoreboard players set global __temp1 1
    execute if score global __temp1 matches 0 run effect give @s instant_health

    # mark as introduced
    #!sb @s __introduced = 1
}


#! __:timer/10t/all_players/give_book_trigger
{
    #!sb @s __n_books += 1
    execute as @s[scores={__n_books=1..256}] run function __:item/guide_book

    # sass
    tellraw @s[scores={__n_books=1}] {"text":"There you go!"}
    tellraw @s[scores={__n_books=2}] {"text":"What? You lose it already?"}
    tellraw @s[scores={__n_books=3..63}] {"text":"Again? Seriously?"}

    tellraw @s[scores={__n_books=64}] [[""],{"text":"Gah!","color": "#aa0000"},{"text":" Congrats, you've taken a "},{"text":"stack","italic":true},{"text":" of my books. You want a cookie or something?"}]
    execute as @s[scores={__n_books=64}] run function __:item/curse_cookie1

    tellraw @s[scores={__n_books=65..127}] {"text":"Again? Seriously?"}

    tellraw @s[scores={__n_books=128}] ["",{"text":"What?","color":"#aa0000"},{"text":" Another","italic":true},{"text":" stack of books? Surely you're just doing this for the cookies."}]
    execute as @s[scores={__n_books=128}] run function __:item/curse_cookie2

    tellraw @s[scores={__n_books=129..191}] {"text":"Again? Seriously?"}

    tellraw @s[scores={__n_books=192}] "Come on, I know you can do better than that."

    tellraw @s[scores={__n_books=193..255}] {"text":"Again? Seriously?"}

    tellraw @s[scores={__n_books=256}] ["",{"text":"Congrats!","color":"#aa0000"},{"text":"You've taken "},{"text":"four","italic": true},{"text":" stacks of my books. Now take your cookie and leave me alone!"}]
    execute as @s[scores={__n_books=256}] run function __:item/curse_cookie3
    execute as @s[scores={__n_books=256..}] run advancement grant @s only __:cookie3_book

    tellraw @s[scores={__n_books=257..}] {"text":"Sorry, I'm all out of books."}
}

#! __:timer/10t/all_players/curse_level_trigger
{
    execute as @s[scores={__deaths=0}] run tellraw @s {"text":"Current death count: 0"}
    execute as @s[scores={__deaths=1}] run tellraw @s ["",{"text":"Current death count: "},{"text":"1","color":"#AA0000"}]
    execute as @s[scores={__deaths=2}] run tellraw @s ["",{"text":"Current death count: "},{"text":"2","color":"#990000"}]
    execute as @s[scores={__deaths=3}] run tellraw @s ["",{"text":"Current death count: "},{"text":"3","color":"#880000"}]
    execute as @s[scores={__deaths=4}] run tellraw @s ["",{"text":"Current death count: "},{"text":"4","color":"#770000"}]
    execute as @s[scores={__deaths=5}] run tellraw @s ["",{"text":"Current death count: "},{"text":"5","color":"#660000"}]
    execute as @s[scores={__deaths=6}] run tellraw @s ["",{"text":"Current death count: "},{"text":"6","color":"#550000"}]
    execute as @s[scores={__deaths=7}] run tellraw @s ["",{"text":"Current death count: "},{"text":"7","color":"#440000"}]
    execute as @s[scores={__deaths=8}] run tellraw @s ["",{"text":"Current death count: "},{"text":"8","color":"#330000"}]
    execute as @s[scores={__deaths=9}] run tellraw @s ["",{"text":"Current death count: "},{"text":"9","color":"#220000"}]
    execute as @s[scores={__deaths=10..}] run tellraw @s ["",{"text":"Current death count: "},{"score":{"name":"@s","objective":"__deaths"},"color":"#000000"}]

    execute as @s[scores={__curse_level=0}] run tellraw @s {"text":"Current curse level: 0"}
    execute as @s[scores={__curse_level=1}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"1","color":"#AA0000"}]
    execute as @s[scores={__curse_level=2}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"2","color":"#990000"}]
    execute as @s[scores={__curse_level=3}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"3","color":"#880000"}]
    execute as @s[scores={__curse_level=4}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"4","color":"#770000"}]
    execute as @s[scores={__curse_level=5}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"5","color":"#660000"}]
    execute as @s[scores={__curse_level=6}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"6","color":"#550000"}]
    execute as @s[scores={__curse_level=7}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"7","color":"#440000"}]
    execute as @s[scores={__curse_level=8}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"8","color":"#330000"}]
    execute as @s[scores={__curse_level=9}] run tellraw @s ["",{"text":"Current curse level: "},{"text":"9","color":"#220000"}]
    execute as @s[scores={__curse_level=10..}] run tellraw @s ["",{"text":"Current curse level: "},{"score":{"name":"@s","objective":"__curse_level"},"color":"#000000"}]
}
