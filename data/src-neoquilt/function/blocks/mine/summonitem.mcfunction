$execute as @a[tag=NeoquiltDEV] run say removed $(packId):$(blockId)
$loot spawn ~ ~ ~ loot $(packId):$(blockId)
kill @s
