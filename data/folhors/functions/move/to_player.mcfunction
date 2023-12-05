##
 # to_player.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
team join folhors.nocollision @s
tag @p add folhors.player.pos
tag @s add folhors.mount.delay
execute unless entity @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] positioned ~ ~500 ~ run summon wandering_trader ~ ~ ~ {Invulnerable:1b,CanPickUpLoot:0b,Tags:["folhors.trader.ai"],NoGravity:1b,NoAI:1b,Silent:1b}
effect give @e[tag=folhors.trader.ai] invisibility infinite 0 true
execute as @e[tag=folhors.trader.ai] run data merge entity @s {HandItems:[{id:"minecraft:air",Count:1}]}
execute positioned ~ ~500 ~ run team join folhors.nocollision @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai]
execute positioned ~ ~500 ~ run data modify entity @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] WanderTarget.X set from entity @p[tag=folhors.player.pos] Pos[0]
execute positioned ~ ~500 ~ run data modify entity @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] WanderTarget.Y set from entity @p[tag=folhors.player.pos] Pos[1]
execute positioned ~ ~500 ~ run data modify entity @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] WanderTarget.Z set from entity @p[tag=folhors.player.pos] Pos[2]
execute run data modify entity @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] WanderTarget.X set from entity @p[tag=folhors.player.pos] Pos[0]
execute run data modify entity @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] WanderTarget.Y set from entity @p[tag=folhors.player.pos] Pos[1]
execute run data modify entity @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] WanderTarget.Z set from entity @p[tag=folhors.player.pos] Pos[2]
tag @a remove folhors.player.pos

schedule function folhors:move/delay 1t replace
