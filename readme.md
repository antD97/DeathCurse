# Death Curse

<!-- [![GitHub release](https://img.shields.io/github/downloads/antD97/DeathCurse/v1.0/total)](https://github.com/antD97/DeathCurse/releases/tag/v1.0) -->

<!-- bringing someone back to life "comes with a price"/"has a cost"/"takes a lot of energy/takes a lot of work" -->
<!-- you will find "yourself"/"life to be"/"things"/"the world" -->
Gone are the days of resurrecting without consequence. Don't you know bringing someone back to life
comes with a price? It's about time you learn. For every subsequent life you live, you will find
life to be increasingly *unstable*. Enjoy.
<!-- or *increasingly* unstable/*increasingly unstable* -->

Death Curse is a Minecraft datapack that applies a curse to players that respawn. For every respawn,
the curse worsens. Some of the features require particles to be enabled so be sure to turn them on!

Curse difficulty balance is currently a work in progress and everything is subject to change.

<!-- You can find the download [here](https://github.com/antD97/DeathCurse/releases/tag/v1.0). -->

# Player Triggers

`/trigger death_curse_intro`  
Causes the introduction message to reprint for the player in case they've missed it the first time.

`/trigger death_curse_give_book`
Provides the player with a Death Curse explanation book.

# Operator Functions

`/function death_curse:op/clear_all`  
Removes all scoreboard objectives, scheduled functions, and applied tags. The next time the datapack
is reloaded, the datapack will run like it did the first time.

`/function death_curse:op/print_debug`  
Prints common scoreboard values used for debugging.

# Curse Relief
**WIP**  
- Cheap consumable option that reduces curse level by 1 for some time.
- Expensive diamond craft for an item that reduces curse level by 1 as long as it's in your inventory.
  - Cannot be stacked.
  - Craft three of them together to create an item that reduces curse level by 2.
- Expensive netherite craft to permanently reduce level by 1.

# Curse Levels

## Death Curse I
Description: **nausea**  
Effects:
- **every 45s: 4s nausea**
- **every 2m: 5s nausea**

## Death Curse II
Description: nausea, **fatigue**  
Effects:
- **-1 max hp**
- every 45s: 4s nausea
- every 2m:
  - **50%: 5s nausea**
  - **50%: 6s nausea, 5s mining fatigue, & 5s slowness**

## Death Curse III
<!-- "curse leak" name subject to change -->
Description: nausea, fatigue, **curse leak**  
Effects:
- -1 max hp
- every 45s: 4s nausea
- every 2m:
  - 50%: 5s nausea
  - 50%: 6s nausea, 5s mining fatigue, & 5s slowness
<!-- need to check balance-->
- **every 5m: 1 hostile mob within 30 blocks of the player will be cloaked for 20m (max 1 at a time)**

## Death Curse IV
Description: **heavy nausea**, **heavy fatigue**, curse leak  
Effects:
- **-2 max hp**
- **every 30s:** 4s nausea
- **every 1m40s:**
  - 50%: 5s nausea
  - 50%: 6s nausea, **5s weakness**, 5s **mining fatigue II**, & 5s slowness
- every 5m: 1 hostile mob within 30 blocks of the player will be cloaked for 20m (max 1 at a time)

## Death Curse V
Description: heavy nausea, heavy fatigue, curse leak, **poison**  
Effects:
- -2 max hp
- every 30s: 4s nausea
- every 1m40s:
  - 50%: 5s nausea
  - 50%: 6s nausea, 5s weakness, 5s mining fatigue II, & 5s slowness
<!-- need to check balance -->
- **every 3m:**
  - **75%: 2s poison (1/2♥)**
  - **25%: 3s poison (1♥)**
- every 5m: 1 hostile mob within 30 blocks of the player will be cloaked for 20m (max 1 at a time)

## Death Curse VI
Description: heavy nausea, heavy fatigue, **heavy curse leak**, poison  
Effects:
- **-3 max hp**
- every 30s: 4s nausea
- every 1m40s:
  - 50%: 5s nausea
  - 50%: 6s nausea, 5s weakness, 5s mining fatigue II, & 5s slowness
- every 3m:
  - 75%: 2s poison (1/2♥)
  - 25%: 3s poison (1♥)
<!-- need to check balance -->
- every 5m: 1 hostile mob within 30 blocks of the player will be cloaked **and silenced** for 20m **(max 3 at a time)**

## Death Curse VII
Description: heavy nausea, **intense fatigue**, heavy curse leak, poison  
Effects:
- -3 max hp
- every 30s: 4s nausea
- every 1m40s:
  - 50%: 5s nausea
  - **25%:** 6s nausea, 5s weakness, 5s mining fatigue II, & 5s slowness
  - **25%: 7s nausea, 5s weakness, 5s mining fatigue II, 5s slowness II, 3s blindness, & 10s hunger X (~1.5🍗)**
- every 3m:
  - 75%: 2s poison (1/2♥)
  - 25%: 3s poison (1♥)
- every 5m: 1 hostile mob within 30 blocks of the player will be cloaked and silenced for 20m (max 3 at a time)

## Death Curse VIII
Description: heavy nausea, intense fatigue, heavy curse leak, **heavy poison**  
Effects:
- **-4 max hp**
- every 30s: 4s nausea
- every 1m40s:
  - 50%: 5s nausea
  - 25%: 6s nausea, 5s weakness, 5s mining fatigue II, & 5s slowness
  - 25%: 7s nausea, 5s weakness, 5s mining fatigue II, 5s slowness II, 3s blindness, & 10s hunger X (~1.5🍗)
- **every 3m:**
  - **75%: 3s poison (1♥)**
  - **25%: 4s poison (1 1/2♥)**
- every 5m: 1 hostile mob within 30 blocks of the player will be cloaked and silenced for 20m (max 3 at a time)

## Death Curse XI
<!-- "mob aggression" name subject to change -->
Description: heavy nausea, intense fatigue, heavy curse leak, heavy poison, **mob aggression**  
Effects:
- -4 max hp
- every 30s: 4s nausea
- every 1m40s:
  - 50%: 5s nausea
  - 25%: 6s nausea, 5s weakness, 5s mining fatigue II, & 5s slowness
  - 25%: 7s nausea, 5s weakness, 5s mining fatigue II, 5s slowness II, 3s blindness, & 10s hunger X (~1.5🍗)
- every 3m:
  - 75%: 3s poison (1♥)
  - 25%: 4s poison (1 1/2♥)
<!-- need to check balance (applied every 3s with 5s on each buff) -->
<!-- particle effect on player when it happens -->
<!-- or every 1m 20% chance? same thing, but more random -->
- every 5m:
  - 1 hostile mob within 30 blocks of the player will be cloaked and silenced for 20m (max 3 at a time)
  - **for 1m: hostile mobs within 5 blocks of the player are buffed with 5s regeneration, 5s fire resist, & 5s speed**

## Death Curse X+
<!-- "fear" name subject to change -->
Description: heavy nausea, intense fatigue, heavy curse leak, heavy poison, mob aggression, **fear**  
Effects:
- **-5 max hp**
- every 30s: 4s nausea
- every 1m40s:
  - 50%: 5s nausea
  - 25%: 6s nausea, 5s weakness, 5s mining fatigue II, & 5s slowness
  - 25%: 7s nausea, 5s weakness, 5s mining fatigue II, 5s slowness II, 3s blindness, & 10s hunger X (~1.5🍗)
- every 3m:
  - 75%: 3s poison (1♥)
  - 25%: 4s poison (1 1/2♥)
- every 5m:
  - 1 hostile mob within 30 blocks of the player will be cloaked and silenced for 20m (max 3 at a time)
  - for 1m: hostile mobs within 5 blocks of the player are buffed with 5s regeneration, 5s fire resist, & 5s speed
<!-- need to check balance. could also be: at any time, if there are >3? hostile mobs within ~15? blocks cause the fear effect (kinda like that better actually) -->
<!-- old: **any hostile mob within 3 blocks of the player inflicts slowness, blindness, & weakness** -->
- **3+ hostile mobs within 5 blocks: 5s slowness, 5s blindness, & 5s weakness**

# Copyright and License

Copyright © 2022 antD97  
Licensed under the [MIT License](LICENSE)
