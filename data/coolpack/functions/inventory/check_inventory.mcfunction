data modify storage inventory inventory set from entity @s Inventory
data modify storage inventory batch.hotbar set value []
data modify storage inventory batch.hotbar_new set value []

forceload add 1 1
setblock 1 -64 1 yellow_shulker_box
scoreboard players set @s slots_checked 0

execute as @s run function coolpack:inventory/recursive_hotbar
execute as @s run function coolpack:inventory/recursive_inventory