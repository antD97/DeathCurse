# Copyright © 2022-2023 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# executed on every item every 10s

# curse wards
execute as @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379300}}}] run function __:timer/10s/all_items/curse_ward1
execute as @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379301}}}] run function __:timer/10s/all_items/curse_ward2
execute as @s[nbt={Item:{id:"minecraft:enchanted_book",tag:{CustomModelData:379302}}}] run data modify entity @s Age set value -32768s

# curse cookies
execute as @s[nbt={Item:{id:"minecraft:cookie",tag:{CustomModelData:379303}}}] run function __:timer/10s/all_items/curse_cookie1
execute as @s[nbt={Item:{id:"minecraft:cookie",tag:{CustomModelData:379304}}}] run function __:timer/10s/all_items/curse_cookie2

# resurrection abominations
execute as @s[nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379306}}}] run function __:timer/10s/all_items/res_abom1
execute as @s[nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379307}}}] run function __:timer/10s/all_items/res_abom2
execute as @s[nbt={Item:{id:"minecraft:beetroot_soup",tag:{CustomModelData:379308}}}] run data modify entity @s Age set value -32768s
