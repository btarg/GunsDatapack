# store the gun id into the guntype scoreboard for later reference
execute as @a store result score @s guntype run data get entity RonaRage SelectedItem.tag.gun_id
execute as @a store result score @s current_mag_max_ammo run data get entity RonaRage SelectedItem.tag.mag_size
execute as @a store result score @s current_ammo_type run data get entity RonaRage SelectedItem.tag.ammo_type