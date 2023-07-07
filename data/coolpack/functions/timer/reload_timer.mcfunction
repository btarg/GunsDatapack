function coolpack:gun/base/reloading/get_ammo_values

# check if we are holding the same item, then if we have enough ammo
execute as @a[scores={reload_timer=1}] run execute store success score %bool global run data modify storage gun reloading set from entity @p SelectedItem
execute as @a[scores={reload_timer=1,current_ammo_type=1}] run execute if score %bool global matches 0 run execute if score @s smg_ammo_in_inventory matches 1.. run function coolpack:gun/base/try_reload_smg
execute as @a[scores={reload_timer=1,current_ammo_type=2}] run execute if score %bool global matches 0 run execute if score @s rifle_ammo_in_inventory matches 1.. run function coolpack:gun/base/try_reload_rifle
