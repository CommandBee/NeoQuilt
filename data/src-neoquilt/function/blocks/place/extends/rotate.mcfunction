scoreboard objectives add neoquilt.tempRot dummy
scoreboard objectives add neoquilt.tempPit dummy

execute store result score @s neoquilt.tempRot run data get entity @p Rotation[0]
execute store result score @s neoquilt.tempPit run data get entity @p Rotation[1]

#north
execute if score @s neoquilt.tempPit matches -41..41 if score @s neoquilt.tempRot matches -180..-135 run execute as @e[tag=new,tag=neoquiltBlock] at @s run tp @s ~ ~ ~ 0 0
execute if score @s neoquilt.tempPit matches -41..41 if score @s neoquilt.tempRot matches 135..180 run execute as @e[tag=new,tag=neoquiltBlock] at @s run tp @s ~ ~ ~ 0 0
#south
execute if score @s neoquilt.tempPit matches -41..41 if score @s neoquilt.tempRot matches -45..45 run execute as @e[tag=new,tag=neoquiltBlock] at @s run tp @s ~ ~ ~ 180 0
#east
execute if score @s neoquilt.tempPit matches -41..41 if score @s neoquilt.tempRot matches -135..-45 run execute as @e[tag=new,tag=neoquiltBlock] at @s run tp @s ~ ~ ~ 90 0
#west
execute if score @s neoquilt.tempPit matches -41..41 if score @s neoquilt.tempRot matches 45..135 run execute as @e[tag=new,tag=neoquiltBlock] at @s run tp @s ~ ~ ~ -90 0
#up
execute if score @s neoquilt.tempPit matches 41..90 run execute as @e[tag=new,tag=neoquiltBlock] at @s run tp @s ~ ~ ~ 0 -90
#down
execute if score @s neoquilt.tempPit matches -90..-41 run execute as @e[tag=new,tag=neoquiltBlock] at @s run tp @s ~ ~ ~ 0 90

scoreboard objectives remove neoquilt.tempRot
scoreboard objectives remove neoquilt.tempPit