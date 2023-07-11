clear @s minecraft:arrow{ammo_refill:1b, refill_type:"refill_rifle"} 1
scoreboard players remove @s rifle_ammo_needed 1
scoreboard players add @s current_rifle_ammo 1
function coolpack:gun/base/reloading/get_ammo_values
execute if score @s rifle_ammo_in_inventory matches 1.. run execute if score @s rifle_ammo_needed matches 1.. run execute if score @s current_mag_max_ammo > @s current_rifle_ammo run function coolpack:gun/base/reloading/recursive_clear_rifle