function coolpack:gun/base/reloading/get_ammo_values
# check if player should be reloading now
execute as @a[scores={reload_timer=1,current_ammo_type=1}] if score @s smg_ammo_in_inventory matches 1.. run function coolpack:gun/base/try_reload_smg
execute as @a[scores={reload_timer=1,current_ammo_type=2}] if score @s rifle_ammo_in_inventory matches 1.. run function coolpack:gun/base/try_reload_rifle