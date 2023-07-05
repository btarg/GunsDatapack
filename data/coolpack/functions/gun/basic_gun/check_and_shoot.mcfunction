# if the cooldown has ended
execute as @s at @s if score @s fire_timer matches 0 run execute as @s at @s if score @s current_ammo_type matches 1 run function coolpack:gun/basic_gun/shoot_smg
execute as @s at @s if score @s fire_timer matches 0 run execute as @s at @s if score @s current_ammo_type matches 2 run function coolpack:gun/basic_gun/shoot_rifle
execute as @s at @s if score @s fire_timer matches 0 run scoreboard players set @s shots_attempted 0
execute as @s at @s if score @s fire_timer matches 0 run scoreboard players operation @s fire_timer = @s current_fire_delay