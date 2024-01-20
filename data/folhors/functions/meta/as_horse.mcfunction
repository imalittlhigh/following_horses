##
 # as_horse.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute if data entity @s Tame unless data entity @s Leash if data entity @s SaddleItem unless data entity @s Passengers run function folhors:meta/as_tamed_horse


execute if data entity @s Tame unless data entity @s Leash unless data entity @s Passengers unless entity @p[distance=..50] run function folhors:call/save_pos
