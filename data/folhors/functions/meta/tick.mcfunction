##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##

execute as @e[type=#folhors:mount] at @s run function folhors:meta/as_horse

execute as @e[tag=folhors.trader.ai,tag=folhors.trader.ai.moved] at @s unless entity @e[type=#folhors:mount,distance=..1.5] run function folhors:remove/trader
execute as @e[tag=folhors.trader.ai,tag=folhors.trader.ai.moved] run effect give @s speed infinite 2 true

execute as @a[scores={folhors.horn=1..}] at @s run function folhors:call/mount
execute as @a[scores={folhors.horn=1..}] run scoreboard players reset @s folhors.horn