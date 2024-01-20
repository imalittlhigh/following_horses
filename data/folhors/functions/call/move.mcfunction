##
 # move.mcfunction
 # 
 #
 # Created by imalittlhigh.
##


$execute store result score %forceloaded folhors.dummy run forceload query $(x) $(z)

$execute if score %forceloaded folhors.dummy matches 0 run forceload add $(x) $(z)

$execute positioned $(x) $(y) $(z) as @e[type=#folhors:mount,limit=1,sort=nearest] if data entity @s Tame unless data entity @s Leash unless data entity @s Passengers run tag @s add folhors.mount.tp

execute as @e[tag=folhors.mount.tp] on owner at @s positioned over world_surface run spreadplayers ~ ~ 5 10 false @e[tag=folhors.mount.tp]

execute as @e[tag=folhors.mount.tp] on owner run scoreboard players reset @s folhors.horn

execute as @e[tag=folhors.mount.tp] run effect give @s fire_resistance 1 255 true
execute as @e[tag=folhors.mount.tp] run effect give @s resistance 1 255 true

$execute unless entity @e[tag=folhors.mount.tp] run tellraw @s ["",{"text":"Cant find your Mount...\nLast seen unleashed at: ","color":"red"},{"text":"[","color":"white"},{"text":"$(x)","color":"gold"},{"text":",","color":"white"},{"text":"$(y)","color":"gold"},{"text":",","color":"white"},{"text":"$(z)","color":"gold"},{"text":"]","color":"white"},{"text":"\nSomeone might be riding it...","color":"red"}]

tag @e[tag=folhors.mount.tp] remove folhors.mount.tp


$execute if score %forceloaded folhors.dummy matches 0 run forceload remove $(x) $(z)

scoreboard players reset %forceloaded folhors.dummy