#$say placing $(packId):$(blockId)
setblock ~ ~ ~ spawner
$execute align xyz run summon item_display ~.5 ~.5 ~.5 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},Tags:["neoquiltBlock","new"],item:{id:"minecraft:dropper",count:1,components:{"minecraft:item_model":'$(packId):$(blockId)',custom_data:{neoquilt:{packId:$(packId),blockId:$(blockId)}}}}}
tag @e[tag=new,tag=neoquiltBlock] remove new