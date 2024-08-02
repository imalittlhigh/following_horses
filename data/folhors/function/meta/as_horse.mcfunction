##
 # as_horse.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


execute if data entity @s Tame unless data entity @s leash if data entity @s SaddleItem unless predicate folhors:has_passenger run function folhors:meta/as_tamed_horse


execute if data entity @s Tame unless data entity @s leash unless predicate folhors:has_passenger unless entity @p[distance=..50] run function folhors:call/save_pos
