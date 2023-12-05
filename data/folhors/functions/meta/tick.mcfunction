##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##

execute as @e[type=#folhors:mount] at @s run function folhors:meta/as_horse

execute as @e[tag=folhors.trader.ai,tag=folhors.trader.ai.moved] at @s unless entity @e[type=#folhors:mount,distance=..2] run function folhors:remove/trader

schedule function folhors:meta/tick 1t replace