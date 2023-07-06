# store gun data
function coolpack:gun/base/reloading/offhand_detection/store

# load the STORED version of the gun's mag size into scoreboard - fixes bug
execute as @a store result score @s current_mag_max_ammo run data get storage gun offhand.tag.mag_size

# give item back
execute unless data entity @s SelectedItem run function coolpack:gun/base/reloading/offhand_detection/replace
execute unless data entity @s SelectedItem run function coolpack:gun/base/reloading/offhand_detection/give

# initialise
scoreboard players set @s rifle_ammo_needed 1
scoreboard players set @s smg_ammo_needed 1

# set the reload cooldown timer
execute as @a store result score @s reload_timer run data get storage gun offhand.tag.reload_time