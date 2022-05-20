# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# This file is for defining functions only

# Gives the executor a curse ward I
#! __:item/curse_ward1
{
    recipe take @s __:curse_ward1
    advancement revoke @s only __:curse_ward1
    give @s enchanted_book{display:{Name:'{"text":"Curse Ward I","color":"#AA0000","bold":true,"italic":true}',Lore:['{"text":"-1 Death Curse Level"}']},CustomModelData:379300} 1
    clear @s minecraft:knowledge_book
}

# Gives the executor a curse cookie I
#! __:item/curse_cookie1
{
    recipe take @s __:curse_cookie1
    advancement revoke @s only __:curse_cookie1
    give @s cookie{display:{Name:'{"text":"Curse Cookie I","color":"#AA0000","bold":true,"italic":true}',Lore:['{"text":"-1 Death Curse Level for 30m"}']},CustomModelData:379303} 1
    clear @s minecraft:knowledge_book
}

# Make the executing item invulnerable and never despawn
#! __:item/invulnerable
{
    data modify entity @s Invulnerable set value 1b
    data modify entity @s Age set value -32768s
}
