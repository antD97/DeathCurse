# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# 10s (200t) timer
schedule function death_curse:timer/10s 10s

# intro message
execute as @a[tag=!death_curse_introduced] run function death_curse:player/intro
