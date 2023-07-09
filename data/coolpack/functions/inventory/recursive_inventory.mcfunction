execute store result score @s storage_has_gun_0 run data get storage inventory inventory[0].tag.REPLACE_ME
execute store result score @s check_gun_id run data get storage inventory inventory[0].tag.gun_id

execute as @s if score @s storage_has_gun_0 matches 1 run function coolpack:inventory/store_weapon_by_id

# remove the first item so we can do it to the next
execute as @s if score @s storage_has_gun_0 matches 1 run data modify storage inventory inventory[0].tag merge from storage inventory new_weapon
execute as @s if score @s storage_has_gun_0 matches 1 run data modify storage inventory inventory[0].tag.REPLACE_ME set value 0b
data modify storage inventory batch.inventory_new append from storage inventory inventory[0]
data remove storage inventory inventory[0]

scoreboard players add @s slots_checked 1

execute if score @s slots_checked matches ..27 run function coolpack:inventory/recursive_inventory
execute if score @s slots_checked matches 27.. run loot give @s mine 1 -64 1 minecraft:air{drop_contents: 1b}
execute if score @s slots_checked matches 27.. run data modify block 1 -64 1 Items set from storage inventory batch.inventory_new
execute if score @s slots_checked matches 27.. run loot replace entity @s inventory.0 27 mine 1 -64 1 air{drop_contents: 1b}
execute if score @s slots_checked matches 27.. run setblock 1 -64 1 bedrock


execute if score @s slots_checked matches 27.. run scoreboard players set @s slots_checked 0
