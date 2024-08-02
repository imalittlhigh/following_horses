##
 # as_tamed_horse.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


execute at @s on owner unless entity @s[distance=8..] as @e[limit=1,sort=nearest,distance=..2,tag=folhors.trader.ai] run function folhors:remove/trader

#execute unless entity @p[distance=8..] as @e[limit=1,sort=nearest,distance=..2,tag=folhors.trader.ai] run function folhors:remove/trader


execute at @s on owner if entity @s[distance=8..50] run function folhors:move/to_player

#execute if entity @p[distance=8..] run function folhors:move/to_player

