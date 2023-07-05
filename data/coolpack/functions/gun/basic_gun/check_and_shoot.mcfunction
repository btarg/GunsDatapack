execute as @s at @s if score @s current_ammo_type matches 1 run function coolpack:gun/basic_gun/shoot_smg
execute as @s at @s if score @s current_ammo_type matches 2 run function coolpack:gun/basic_gun/shoot_rifle
scoreboard players set @s shots_attempted 0