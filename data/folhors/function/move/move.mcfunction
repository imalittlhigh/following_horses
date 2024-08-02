##
 # move.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
tag @s remove folhors.mount.delay
execute positioned ~ ~500 ~ run tp @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] @s
execute as @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] run data remove entity @s NoAI
execute as @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] run data remove entity @s NoGravity

tag @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai] add folhors.trader.ai.moved


tp @s @e[limit=1,sort=nearest,distance=..1,tag=folhors.trader.ai]