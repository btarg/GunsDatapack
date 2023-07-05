clear @s minecraft:arrow{ammo_refill:1b, refill_type:"refill_smg"} 1
scoreboard players remove @s smg_ammo_in_inventory 1
scoreboard players remove @s smg_ammo_needed 1
scoreboard players add @s current_smg_ammo 1
execute if score @s smg_ammo_in_inventory matches 1.. run execute if score @s smg_ammo_needed matches 1.. run execute if score @s current_mag_max_ammo > @s current_smg_ammo run function coolpack:gun/base/reloading/recursive_clear_smg