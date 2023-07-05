# take the current mag's leftovers away from the max - this is how many we need to refill to max
scoreboard players operation @s rifle_ammo_needed = @s current_mag_max_ammo
scoreboard players operation @s rifle_ammo_needed -= @s current_rifle_ammo

execute as @s if score @s rifle_ammo_in_inventory matches 1.. run function coolpack:gun/base/reloading/recursive_clear_rifle
