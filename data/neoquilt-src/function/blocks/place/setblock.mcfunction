$execute as @a[tag=NeoquiltDEV] run say placing $(packId):$(blockId)
setblock ~ ~ ~ spawner
$execute align xyz run summon item_display ~.5 ~.5 ~.5 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},Tags:["neoquiltBlock","new"],item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":'$(packId):$(blockId)',custom_data:{neoquilt:{packId:$(packId),blockId:$(blockId)}}}}}

#-- ROTATE BLOCKS --#
# read teh extends and test for the rotate extend
# if true run rotate commands
$execute store result score $isROT neoquilt.blockExtends run data get storage neoquilt:$(packId) $(blockId).extends.rotate
execute if score $isROT neoquilt.blockExtends matches 1 run function neoquilt-src:blocks/place/extends/rotate

tag @e[tag=new,tag=neoquiltBlock] remove new