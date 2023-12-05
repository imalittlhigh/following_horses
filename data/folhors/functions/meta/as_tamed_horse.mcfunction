##
 # as_tamed_horse.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute unless entity @p[distance=8..] as @e[limit=1,sort=nearest,distance=..2,tag=folhors.trader.ai] run function folhors:remove/trader
execute if entity @p[distance=8..] run function folhors:move/to_player
