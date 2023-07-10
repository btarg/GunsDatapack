# store gun data
function coolpack:gun/base/reloading/offhand_detection/store

scoreboard players operation @s current_smg_ammo = @s nbt_smg_ammo
scoreboard players operation @s current_rifle_ammo = @s nbt_rifle_ammo

# load the STORED version of the gun's mag size into scoreboard - fixes bug
execute as @a store result score @s current_mag_max_ammo run data get storage gun offhand.tag.mag_size

# give item back
execute unless data entity @s SelectedItem run function coolpack:gun/base/reloading/offhand_detection/replace
execute unless data entity @s SelectedItem run function coolpack:gun/base/reloading/offhand_detection/give

# set the reload cooldown timer
execute as @a[scores={shots_fired=0}] store result score @s reload_timer run data get storage gun offhand.tag.reload_time
# store the gun that we started reloading
data modify storage gun reloading set from entity @s SelectedItem