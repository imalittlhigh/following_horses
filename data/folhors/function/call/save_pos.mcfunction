##
 # save.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

execute on owner store result score @s folhors.x run data get entity @e[type=#folhors:mount,limit=1,sort=nearest] Pos[0]
execute on owner store result score @s folhors.y run data get entity @e[type=#folhors:mount,limit=1,sort=nearest] Pos[1]
execute on owner store result score @s folhors.z run data get entity @e[type=#folhors:mount,limit=1,sort=nearest] Pos[2]
