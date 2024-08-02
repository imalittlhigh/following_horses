##
 # move.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


$execute store result score %forceloaded folhors.dummy run forceload query $(x) $(z)

$execute if score %forceloaded folhors.dummy matches 0 run forceload add $(x) $(z)


