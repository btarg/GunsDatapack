# store the amount of ammo in a temp scoreboard
execute as @s store result score @s rifle_ammo_in_inventory run clear @s minecraft:arrow{refill_type:refill_rifle} 0

# get how many bullets we need to fill in the mag
execute as @s store result score @s rifle_ammo_temp run scoreboard players operation @s current_mag_max_ammo -= @s current_smg_ammo
execute as @s store result score @s rifle_ammo_temp run scoreboard players operation @s rifle_ammo_temp_compare = @s rifle_ammo_temp

execute as @s store result score @s rifle_ammo_temp_compare run scoreboard players operation @s smg_ammo_in_inventory -= @s rifle_ammo_temp_compare
execute as @s at @s if score @s rifle_ammo_temp_compare matches 0.. run function coolpack:gun/base/begin_reload_rifle
