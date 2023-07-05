# store gun data
function coolpack:gun/base/offhand_detection/store

# give item back
execute unless data entity @s SelectedItem run function coolpack:gun/base/offhand_detection/replace
execute unless data entity @s SelectedItem run function coolpack:gun/base/offhand_detection/give

# replace ammo
execute as @s at @s if score @s current_ammo_type_offhand matches 1 run function coolpack:gun/base/try_reload_smg
execute as @s at @s if score @s current_ammo_type_offhand matches 2 run function coolpack:gun/base/try_reload_rifle
