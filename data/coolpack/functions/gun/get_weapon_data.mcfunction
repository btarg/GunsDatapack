execute as @a store result score @s guntype run data get entity @s SelectedItem.tag.gun_id

execute as @a store result score @s current_is_auto run data get entity @s SelectedItem.tag.auto
execute as @a store result score @s current_damage run data get entity @s SelectedItem.tag.damage
execute as @a store result score @s current_mag_max_ammo run data get entity @s SelectedItem.tag.mag_size
execute as @a store result score @s current_ammo_type run data get entity @s SelectedItem.tag.ammo_type
execute as @a store result score @s current_ammo_type_offhand run data get entity @s Inventory[{Slot:-106b}].tag.ammo_type
execute as @a store result score @s current_fire_delay run data get entity @s SelectedItem.tag.fire_delay
execute as @a store result score @s current_attempts_needed run data get entity @s SelectedItem.tag.attempts

execute as @a store result score @s current_burst_size run data get entity @s SelectedItem.tag.burst_size
execute as @a store result score @s current_burst_delay run data get entity @s SelectedItem.tag.burst_delay


execute as @a if score @s current_ammo_type matches 1 store result score @s nbt_smg_ammo run data get entity @s SelectedItem.tag.ammo
execute as @a if score @s current_ammo_type matches 2 store result score @s nbt_rifle_ammo run data get entity @s SelectedItem.tag.ammo

# custom damage
execute as @a[scores={current_damage=1..}] run scoreboard players operation DamageOutput Temp = @s current_damage
