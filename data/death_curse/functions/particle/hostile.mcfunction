# Copyright © 2022 antD97
# Licensed under the MIT License https://antD.mit-license.org/

# Creates particle effects for hostile executors

# cloak
execute as @s[scores={__cloak1_id=1..}] run function __:particle/hostile/cloak
execute as @s[scores={__cloak2_id=1..}] run function __:particle/hostile/cloak
# mob aggression
execute as @s[scores={__angry=1}] run function __:particle/hostile/angry
