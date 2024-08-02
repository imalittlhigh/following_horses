##
 # mount.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
data modify storage folhors:data pos set value {x:0,y:0,z:0}
execute store result storage folhors:data pos.x int 1 run scoreboard players get @s folhors.x
execute store result storage folhors:data pos.y int 1 run scoreboard players get @s folhors.y
execute store result storage folhors:data pos.z int 1 run scoreboard players get @s folhors.z



function folhors:call/move with storage folhors:data pos

schedule function folhors:call/move_sc 5t